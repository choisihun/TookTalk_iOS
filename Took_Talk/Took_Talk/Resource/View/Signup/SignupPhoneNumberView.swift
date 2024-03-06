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
        NavigationView {
                Image("TookTalt_Signup_Logo")
                .frame(width: 270, height: 155)

                    .padding(.leading, 42)
                    .padding(.top, 132)
            VStack {
                VStack {
                    TextField("비밀번호를 입력해주세요", text: $state.password)
                        .padding(.bottom, 100)
                        .frame(maxHeight: .infinity,alignment: .top)
                        .padding(.horizontal, 0)
                }
                .padding(.vertical)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding(.bottom, 50)
            
        }
//        .navigationBarItems(leading: Button {
//            state.back()
//        }
//        label: {
//            Text("\(Image(systemName: "chevron.backward"))뒤로가기")
//        })
    }
}

#Preview {
    SignupPhoneNumberView()
}
