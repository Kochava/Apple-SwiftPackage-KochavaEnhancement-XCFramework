import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(KochavaEnhancementTests.allTests),
    ]
}
#endif
