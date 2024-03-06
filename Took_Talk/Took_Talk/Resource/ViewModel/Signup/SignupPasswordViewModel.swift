//
//  SignupPasswordViewModel.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/14/23.
//

import SwiftUI
import Alamofire
import FirebaseAuth

class SignupPasswordViewModel: ObservableObject{
    @Published var password = ""
    @Published private var passwordCheck = ""
    func back() {
        //        sideEffect.routeToBack()
    }
    func signup() {
        //        if pwText == pwCk {
        //            Auth.auth().createUser(withEmail: email, password: pwText
        //            ) { (user, error) in
        //                if user !=  nil{
        ////                    self.sideEffect.routeToBack()// 뒤로가는 코드
        //                }
        //                else{
        ////                    self.sideEffect.showAlert("회원가입 실패🚫", error!.localizedDescription) // 얼넛 띄우는 코드
        //                }
        //            }
        //        }
        //        else {
        ////            self.sideEffect.showAlert("회원가입 실패🚫", "비밀번호가 일치하지 않습니다.") // 얼넛 띄우는 코드
        //        }
            }
    }
    
