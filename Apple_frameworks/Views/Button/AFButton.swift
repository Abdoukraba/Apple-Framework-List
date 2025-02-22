//
//  AFButton.swift
//  Apple_frameworks
//
//  Created by Abderraouf Kraba on 22/04/2024.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white )
            .cornerRadius(15)
            .shadow(radius: 7, y: 7)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "learn More")
    }
}
