//
//  LandmarksApp.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Gaurav Kumar on 11/26/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
