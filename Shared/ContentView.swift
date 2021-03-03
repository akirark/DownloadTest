//
//  ContentView.swift
//  Shared
//
//  Created by Akira Hayashi on 2021/03/03.
//

import SwiftUI

struct ContentView: View {
    @StateObject var downloadTest = DownloadTest()
    @State var urlText = ""
    
    var body: some View {
        VStack {
            TextField("URL", text: $urlText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.URL)
            Button(action: {
                if let url = URL(string: urlText) {
                    self.downloadTest.download(url: url)
                }
            }, label: {
                Text("Download")
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
