//
//  locked_capture_extnsionViewFinder.swift
//  locked_capture_extnsion
//
//  Created by Zhoutong Zhang on 8/22/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI
import UIKit
import UniformTypeIdentifiers
import LockedCameraCapture

struct MyLockedCaptureViewfinder: UIViewControllerRepresentable {
    let session: LockedCameraCaptureSession
    var sourceType: UIImagePickerController.SourceType = .camera

    init(session: LockedCameraCaptureSession) {
        self.session = session
        print("ELEPHANT MyLockedCaptureViewfinder init")
        NSLog("ELEPHANT MyLockedCaptureViewfinder init")
    }
 
    func makeUIViewController(context: Self.Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = sourceType
        imagePicker.mediaTypes = [UTType.image.identifier, UTType.movie.identifier]
        imagePicker.cameraDevice = .rear
 
        return imagePicker
    }
 
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Self.Context) {
    }
}
