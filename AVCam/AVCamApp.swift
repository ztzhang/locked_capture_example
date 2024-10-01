/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A sample app that shows how to a use the AVFoundation capture APIs to perform media capture.
*/

import os
import SwiftUI
import AppIntents
import MyIntentFramework

struct MyAppAppIntentsPackage: AppIntentsPackage {
    static var includedPackages: [any AppIntentsPackage.Type] {
        [MyIntentFramework.MyIntentFrameworkPackage.self]
   }
}

@main
/// The AVCam app's main entry point.
struct AVCamApp: App {

    // Simulator doesn't support the AVFoundation capture APIs. Use the preview camera when running in Simulator.
    @State private var camera = CameraModel()
    
    var body: some Scene {
        WindowGroup {
            CameraView(camera: camera)
                .statusBarHidden(true)
                .task {
                    // Start the capture pipeline.
                    NSLog("ELEPHANT about to call await camera.start()")
                    await camera.start()
                    NSLog("ELEPHANT done calling await camera.start()")
                }
        }
    }
}

/// A global logger for the app.
let logger = Logger()


