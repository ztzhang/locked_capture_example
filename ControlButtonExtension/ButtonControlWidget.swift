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

struct ButtonControlWidget: ControlWidget {
    static let kind: String = "com.example.apple-samplecode.AVCam-zt.control-button"
    
    init() {
        print("ELEPHANT: print ButtonControlWidget init")
        NSLog("ELEPHANT: nslog ButtonControlWidget init")
    }

    var body: some ControlWidgetConfiguration {
        StaticControlConfiguration(kind: Self.kind) {
            ControlWidgetButton(
                action: MyIntent()
            ) {
                Label("Label 3", systemImage: "camera")
            }
        }
        .displayName("Display Name 3")
        .description("A button control that starts a camera.")
    }
}
