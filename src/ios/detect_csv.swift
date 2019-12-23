

import UIKit
//enum DocumentTypes: String {
//    case pdf
//    case image
//    case all
//    case csv
//    var uti: String {
//        switch self {
//            case .pdf: return "com.adobe.pdf"
//            case .image: return "public.image"
//            case .all: return "public.data"
//            case .csv: return "public.comma-separated-values-text"
//        }
//    }
//}
@objc(detect_csv)
class detect_csv : CDVPlugin {
    var fileUrl: URL?
    var document: Document?
    var commandCallback: String?
  @objc(getFileUrl:) // Declare your function name.
  func getFileUrl(command: CDVInvokedUrlCommand) { // write the function code.
    fileUrl = UserDefaults.standard.url(forKey: "ios_url")
    print("Ios_url from storage = ", fileUrl)
    self.commandCallback = command.callbackId
        var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR, messageAs: "The Plugin Failed");
        pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: fileUrl?.absoluteString)
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
//    document?.open(completionHandler: {(success) in
//         if success {
//            print("document file url = ", self.document?.fileType)
//            print("success = ", success)
//         } else {
//            print("fail ")
//        }
//    })
//        DispatchQueue.global(qos: .background).async {
//            var arguments: [DocumentTypes] = []
//
//            command.arguments.forEach {
//                if let key =  $0 as? String, let type = DocumentTypes(rawValue: key) {
//                    arguments.append(type)
//                } else if let array = $0 as? [String] {
//                    arguments = array.compactMap { DocumentTypes(rawValue: $0) }
//                }
//            }
//
//
//              self.commandCallback = command.callbackId
//              self.callDocPicker()
    }
//    var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR, messageAs: "The Plugin Failed");
//
//    pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: fileUrl?.absoluteString)
//    self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
  }
//    func callDocPicker() {
//        print("Call Doc Picker")
//        let docDelegate = UIDocumentBrowserViewController()
//        docDelegate.delegate = self
//        DispatchQueue.main.async {
//            self.viewController.present(docDelegate, animated: true, completion: nil)
//        }
//    }
//    func documentWasSelected(document: URL) {
//        print("documentWasSelected = ", document)
//        self.sendResult(.init(status: CDVCommandStatus_OK, messageAs: document.absoluteString))
//        self.commandCallback = nil
//    }
//    func sendError(_ message: String) {
//        sendResult(.init(status: CDVCommandStatus_ERROR, messageAs: message))
//    }


//}
//private extension detect_csv {
//    func sendResult(_ result: CDVPluginResult) {
//
//        self.commandDelegate.send(
//            result,
//            callbackId: commandCallback
//        )
//    }
//}
//
//
//
//extension detect_csv: UIDocumentBrowserViewControllerDelegate {
//
//    // MARK: UIDocumentBrowserViewControllerDelegate
//
//    func documentBrowser(_ controller: UIDocumentBrowserViewController, didRequestDocumentCreationWithHandler importHandler: @escaping (URL?, UIDocumentBrowserViewController.ImportMode) -> Void) {
//        let newDocumentURL: URL? = nil
//
//        // Set the URL for the new document here. Optionally, you can present a template chooser before calling the importHandler.
//        // Make sure the importHandler is always called, even if the user cancels the creation request.
//        if newDocumentURL != nil {
//            importHandler(newDocumentURL, .move)
//        } else {
//            importHandler(nil, .none)
//        }
//    }
//
//
//    func documentBrowser(_ controller: UIDocumentBrowserViewController, didPickDocumentURLs documentURLs: [URL]) {
//        guard let sourceURL = documentURLs.first else { return }
//
//        print("Source URl = ", sourceURL)
//        documentWasSelected(document: sourceURL)
//    }
//
//    func documentBrowser(_ controller: UIDocumentBrowserViewController, didImportDocumentAt sourceURL: URL, toDestinationURL destinationURL: URL) {
//        // Present the Document View Controller for the new newly created document
//        print("destination URL = ", destinationURL)
//        documentWasSelected(document: destinationURL)
////        presentDocument(at: destinationURL)
//    }
//
//    func documentBrowser(_ controller: UIDocumentBrowserViewController, failedToImportDocumentAt documentURL: URL, error: Error?) {
//        // Make sure to handle the failed import appropriately, e.g., by presenting an error message to the user.
//    }
//
//
//
//} // end class DocumentBrowserViewController
