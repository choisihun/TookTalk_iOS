//
//  HomeView.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/18/23.
//

import SwiftUI

struct HomeView: View {
    @State var setAge: Int = 15
    @State var isWaitingViewActive: Bool = false
    @State private var isCustomBackButtonHidden = true
    @StateObject private var state = HomeState()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0 ) {
                Group {
                    HStack {
                        Text("관심사")
                            .frame(alignment: .leading)
                            .foregroundStyle(.black)
                            .font(.custom(pretendardSemiBold, size: 19))
                            .padding(.bottom, 10)
                            .padding(.leading, 30)
                        Text("1가지는 필수로 골라주세요!")
                            .foregroundStyle(.gray)
                            .padding(.leading, 5)
                            .font(.custom(pretendardMedium, size: 13))
                        Spacer()
                    }
                    //                    .padding(.top, 50)
                }
                
                SelectInterestView()
                
                Group {
                    Text("-만나고 싶은 상대의 나이-")
                        .foregroundStyle(.gray)
                        .frame(width: 200, height: 50, alignment: .center)
                        .font(.custom(pretendardMedium, size: 15))
                    
                    AgePickerView(values: Array(14...19), selected: $setAge)
                        .foregroundStyle(.black)
                        .frame(width: 100, height: 50, alignment: .center)
                        .padding(.top, -45)
                }
                .padding(.bottom, 20)
                
                Group {
                    Text("-만나고 싶은 상대의 성별-")
                        .foregroundStyle(.gray)
                        .font(.custom(pretendardMedium, size: 15))
                        .frame(width: 200, height: 50, alignment: .center)
                        .padding(.top, -30)
                    SexSwitchView()
                        .frame(width: 275, height: 120)
                        .padding(.horizontal, 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.gray, lineWidth: 0.3)
                                .padding(.horizontal, 65)
                                .padding(.vertical, -10)
                            
                        )
                }
                .padding(.bottom, 30)
                Button {
                    state.routeToWaitingView()
                } label: {
                    Text("\(Image(systemName: "arrow.forward"))")
                        .font(.title)
                        .foregroundStyle(.black)
                }
                .frame(width: 120, height: 120, alignment: .center)
                .background(Color("myOrange"))
                .cornerRadius(30)
            }
        }
        .toolbar(.visible, for: .navigationBar)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(trailing: Button(action: {
            
        }) {
            HStack {
                Image(systemName: "gearshape")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                    .font(.system(size: 20))

            }
        })
    }
}

#Preview {
    HomeView()
}
