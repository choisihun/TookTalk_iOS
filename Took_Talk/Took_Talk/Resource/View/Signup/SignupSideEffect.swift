//
//  SignupSideEffect.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import LinkNavigator

public protocol SignupSideEffect {
    var routeToBack: () -> Void { get }
}

public struct SignupSideEffectLive {
    let navigator: LinkNavigatorType
    
    public init(navigator: LinkNavigatorType) {
        self.navigator = navigator
    }
}
extension SignupSideEffectLive: SignupSideEffect {
    public var routeToBack: () -> Void {
        {
            navigator.back(isAnimated: true)
        }
    }
}
