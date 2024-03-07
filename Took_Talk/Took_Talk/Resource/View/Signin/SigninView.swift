//
//  SigninView.swift
//  Took_Talk
//
//  Created by 최시훈 on 2023/09/14.
//

import SwiftUI

struct SigninView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    
    @StateObject private var viewModel = SigninViewModel()
    
    
    var body: some View {
        NavigationView {
            VStack {
                Image("TookTalkMainLogo")
                    .padding(.top, 46)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                Text("또래와의 소통이 더욱 쉬워지는\nTook Talk으로 지금 시작해보세요!")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .font(.custom(pretendardRegular, size: 12))
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                
                VStack {
                    HStack {
                        Text("아이디")
                            .font(.custom(pretendardSemiBold, size: 13))
                        
                        Spacer()
                    }
                    .padding(.top, 30)
                    .padding(.leading, 5)
                    .padding(.bottom, 0)
                    
                    CustomSignTextField(placeholder: "아이디를 입력해주세요", textfieldValue: viewModel.id)
                    
                    HStack {
                        Text("비밀번호")
                            .font(.custom(pretendardSemiBold, size: 13))
                        
                        Spacer()
                    }
                    .padding(.top, 30)
                    .padding(.leading, 5)
                    .padding(.bottom, 0)
                    
                    CustomSignSecureField(placeholder: "비밀번호를 입력해주세요", textfieldValue: viewModel.password)
                        
                    HStack {
                        Spacer()
                        Button(action: {
                            
                        }) {
                            Text("비밀번호 찾기")
                                .font(.custom(pretendardThin, size: 13))
                                .foregroundColor(Color.black)
                                .fontWeight(.semibold)
                        }
                        
                        Rectangle()
                            .frame(width: 1, height: 20)
                            .foregroundColor(Color("myGray"))
                        Button {
                            viewModel.signup()
                        } label: {
                            Text("회원가입")
                                .font(.custom(pretendardThin, size: 13))
                                .foregroundColor(Color.black)
                                .fontWeight(.semibold)
                        }
                    }
                    .padding(.trailing, 15)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.bottom, 12)
                    
                    Spacer()
                    
                    Group {
                            NavigationLink(
                                destination: HomeView(),
                                isActive: $viewModel.isWaitingViewActive
                                
                            ) {
                                EmptyView()
                                
                            }
                            .hidden()
                            Button(action: {
                                viewModel.login()
                            }) {
                                Text("로그인")
                                    .font(.custom(pretendardRegular, size: 20))
                                    .frame(width: 320, height: 50)
                            }
                        
                    }
                    .background(Color("myOrange"))
                    .foregroundColor(Color.white)
                    .cornerRadius(15)
                    .padding(.bottom, 87)
                }
                .padding(.horizontal, 45)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                
                Spacer()
            }
        }
    }
}

#Preview {
    SigninView()
}
