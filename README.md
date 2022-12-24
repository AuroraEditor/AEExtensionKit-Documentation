# AEExtensionKit functions documentation generator

<a href='https://twitter.com/intent/tweet?text=Try%20this%20new%20open-source%20code%20editor,%20Aurora%20Editor&url=https://auroraeditor.com&via=Aurora_Editor&hashtags=AuroraEditor,editor,AEIDE,developers,Aurora,OSS' target='_blank'><img src='https://img.shields.io/twitter/url/http/shields.io.svg?style=social'></a>  <a href='https://chat.whatsapp.com/IOoaSbj7Km4BH3k5wlJPx0' target='_blank'>
    <img alt="Discord" src="https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg" height='28px' width='28px'>
  </a>

### `endpoint.swift`
contains all the function definitions for [AEExtensionKit](https://github.com/AuroraEditor/AEExtensionKit).

### `generate.swift`
generates:
- [docs/json.json](docs/json.json)
<br />a JSON file containing all the function definitions
- [docs/json.min.json](docs/json.min.json)
<br />a minified JSON file containing all the function definitions
- [docs/wiki.md](docs/wiki.md)
<br />a markdown file containing all the function definitions for use in the [WIKI](https://github.com/AuroraEditor/AuroraEditor/wiki/Extension-development)

# How to use
1. Clone the repository
2. Edit [AEExtensionKit.swift](AEExtensionKit.swift) to add new functions to the documentation
3. Run `swift generate.swift`
