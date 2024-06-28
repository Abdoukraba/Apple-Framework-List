//
//  FrameworkTitleView.swift
//  Apple_frameworks
//
//  Created by Abderraouf Kraba on 24/04/2024.
//

import SwiftUI


struct frameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        HStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
            
        }
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        frameworkTitleView(framework: MockData.sampleFramework)
    }
}
