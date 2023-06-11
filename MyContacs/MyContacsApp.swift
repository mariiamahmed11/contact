//
//  MyContacsApp.swift
//  MyContacs
//
//  Created by user on 07/06/2023.
//

import SwiftUI
import FirebaseFirestore
import FirebaseCore

//only for devices not mac , enavle what happen in background mood in temerory stop etc..
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    
      FirebaseApp.configure()

      let db = Firestore.firestore()

    return true
  }
}

@main
struct MyContacsApp: App {
    // register app delegate for Firebase setup
      @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    
    init() {
    FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
