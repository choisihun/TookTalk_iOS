//
//  SignupTextFieldsView.swift
//  Took_Talk
//
//  Created by 최시훈 on 2023/09/21.
//

import SwiftUI

struct SignupTextFieldsView: View {
    
    @State var email: String = ""
    @State var id: String = ""
    @State var password: String = ""
    @State var passwordCheck: String = ""
//    @State var isSlowViewVisible: Bool = false
    var textFields: [(String, Binding<String>)] {
        [
            ("이메일을 입력해주세요", $email),
            ("아이디을 입력해주세요", $id),
            ("비밀번호을 입력해주세요", $password),
            ("비밀번호를 확인 해주세요", $passwordCheck)
        ]
    }
    var body: some View {
        
        VStack(spacing: 0) {
            Image("mainLogo")
                .padding(.top, 150)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            ForEach(textFields, id: \.0) { text, binding in
                TextField("\(text)", text: binding)
                    .frame(width: 290, height: 50)
                    .padding(.top, 30)
                    .textFieldStyle(.automatic)
                
                Rectangle()
                    .frame(width: 290, height: 1)
                    .foregroundColor(Color("myGray"))
                    .padding(.top, 0)
            }        
        Button(action: {
            
        }) {
            Text("회원가입")
                .font(.custom(pretendardMedium, size: 30))
                .frame(width: 290, height: 50)
            
        }
        .background(Color("myOrange"))
        .foregroundColor(Color.white)
        .cornerRadius(15)
        .padding(.top, 33)
    }
    }
}
