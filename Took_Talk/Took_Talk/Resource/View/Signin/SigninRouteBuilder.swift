//
//  SigninRouteBuilder.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import LinkNavigator
import SwiftUI

struct SigninRouteBuilder: RouteBuilder {
    
    var matchPath: String { "signin" }
    
    var build: (LinkNavigatorType, [String: String], DependencyType) -> MatchingViewController? {
      { _, items, _ in
        WrappingController(matchPath: matchPath) {
            SigninView()
        }
      }
    }
}
