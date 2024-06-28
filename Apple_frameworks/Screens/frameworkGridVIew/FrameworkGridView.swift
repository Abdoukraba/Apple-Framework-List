//
//  FrameworkGridView.swift
//  Apple_frameworks
//
//  Created by Abderraouf Kraba on 21/04/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: frameDetailView(framework: framework, isShowingDetaiView: $viewModel.isShowingDetailView)){
                        frameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .accentColor(Color(.label))
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

