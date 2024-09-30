//import AppIntents
//import Foundation
//
//public struct MyIntentEmbedded: CameraCaptureIntent {
//  public typealias AppContext = MyAppContextEmbedded
//  public static let title: LocalizedStringResource = "test capture intent"
//  public static let description: IntentDescription? = IntentDescription("Capture Image")
//
//  public init() {
//    NSLog("ELEPHANT: MyIntentEmbedded init")
//  }
//
//  @MainActor
//  public func perform() async throws -> some IntentResult {
//    do {
//      NSLog("ELEPHANT MyIntentEmbedded perform() 100")
//      if let context = try await MyIntentEmbedded.appContext {
//        NSLog("ELEPHANT MyIntentEmbedded perform() 200")
//        return .result()
//      }
//
//    } catch {
//
//    }
//    return .result()
//  }
//}
//
//public struct MyAppContextEmbedded: Codable, Sendable {
//  let foo: Bool
//
//  public init() {
//    NSLog("ELEPHANT: MyAppContextEmbedded init")
//    self.foo = true
//    NSLog("ELEPHANT: MyAppContextEmbedded init 2")
//  }
//}
