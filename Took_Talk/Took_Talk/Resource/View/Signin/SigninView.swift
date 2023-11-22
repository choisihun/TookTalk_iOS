//
//  SigninView.swift
//  Took_Talk
//
//  Created by 최시훈 on 2023/09/14.
//

import SwiftUI

struct SigninView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    
    @StateObject private var state = SigninState()
    
    
    var body: some View {
        NavigationView {
            VStack {
                Image("mainLogo")
                    .padding(.top, 50)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                
                VStack {
                    TextField("아이디를 입력해주세요", text: $state.id)
                        .frame(width: 290, height: 50)
                    
                    Rectangle()
                        .frame(width: 290, height: 0.7)
                        .foregroundColor(Color("myGray"))
                        .padding(.top, 0)
                    
                    SecureField("비밀번호를 입력해주세요", text: $state.password)
                        .frame(width: 290, height: 50)
                        .padding(.top)
                    
                    Rectangle()
                        .frame(width: 290, height: 0.7)
                        
                    HStack {
                        Button(action: {
                            
                        }) {
                            Text("비밀번호 찾기")
                                .font(.custom(pretendardLight, size: 15))
                                .foregroundColor(Color.black)
                                .fontWeight(.semibold)
                        }
                        
                        Rectangle()
                            .frame(width: 1, height: 20)
                            .foregroundColor(Color("myGray"))
                        Button {
                            state.signup()
                        } label: {
                            Text("회원가입")
                                .font(.custom(pretendardLight, size: 15))
                                .frame(width: 55, height: 18)
                                .foregroundColor(Color.black)
                                .fontWeight(.semibold)
                        }
                        
                    }
                    .padding(.trailing, 50)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    Group {
                            NavigationLink(
                                destination: HomeView(),
                                isActive: $state.isWaitingViewActive
                                
                            ) {
                                EmptyView()
                                
                            }
                            .hidden()
                            Button(action: {
                                state.login()
                            }) {
                                Text("로그인")
                                    .font(.custom(pretendardMedium, size: 30))
                                    .frame(width: 290, height: 50)
                            }
                        
                    }
                    .background(Color("myOrange"))
                    .foregroundColor(Color.white)
                    .cornerRadius(15)
                    .padding(.top, 33)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                Image("backgroundLogo")
                
            }
        }
    }
}


struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}
