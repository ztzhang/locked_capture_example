//
//  AppIntents.swift
//  AVCam
//
//  Created by Jiawen Chen on 10/1/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import AppIntents
import MyIntentFramework

struct MyAppAppIntentsPackage: AppIntentsPackage {
    static var includedPackages: [any AppIntentsPackage.Type] {
        [MyIntentFramework.MyAppIntentsPackage.self]
   }
}
