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

extension control_buttonControl {
    struct Value {
        var isRunning: Bool
        var name: String
    }

    struct Provider: AppIntentControlValueProvider {
        func previewValue(configuration: TimerConfiguration) -> Value {
            control_buttonControl.Value(isRunning: false, name: configuration.timerName)
        }

        func currentValue(configuration: TimerConfiguration) async throws -> Value {
            let isRunning = true // Check if the timer is running
            return control_buttonControl.Value(isRunning: isRunning, name: configuration.timerName)
        }
    }
}

struct TimerConfiguration: ControlConfigurationIntent {
    static let title: LocalizedStringResource = "Timer Name Configuration"

    @Parameter(title: "Timer Name", default: "Timer")
    var timerName: String
}

struct StartTimerIntent: SetValueIntent {
    static let title: LocalizedStringResource = "Start a timer"

    @Parameter(title: "Timer Name")
    var name: String

    @Parameter(title: "Timer is running")
    var value: Bool

    init() {}

    init(_ name: String) {
        self.name = name
    }

    func perform() async throws -> some IntentResult {
        // Start the timer…
        return .result()
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

