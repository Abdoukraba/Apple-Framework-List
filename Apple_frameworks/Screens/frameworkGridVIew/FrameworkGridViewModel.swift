//
//  FrameworkGridViewModel.swift
//  Apple_frameworks
//
//  Created by Abderraouf Kraba on 22/04/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?{
        didSet{ isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
