//
//  XButton.swift
//  Apple_frameworks
//
//  Created by Abderraouf Kraba on 24/04/2024.
//

import SwiftUI

struct XButton: View {
    @Binding var isShowingModel: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingModel = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }.padding()
    }
}

struct XButton_Previews: PreviewProvider {
    static var previews: some View {
        XButton(isShowingModel: .constant(false))
    }
}
