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
    
    init() {
        print("ELEPHANT: print control_buttonControl init")
        NSLog("ELEPHANT: nslog control_buttonControl init")
    }

    var body: some ControlWidgetConfiguration {
        StaticControlConfiguration(kind: Self.kind) {
            ControlWidgetButton(
                action: MyIntent()
            ) {
                Label("Test", systemImage: "camera")
            }
        }
        .displayName("ButtonControl2")
        .description("A an example control that runs a timer.")
    }
}
