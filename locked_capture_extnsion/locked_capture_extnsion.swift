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
    
    init() {
        print("ELEPHANT: print locked_capture_extnsion init")
        NSLog("ELEPHANT: nslog locked_capture_extnsion init")
    }
    
    var body: some LockedCameraCaptureExtensionScene {
        LockedCameraCaptureUIScene { session in
            locked_capture_extnsionViewFinder(session: session)
        }
    }
}

