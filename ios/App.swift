//
//  iosApp.swift
//  ios
//
//  Created by 黄祥云 on 2025/2/28.
//

import Foundation
import React
import SwiftUI
import UIKit

@main
struct IOSApp: App {
    @Environment(\.scenePhase) private var scenePhase: ScenePhase

    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    @State var props: [AnyHashable: Any] = ["abc": "a"]

    @State var name: String = "RNApp"

    var body: some Scene {
        WindowGroup {
            if name == "RNApp" {
                RNDelegateView(module: name, props: props)
            } else {
                Text("home react").padding()
            }

            HStack {
                Button {
                    name = "Swift"
                } label: {
                    Text("加载Swift")
                }

                Button {
                    name = "RNApp"
                } label: {
                    Text("加载RN")
                }
            }

//            RNDelegateView(module: "RNApp").frame(height: .infinity)
        }.onChange(of: scenePhase) { phase in
            print("scenePhase:\(phase)")
        }
    }
}

final class AppDelegate: UIResponder, UIApplicationDelegate {
    // Just need to add this
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        print("Application did finish launching with options")
        return true
    }
}
