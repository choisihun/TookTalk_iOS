//
//  HomeSideEffect.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import LinkNavigator

public protocol HomeSideEffect {
    
    var sheetToWaiting: () -> Void { get }
}

public struct HomeSideEffectLive {
    let navigator: LinkNavigatorType
    
    public init(navigator: LinkNavigatorType) {
        self.navigator = navigator
    }
}
extension HomeSideEffectLive: HomeSideEffect {
    
    public var sheetToWaiting: () -> Void {
        {
            navigator.next(paths: ["waiting"], items: [:], isAnimated: true)
        }
    }
}
