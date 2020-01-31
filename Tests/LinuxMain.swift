import XCTest

import ExamplePackageTests

var tests = [XCTestCaseEntry]()
tests += ExamplePackageTests.allTests()
XCTMain(tests)
