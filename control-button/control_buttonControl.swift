//
//  control_buttonControl.swift
//  control-button
//
//  Created by Zhoutong Zhang on 8/22/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import AppIntents
import SwiftUI
import WidgetKit

struct control_buttonControl: ControlWidget {
    static let kind: String = "com.example.apple-samplecode.AVCam-zt.control-button"

    var body: some ControlWidgetConfiguration {
        StaticControlConfiguration(kind: Self.kind) {
            ControlWidgetButton(
                action: TestCaptureIntent()
            ) { Label("Test", systemImage: "camera")
            }
        }
        .displayName("Timer")
        .description("A an example control that runs a timer.")
    }
}


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

