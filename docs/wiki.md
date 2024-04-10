### didOpen
> Did open file<br/>
> 

**Parameters**
<table>
<tr><th>Parameter</th><th>Type</th><th>Description</th></tr>
<tr><td>file</td><td>String</td><td>The file that was opened.</td></tr>
<tr><td>contents</td><td>Data</td><td>The file contents.</td></tr>
</table>

**Example Implementation:**
```swift
public func respond(action: String, parameters: [String: Any]) -> Bool {
    if action == "didOpen" {
        if let file = parameters["file"] as? String,
           let contents = parameters["contents"] as? String {
            // Do something
        }
    }

    return true
}
```

---

### didOpen
> Did open file in workspace<br/>
> 

**Parameters**
<table>
<tr><th>Parameter</th><th>Type</th><th>Description</th></tr>
<tr><td>workspace</td><td>String</td><td>The current workspace.</td></tr>
<tr><td>file</td><td>String</td><td>The file that was opened.</td></tr>
<tr><td>contents</td><td>Data</td><td>The file contents.</td></tr>
</table>

**Example Implementation:**
```swift
public func respond(action: String, parameters: [String: Any]) -> Bool {
    if action == "didOpen" {
        if let workspace = parameters["workspace"] as? String,
           let file = parameters["file"] as? String,
           let contents = parameters["contents"] as? String {
            // Do something
        }
    }

    return true
}
```

---

### didSave
> Did save file<br/>
> 

**Parameters**
<table>
<tr><th>Parameter</th><th>Type</th><th>Description</th></tr>
<tr><td>file</td><td>String</td><td>The file that was opened.</td></tr>
</table>

**Example Implementation:**
```swift
public func respond(action: String, parameters: [String: Any]) -> Bool {
    if action == "didSave" {
        if let file = parameters["file"] as? String {
            // Do something
        }
    }

    return true
}
```

---

### didMoveCaret
> Did move caret to position<br/>
> 

**Parameters**
<table>
<tr><th>Parameter</th><th>Type</th><th>Description</th></tr>
<tr><td>row</td><td>Int</td><td>The row in the file.</td></tr>
<tr><td>column</td><td>Int</td><td>The column in the file.</td></tr>
</table>

**Example Implementation:**
```swift
public func respond(action: String, parameters: [String: Any]) -> Bool {
    if action == "didMoveCaret" {
        if let row = parameters["row"] as? Int,
           let column = parameters["column"] as? Int {
            // Do something
        }
    }

    return true
}
```

---

### didActivateTab
> Did activate tab for file<br/>
> 

**Parameters**
<table>
<tr><th>Parameter</th><th>Type</th><th>Description</th></tr>
<tr><td>file</td><td>String</td><td>The file that was activated.</td></tr>
</table>

**Example Implementation:**
```swift
public func respond(action: String, parameters: [String: Any]) -> Bool {
    if action == "didActivateTab" {
        if let file = parameters["file"] as? String {
            // Do something
        }
    }

    return true
}
```

---

### didDeactivateTab
> Did close tab for file<br/>
> 

**Parameters**
<table>
<tr><th>Parameter</th><th>Type</th><th>Description</th></tr>
<tr><td>file</td><td>String</td><td>The file that was deactivated.</td></tr>
</table>

**Example Implementation:**
```swift
public func respond(action: String, parameters: [String: Any]) -> Bool {
    if action == "didDeactivateTab" {
        if let file = parameters["file"] as? String {
            // Do something
        }
    }

    return true
}
```

---

### didToggleNavigatorPane
> Did toggle navigator pane<br/>
> 

**Parameters**
<table>
<tr><th>Parameter</th><th>Type</th><th>Description</th></tr>
<tr><td>visible</td><td>Bool</td><td>Is the navigator pane visible?</td></tr>
</table>

**Example Implementation:**
```swift
public func respond(action: String, parameters: [String: Any]) -> Bool {
    if action == "didToggleNavigatorPane" {
        if let visible = parameters["visible"] as? Bool {
            // Do something
        }
    }

    return true
}
```

---

### didToggleInspectorPane
> Did toggle inspector pane<br/>
> 

**Parameters**
<table>
<tr><th>Parameter</th><th>Type</th><th>Description</th></tr>
<tr><td>visible</td><td>Bool</td><td>Is the inspector pane visible?</td></tr>
</table>

**Example Implementation:**
```swift
public func respond(action: String, parameters: [String: Any]) -> Bool {
    if action == "didToggleInspectorPane" {
        if let visible = parameters["visible"] as? Bool {
            // Do something
        }
    }

    return true
}
```

---

### registerCallback
> Register AuroraAPI<br/>
> 

**Parameters**
<table>
<tr><th>Parameter</th><th>Type</th><th>Description</th></tr>
<tr><td>callback</td><td>AuroraAPI -> Bool</td><td>AuroraAPI Endpoint</td></tr>
</table>

**Example Implementation:**
```swift
public func respond(action: String, parameters: [String: Any]) -> Bool {
    if action == "registerCallback" {
        if let callback = parameters["callback"] as? AuroraAPI -> Bool {
            // Do something
        }
    }

    return true
}
```

---

### noop
> No Operation (noop)<br/>
> <br/>
> This is a no operation function<br/>
> It is used, and as the name suggests, to do nothing<br/>
> 

**Example Implementation:**
```swift
public func respond(action: String, parameters: [String: Any]) -> Bool {
    if action == "noop" {
        // Do something
    }

    return true
}
```

---

