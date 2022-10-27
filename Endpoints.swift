//
//  Endpoints.swift
//  EndpointsExtension
//
//  Created by Wesley de Groot on 6 October 2022.
//

import Foundation
import AEExtensionKit

public class EndpointsExtension: ExtensionInterface {
    var api: ExtensionAPI

    init(api: ExtensionAPI) {
        self.api = api
        print("Hello from HelloWorldExtension: \(api)!")
    }

    public func register() -> ExtensionManifest {
        return .init(
            name: "EndpointsExtension",
            displayName: "EndpointsExtension",
            version: "1.0",
            minAEVersion: "1.0"
        )
    }

    public func respond(action: String, parameters: [String: Any]) -> Bool {
        // Please do NOT change the format of this function.
        print("respond(action: String, parameters: [String: Any])", action, parameters)

        return true
    }
}

@objc(EndpointsBuilder)
public class EndpointsBuilder: ExtensionBuilder {
    public override func build(withAPI api: ExtensionAPI) -> ExtensionInterface {
        return EndpointsExtension(api: api)
    }
}
