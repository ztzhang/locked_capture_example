import AppIntents
import Foundation

struct MyIntent: CameraCaptureIntent {
    typealias AppContext = MyAppContext
    static let title: LocalizedStringResource = "test capture intent"
    static let description: IntentDescription? = IntentDescription("Capture Image")
    
    init() {
        print("ELEPHANT: print MyIntent init")
        NSLog("ELEPHANT: nslog MyIntent init")
    }
    
    @MainActor
    func perform() async throws -> some IntentResult {
        do {
            print("ELEPHANT print Trying to perform intent")
            NSLog("ELEPHANT NSLog Trying to perform intent")
            if let context = try await MyIntent.appContext {
                print("ELEPHANT print context = \(context)")
                NSLog("ELEPHANT NSLog context = \(context)")
                return .result()
            }
            
        } catch {
            
        }
        return .result()
    }
}

struct MyAppContext: Codable {
    let foo: Bool
    
    init() {
        print("ELEPHANT: print MyAppContext init")
        NSLog("ELEPHANT: nslog MyAppContext init")
        self.foo = true
    }
}
