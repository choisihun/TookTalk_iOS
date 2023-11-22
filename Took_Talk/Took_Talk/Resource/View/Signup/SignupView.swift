//
//  SignupView.swift
//  Took_Talk
//
//  Created by 최시훈 on 2023/09/21.
//

import SwiftUI

struct SignupView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @ObservedObject var state = SignupState()
    var body: some View {
        NavigationView {
            ZStack {
                Image("backgroundLogo")
                    .padding(.horizontal, 0)
                    .padding(.bottom, 40)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                VStack {
                    SignupTextFieldsView()
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
        .navigationBarItems(leading: Button {
            state.back()
        }
        label: {
            Text("\(Image(systemName: "chevron.backward"))뒤로가기")
        })
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
