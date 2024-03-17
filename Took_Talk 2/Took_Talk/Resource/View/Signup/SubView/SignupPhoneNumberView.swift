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
        VStack(alignment: .leading) {
            HStack {
                Text("전화번호")
                    .font(.custom(pretendardRegular, size: 15))
                
                Spacer()
            }
            .padding(.bottom, 0)

            HStack {
                
                TextField("전화번호를 입력해주세요", text: $viewModel.phoneNumber)
                Button {
                    
                } label: {
                    Text("인증 요청")
                        .font(.custom(pretendardRegular, size: 15))
                }
                .buttonStyle(CustomStrokedButtonStyle(foregroundColor: .black, borderColor: Color("myOrange"), radius: 10))
            }
            .padding(.top, 0)
            .frame(width: 290, height: 28)

            Rectangle()
                .foregroundColor(Color("myGray"))
                .frame(width: 210, height: 0.7, alignment: .topLeading)
                .padding(.top, 0)
                .padding(.bottom, 30)


                
            
            
            CustomSignTextField(text: "인증번호", placeholder: "인증번호를 입력해주세요", textfieldValue: viewModel.certificationNumber)
            
//            Spacer()
        }
        .padding(.top, 0)
    }
}

#Preview {
    SignupPhoneNumberView()
}

