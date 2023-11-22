//
//  SignupState.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/14/23.
//

import Combine
import ComposableArchitecture
import LinkNavigator

class SignupState: ObservableObject{
    @Dependency(\.sideEffect.signup) var sideEffect

    func back() {
        sideEffect.routeToBack()
    }
}
