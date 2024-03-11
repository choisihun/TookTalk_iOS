//
//  Took_TalkApp.swift
//  Took_Talk
//
//  Created by 최시훈 on 2023/09/14.
//

import SwiftUI

@main
struct Eagle_PopApp: App {
    
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var delegate
    
    
    var body: some Scene {
        WindowGroup {
            SignupView()
        }
    }
}
