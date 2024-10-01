import AppIntents
import Foundation

public struct MyIntentFrameworkPackage: AppIntentsPackage { }


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

// This does:
public struct MyIntentFrameworkStruct: CameraCaptureIntent {
  public typealias AppContext = MyAppContextFramework
  public static let title: LocalizedStringResource = "test capture intent"
  public static let description: IntentDescription? = IntentDescription("Capture Image")

  public init() {
    NSLog("ELEPHANT: MyIntentFramework init")
  }

  @MainActor
  public func perform() async throws -> some IntentResult {
    do {
      NSLog("ELEPHANT MyIntentFramework perform() 100")
      if let context = try await MyIntentFrameworkStruct.appContext {
        NSLog("ELEPHANT MyIntentFramework perform() 200")
        return .result()
      }

    } catch {

    }
    return .result()
  }
}

public struct MyAppContextFramework: Codable, Sendable {
  let foo: Bool

  public init() {
    NSLog("ELEPHANT: MyAppContextFramework init")
    self.foo = true
    NSLog("ELEPHANT: MyAppContextFramework init 2")
  }
}
