/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A sample app that shows how to a use the AVFoundation capture APIs to perform media capture.
*/

import os
import SwiftUI
import AppIntents

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
                    await camera.start()
                }
        }
    }
}

/// A global logger for the app.
let logger = Logger()


struct TestCaptureIntent: CameraCaptureIntent{
    typealias AppContext = MyAppContext
    static let title: LocalizedStringResource = "test capture intent"
    static let description: IntentDescription? = IntentDescription("Capture Image")
    
    @MainActor
    func perform() async throws -> some IntentResult {
        do {
            print("Trying to perform intent")
            if let context = try await TestCaptureIntent.appContext {
                return .result()
            }
            
        } catch {
            
        }
        return .result()
    }
}

struct MyAppContext: Codable{
    let foo: Bool
}

