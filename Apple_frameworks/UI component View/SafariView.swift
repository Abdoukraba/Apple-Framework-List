//
//  SafariView.swift
//  Apple_frameworks
//
//  Created by Abderraouf Kraba on 24/04/2024.
//

import SwiftUI
import SafariServices

struct safariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext <safariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<safariView>) {}
}
