//
//  SigninSideEffect.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import LinkNavigator

// MARK: - SigninSideEffect

public protocol SigninSideEffect {
    var routeToHomeView: () -> Void { get }
    var routeToSignupView: () -> Void { get }
}


// MARK: - SigninSideEffectLive

public struct SigninSideEffectLive {
    let navigator: LinkNavigatorType
    
    public init(navigator: LinkNavigatorType) {
        self.navigator = navigator
    }
}
extension SigninSideEffectLive: SigninSideEffect {
    public var routeToHomeView: () -> Void {
        {
            navigator.rootNext(paths: ["home"], items: [:], isAnimated: false)
            print("home")
        }
    }
    public var routeToSignupView: () -> Void {
        {
            navigator.sheet(paths: ["signup"], items: [:], isAnimated: true)
            print("signup")
        }
    }
}
