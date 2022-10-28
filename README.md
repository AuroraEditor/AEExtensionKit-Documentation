# AEExtensionKit functions documentation generator

### `endpoint.swift`
contains all the function definitions for [AEExtensionKit](https://github.com/AuroraEditor/AEExtensionKit).

### `generate.swift`
generates:
- [generated/json.json](generated/json.json)
<br />a JSON file containing all the function definitions
- [generated/json.min.json](generated/json.min.json)
<br />a minified JSON file containing all the function definitions
- [generated/wiki.md](generated/wiki.md)
<br />a markdown file containing all the function definitions for use in the [WIKI](https://github.com/AuroraEditor/AuroraEditor/wiki/Extension-development)

# How to use
1. Clone the repository
2. Edit [AEExtensionKit.swift](AEExtensionKit.swift) to add new functions to the documentation
3. Run `swift generate.swift`