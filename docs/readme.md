### didOpen
> Did open file<br/>
> 

**Parameters**
|Parameter|Type|Description|
|---|---|---|
|file|String|The file that was opened.|
|contents|Data|The file contents (data).|

**Example Implementation:**
```swift
public func respond(action: String, parameters: [String: Any]) -> Bool {
    if action == "didOpen" {
        if let file = parameters["file"] as? String,
           let contents = parameters["contents"] as? Data {
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
|Parameter|Type|Description|
|---|---|---|
|workspace|String|The current workspace.|
|file|String|The file that was opened.|
|contents|Data|The file contents (data).|

**Example Implementation:**
```swift
public func respond(action: String, parameters: [String: Any]) -> Bool {
    if action == "didOpen" {
        if let workspace = parameters["workspace"] as? String,
           let file = parameters["file"] as? String,
           let contents = parameters["contents"] as? Data {
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
|Parameter|Type|Description|
|---|---|---|
|file|String|The file that was opened.|

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
|Parameter|Type|Description|
|---|---|---|
|row|Int|The row in the file.|
|column|Int|The column in the file.|

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
|Parameter|Type|Description|
|---|---|---|
|file|String|The file that was activated.|

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
|Parameter|Type|Description|
|---|---|---|
|file|String|The file that was deactivated.|

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
|Parameter|Type|Description|
|---|---|---|
|visible|Bool|Is the navigator pane visible?|

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
|Parameter|Type|Description|
|---|---|---|
|visible|Bool|Is the inspector pane visible?|

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

