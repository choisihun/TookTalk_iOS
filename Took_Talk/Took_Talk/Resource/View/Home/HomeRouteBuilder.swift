//
//  HomeRouteBuilder.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/22/23.
//

import LinkNavigator

struct HomeRouteBuilder: RouteBuilder {
    
    var matchPath: String { "home" }
    
    var build: (LinkNavigatorType, [String: String], DependencyType) -> MatchingViewController? {
        { _, items, _ in
            WrappingController(matchPath: matchPath) {
                HomeView()
            }
        }
    }
}
