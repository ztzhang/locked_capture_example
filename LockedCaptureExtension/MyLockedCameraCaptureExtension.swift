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
struct MyLockedCameraCaptureExtension: LockedCameraCaptureExtension {
    
    init() {
        print("ELEPHANT: print MyLockedCameraCaptureExtension init")
        NSLog("ELEPHANT: nslog MyLockedCameraCaptureExtension init")
    }
    
    var body: some LockedCameraCaptureExtensionScene {
        LockedCameraCaptureUIScene { session in
            MyLockedCaptureViewfinder(session: session)
        }
    }
}

