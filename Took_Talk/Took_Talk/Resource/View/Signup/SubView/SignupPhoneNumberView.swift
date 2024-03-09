//
//  SignupPhoneNumberView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/5/24.
//

import SwiftUI

struct SignupPhoneNumberView: View {
    
    @StateObject var viewModel = SignupPhoneNumberViewModel()
    var body: some View {
        VStack {
            CustomSignTextField(placeholder: "전화번호를 입력해주세요", textfieldValue: viewModel.phoneNumber)
            
            CustomSignTextField(placeholder: "전화번호를 입력해주세요", textfieldValue: viewModel.certificationNumber)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.bottom, 50)
        
    }
}

#Preview {
    SignupPhoneNumberView()
}
