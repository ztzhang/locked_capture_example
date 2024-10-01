//
//  control_buttonBundle.swift
//  control-button
//
//  Created by Zhoutong Zhang on 8/22/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import AppIntents
import WidgetKit
import SwiftUI

@main
struct ButtonControlWidgetBundle: WidgetBundle {
    init() {
        NSLog("ELEPHANT: ButtonControlWidgetBundle init")
    }
    
    var body: some Widget {
        ButtonControlWidget()
    }
}
