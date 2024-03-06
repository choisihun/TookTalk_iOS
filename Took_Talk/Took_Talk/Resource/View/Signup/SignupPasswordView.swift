//
//  SignupPasswordView.swift
//  Took_Talk
//
//  Created by 최시훈 on 2023/09/21.
//

import SwiftUI

struct SignupPasswordView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @ObservedObject private var viewModel = SignupPasswordViewModel()
    var body: some View {
        NavigationView {
            VStack {
                Image("TookTalk_Signup_Logo")
                    .padding(.top, 73)
                    .frame(maxHeight: .infinity, alignment: .top)
                CustomSignSecureField(placeholder: "비밀번호를 입력해주세요", textfieldValue: $viewModel.$pwText)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
        }
        .navigationBarItems(leading: Button {
            viewModel.back()
        }
        label: {
            Text("\(Image(systemName: "chevron.backward"))뒤로가기")
        })
    }
}

struct SignupPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        SignupPasswordView()
    }
}
