import AppIntents
import Foundation

public struct MyCameraCaptureIntent: CameraCaptureIntent {
  public typealias AppContext = MyAppContext
  public static let title: LocalizedStringResource = "test capture intent"
  public static let description: IntentDescription? = IntentDescription("Capture Image")

  public init() {
    NSLog("ELEPHANT: MyCameraCaptureIntent init")
  }

  @MainActor
  public func perform() async throws -> some IntentResult {
    do {
      NSLog("ELEPHANT MyIntentFramework perform() 100")
      if let context = try await MyCameraCaptureIntent.appContext {
        NSLog("ELEPHANT MyIntentFramework perform() 200")
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
