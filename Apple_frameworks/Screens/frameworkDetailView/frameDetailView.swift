//
//  frameDetailView.swift
//  Apple_frameworks
//
//  Created by Abderraouf Kraba on 21/04/2024.
//

import SwiftUI

struct frameDetailView: View {
    
    let framework: Framework
    @Binding var isShowingDetaiView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            frameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                isShowingSafariView = true
            }label: {
                AFButton(title: "Learn More")
            }
        }.sheet(isPresented: $isShowingSafariView, content: {
            safariView(url: URL(string: framework.urlString) ?? URL(string: "Not found ://")!) 
        })
    }
}

struct frameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        frameDetailView(framework: MockData.sampleFramework, isShowingDetaiView: .constant(false))
    }
}
