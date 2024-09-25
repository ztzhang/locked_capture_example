//
//  control_buttonBundle.swift
//  control-button
//
//  Created by Zhoutong Zhang on 8/22/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import WidgetKit
import SwiftUI

@main
struct control_buttonBundle: WidgetBundle {
    init() {
        print("ELEPHANT: print control_buttonBundle init")
        NSLog("ELEPHANT: nslog control_buttonBundle init")
    }
    
    var body: some Widget {
        control_buttonControl()
    }
}
