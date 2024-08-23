//
//  locked_capture_extnsion.swift
//  locked_capture_extnsion
//
//  Created by Zhoutong Zhang on 8/22/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import Foundation
import LockedCameraCapture
import SwiftUI
import AppIntents

@main
struct locked_capture_extnsion: LockedCameraCaptureExtension {
    var body: some LockedCameraCaptureExtensionScene {
        LockedCameraCaptureUIScene { session in
            locked_capture_extnsionViewFinder(session: session)
        }
    }
}


struct TestCaptureIntent: CameraCaptureIntent{
    typealias AppContext = MyAppContext
    static let title: LocalizedStringResource = "test capture intent"
    static let description: IntentDescription? = IntentDescription("Capture Image")
    
    @MainActor
    func perform() async throws -> some IntentResult {
        do {
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

