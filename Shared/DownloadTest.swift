//
//  DownloadTest.swift
//  DownloadTest
//
//  Created by Akira Hayashi on 2021/03/03.
//

import Foundation
import os

class DownloadTest : ObservableObject {
    var session: URLSession
    
    init() {
        session = URLSession(configuration: .default)
    }
    
    func download(url: URL) {
        session.downloadTask(with: url) { (fileURL, response, error) in
            os_log("Downloaded: \(fileURL != nil ? fileURL!.description : "nil")")
            os_log("response: \(response != nil ? response!.description : "nil")")
            os_log("error: \(error != nil ? error!.localizedDescription : "nil")")
        }.resume()
    }
}
