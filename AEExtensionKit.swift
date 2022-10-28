// This file defines all the endpoints for the Extension API
// It is used to generate the API documentation
// Please note:
// - Lines prefixed with // will be ignored
// - Lines prefixed with /// will be used to generate the documentation
// - func functionname(parameters: String) will be used to generate the documentation
// After a function add an empty line to start a new function
// functions without documentation explanation will be ignored
//
// Example:
// /// This is a function
// /// - Parameters:
// ///   - parameter1: This is a parameter
// ///   - parameter2: This is another parameter
// func functionname(parameter1: String, parameter2: String)
// 
//

/// Did open file
/// - Parameters:
///   - file: The file that was opened.
///   - contents: The file contents (data).
func didOpen(file: String, contents: Data)

/// Did open file in workspace
/// - Parameters:
///   - workspace: The current workspace.
///   - file: The file that was opened.
///   - contents: The file contents (data).
func didOpen(workspace: String, file: String, contents: Data)

/// Did save file
/// - Parameters:
///   - file: The file that was opened.
func didSave(file: String)

/// Did move caret to position
/// - Parameters:
///   - row: The row in the file.
///  - column: The column in the file.
func didMoveCaret(row: Int, column: Int)

/// Did activate tab for file
/// - Parameters:
///   - file: The file that was activated.
func didActivateTab(file: String)

/// Did close tab for file
/// - Parameters:
///   - file: The file that was deactivated.
func didDeactivateTab(file: String)

/// Did toggle navigator pane
/// - Parameters:
///   - visible: Is the navigator pane visible?
func didToggleNavigatorPane(visible: Bool)

/// Did toggle inspector pane
/// - Parameters:
///   - visible: Is the inspector pane visible?
func didToggleInspectorPane(visible: Bool)

/// No Operation (noop)
/// 
/// This is a no operation function
/// It is used, and as the name suggests, to do nothing
func noop()

// toAE
func showInformation(message: String)
func showWarning(message: String)
func showError(message: String)
func openSettings()

// editor.run(command: "didOpen", arguments: ["workspace": workspace, "file": file, "contents": contents])
