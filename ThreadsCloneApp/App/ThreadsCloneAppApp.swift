//
//  ThreadsCloneAppApp.swift
//  ThreadsCloneApp
//
//  Created by Hakan Gül on 12/11/2023.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct ThreadsCloneAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
//            ContentView()
//            CreateThreadView()
            ThreadsTabView()
        }
    }
}
