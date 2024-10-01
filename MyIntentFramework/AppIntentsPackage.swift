//
//  AppIntentsPackage.swift
//  AVCam
//
//  Created by Jiawen Chen on 10/1/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import AppIntents
import Foundation

public struct MyAppIntentsPackage: AppIntentsPackage {}

// ELEPHANT
// https://developer.apple.com/documentation/appintents/appintentspackage
//
// look at:
// https://forums.swift.org/t/ios-appintents-unable-to-determine-value-type-for-type-when-appenum-belongs-to-swift-package/69915
//
// WWDC reference something about a dictionary
//
// SO post confirming it doesn't work from a SPM pacakge
// https://stackoverflow.com/questions/76900046/how-to-setup-an-ios-17-interactive-widget-using-appintents-from-an-spm-package
//
// Making this a dynamic framework works.
// Making this a static framework does not.
