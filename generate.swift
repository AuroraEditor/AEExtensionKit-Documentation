#!/usr/bin/env swift

import Foundation

let debug = false

struct Parameter: Codable {
    var name: String
    var type: String
    var description: String
}

struct Function: Codable {
    var name: String
    var description: String
    var parameters: [Parameter]
}

extension String {
    /// Convert the string to the functionname.
    var getFunctionName: String {
        return self
            .components(separatedBy: "func ")[1]
            .components(separatedBy: "(")[0]
    }
}

extension Encodable {
    /// Converting object to postable JSON
    func toJSON(pretty: Bool = false) -> String {
        let encoder = JSONEncoder()
        if pretty {
            encoder.outputFormatting = .prettyPrinted
        }
        if let data = try? encoder.encode(self) {
            return String(decoding: data, as: UTF8.self)
        }

        return ""
    }
}

func handleParameter(line: String) -> Parameter {
    if debug {
        print("Parameter line \"\(line)\".")
    }

    let cleanedLine = line.replacingOccurrences(of: "///   - ", with: "")

    return Parameter(
        name: cleanedLine
            .components(separatedBy: ":")[0]
            .trimmingCharacters(in: .whitespaces),
        type: "",
        description: cleanedLine
            .components(separatedBy: ":")[1]
            .trimmingCharacters(in: .whitespaces)
    )
}

func generate() -> [Function] {
    do {
        let file = URL(fileURLWithPath: "endpoint.swift")
        let contents = try String(contentsOf: file)
        let lines = contents.components(separatedBy: "\n")

        var description = ""
        var parameters: [Parameter] = []
        var functions: [Function] = []

        for line in lines {
            if line.hasPrefix("/// ") && !line.hasPrefix("/// - Parameters:") {
                if line.hasPrefix("///   - ") {
                    parameters.append(handleParameter(line: line))
                } else {
                    if debug {
                        print("Description line \"\(line)\".")
                    }
                    // Function description
                    description += line.replacingOccurrences(of: "/// ", with: "") + "\n"
                }
            } else if line.hasPrefix("func") {
                if parameters.isEmpty && description.isEmpty {
                    // Invalid function, we do not add this to the array.
                    continue
                }

                // Add parameter 'types'
                functions.append(
                    Function(
                        name: line.getFunctionName,
                        description: description,
                        parameters: fillParameterTypes(parameters: parameters, with: line)
                    )
                )

                // Reset values for next one.
                description = ""
                parameters = []
            } else if line == "" ||
                        line.hasPrefix("/// - Parameters:") ||
                        line.hasPrefix("//") {
                if debug {
                    print("Ignoring line \"\(line)\".")
                }
                continue
            } else {
                if debug {
                    print("Unknown line \"\(line)\".")
                }
                continue
            }
        }

        return functions
    } catch {
        fatalError("Error: \(error)")
    }
}

func fillParameterTypes(parameters: [Parameter], with: String) -> [Parameter] {
    // This method does not support callbacks/blocks, but since this
    // is not supported in the AEExtensionKit, we can ignore it.
    // Since this code doesn't look clear.
    guard case let funcBeginSplit = with.split(separator: "("),
          !funcBeginSplit.isEmpty,
          case let funcBegin = funcBeginSplit[1],
          case let funcEndSplit = funcBegin.split(separator: ")"),
          !funcEndSplit.isEmpty,
          case let cleanerString = funcEndSplit[0] else {
        // function has no parameters, or did fail to parse.
        return parameters
    }

    var mutableParameters = parameters
    for param in cleanerString.split(separator: ",") {
        let name = param.split(separator: ":")[0].trimmingCharacters(in: .whitespaces)
        let type = param.split(separator: ":")[1].trimmingCharacters(in: .whitespaces)

        for (index, var parameter) in parameters.enumerated()
        where parameter.name == name {
            parameter.type = type
            mutableParameters[index] = parameter
        }
    }

    return mutableParameters
}

func generateWikiFor(function: Function) -> String {
    var first = true
    var wiki = ""
    wiki += "### \(function.name)\n"
    wiki += "> \(function.description.replacingOccurrences(of: "\n", with: "<br/>\n> "))\n"
    wiki += "\n"
    wiki += "**Parameters**\n"

    if !function.parameters.isEmpty {
        wiki += "| Parameter | Type | Description |\n"
        wiki += "| --- | --- | --- |\n"

        for parameter in function.parameters {
            wiki += "| \(parameter.name) | \(parameter.type) | \(parameter.description) |\n"
        }
    }

    wiki += "\n"
    wiki += "**Example Implementation:**\n"
    wiki += "```swift\n"
    wiki += "public func respond(action: String, parameters: [String: Any]) -> Bool {\n"
    wiki += "    if action == \"\(function.name)\" {\n"
    if !function.parameters.isEmpty {
        wiki += "        if"
        for parameter in function.parameters {
            wiki += first ? "" : ",\n"
            wiki += first ? " " : "           "
            wiki += "let \(parameter.name) = parameters[\"\(parameter.name)\"] as? \(parameter.type)"

            first = false
        }
        wiki += " {\n"
    }
    wiki += (!function.parameters.isEmpty ? "            " : "        ") + "// Do something\n"
    if !function.parameters.isEmpty {
        wiki += "        }\n"
    }
    wiki += "    }\n"
    wiki += "\n"
    wiki += "    return true\n"
    wiki += "}\n"
    wiki += "```\n"
    wiki += "\n"

    return wiki
}

func generateWiki(functions: [Function]) -> String {
    var wiki = ""
    for function in functions {
        wiki += generateWikiFor(function: function)
    }
    return wiki
}

let functions = generate()

functions
   .toJSON(pretty: false)
   .data(using: .utf8)?
   .write(to: .init(fileURLWithPath: "endpoints.min.json"), options: .atomic)

functions
   .toJSON(pretty: true)
   .data(using: .utf8)?
   .write(to: .init(fileURLWithPath: "endpoints.json"), options: .atomic)

try? generateWiki(functions: functions)
        .data(using: .utf8)?
        .write(to: URL(fileURLWithPath: "endpoints.wiki.md"), options: .atomic)
