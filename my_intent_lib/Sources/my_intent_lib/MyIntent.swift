import AppIntents
import Foundation

//public struct MyIntentFrameworkPackage: AppIntentsPackage { }

public struct MyIntent: CameraCaptureIntent {
  public typealias AppContext = MyAppContext
  public static let title: LocalizedStringResource = "test capture intent"
  public static let description: IntentDescription? = IntentDescription("Capture Image")

  public init() {
    NSLog("ELEPHANT: MyIntent init")
  }

  @MainActor
  public func perform() async throws -> some IntentResult {
    do {
      NSLog("ELEPHANT MyIntent perform() 100")
      if let context = try await MyIntent.appContext {
        NSLog("ELEPHANT MyIntent perform() 200")
        return .result()
      }

    } catch {

    }
    return .result()
  }
}

public struct MyAppContext: Codable, Sendable {
  let foo: Bool

  public init() {
    NSLog("ELEPHANT: MyAppContext init")
    self.foo = true
    NSLog("ELEPHANT: MyAppContext init 2")
  }
}
