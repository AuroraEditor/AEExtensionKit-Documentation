## Aurora Editor Sunset Announcement

After much thought and consideration, we have decided to officially sunset Aurora Editor.  
Aurora started as a community-driven effort to build a fast, lightweight, and truly native IDE for macOS developers. It grew out of passion, collaboration, and a shared vision for an open alternative. Along the way, contributors poured in their time, energy, and creativity to shape what Aurora became.  
But as with all projects, there comes a time to reflect on sustainability and focus. With limited resources, shifting priorities, and new tools emerging in the developer ecosystem, we believe it’s the right moment to bring Aurora Editor’s journey to a graceful close.  
The code will remain available on GitHub for anyone who wishes to explore, fork, or continue the vision in new directions. We deeply appreciate everyone who wrote code, opened issues, shared feedback, or simply used Aurora in their daily work-you kept the project alive and meaningful.  
Thank you for being part of Aurora’s story!  
Even though Aurora Editor is setting, the light it inspired will live on in the community.  
  
— The Aurora Editor Team (<a href='https://github.com/0xWDG'>@0xWDG</a> & <a href='https://github.com/nanashili'>@nanashili</a>).

----

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
