//
//  SignupInterestView.swift
//  Took_Talk
//
//  Created by 최시훈 on 3/5/24.
//

import SwiftUI
import WrappingHStack

struct SignupInterestView: View {
    @StateObject var viewModel = SignupInterestViewModel()
    
    var body: some View {
        VStack {
            
            HStack {
                
                Text("관심사")
                
                    .font(.custom(pretendardRegular, size: 15))
                
                Spacer()
                
            }
            
            .padding(.bottom, 0)
            
            VStack(alignment: .leading) {
                
                ScrollView {
                    
                    WrappingHStack(viewModel.interestsArry) { idx in
                        
                        Button {
                      
//                            if viewModel.selectedInterest.contains(chooseMajor(idx)) {
//                                
//                                selectedAllergy = selectedAllergy.filter(){$0 != chooseMajor(idx)}
//                                for i in chooseString(chooseMajor(idx)) {
//                                    relatedAllergy = relatedAllergy.filter(){$0 != i}
//                                }
//                                
//                            } else {
//                                
//                                selectedAllergy.append(chooseMajor(idx))
//                                relatedAllergy += chooseString(chooseMajor(idx))
//                                
//                            }             
                        } label: {
                                
                                Text("\(idx)")
                                .font(.custom(pretendardLight, size: 15))
                                    .foregroundStyle(.black)
                                    .padding(.horizontal, 3)
                            }
                        
                            .frame(height: 45)
                            .padding(.horizontal, 3)
                            .buttonStyle(CustomSelectInterestButton(idx: idx))
                        
                    }
                }
            }
        }
        
    }
    
}

#Preview {
    SignupInterestView()
}
