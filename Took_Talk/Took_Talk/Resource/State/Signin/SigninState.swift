//
//  SigninState.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/14/23.
//

import Foundation
import Alamofire

class SigninState: ObservableObject {
    @Published var id: String = ""
    @Published var password: String = ""
    @Published var isPresented: Bool = false
    @Published var isSuccess: Bool = false
    
    
    func login() {
//        let parameters = [
//            "id": id,
//            "password": password
//        ]
//        AF.request("\(api)/account/login.do",
//                        method: .post,
//                        parameters: parameters)
//        .validate()
//        .responseDecodable(of: SigninData.self){ response in
//            switch response.result {
//            case .success(let value):
//                TokenManager.save(.grantType, value.data.grantType)
//                TokenManager.save(.refreshToken, value.data.refreshToken)
//                TokenManager.save(.accessToken, value.data.accessToken)
                self.isPresented = true
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//            
//        }
    }
}
