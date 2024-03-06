//
//  CustomSignSecureField.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/6/24.
//

import SwiftUI

struct CustomSignSecureField: View {
     @State var placeholder: String
     @State var textfieldValue: String
    var body: some View {
        VStack {
            SecureField(placeholder, text: $textfieldValue)
                .frame(width: 290, height: 35)
            
            Rectangle()
                .frame(width: 290, height: 0.7)
                .foregroundColor(Color("myGray"))
                .padding(.top, 0)
        }
    }
}
