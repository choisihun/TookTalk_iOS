//
//  SignupRouteBuilder.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import LinkNavigator
import SwiftUI

struct SignupRouteBuilder: RouteBuilder {
    
    var matchPath: String { "signup" }
    
    var build: (LinkNavigatorType, [String: String], DependencyType) -> MatchingViewController? {
      { _, items, _ in
        WrappingController(matchPath: matchPath) {
            SignupView()
        }
      }
    }
}
