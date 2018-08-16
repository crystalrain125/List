//
//  StringUtilsTests.swift
//  XCodeProject2.4Tests
//
//  Created by Catherine Xu on 7/2/18.
//  Copyright © 2018 Catherine Xu. All rights reserved.
//

import XCTest
@testable import XCodeProject2_4

class StringUtilsTests: XCTestCase {
    let stringUtils = StringUtils()
    func testSpecialChar() {
        let name = "J@ne D0e"
        let generatedName = stringUtils.createNameWith(first: "J@ne", last: "D0e")
        XCTAssertEqual(name, generatedName)
    }
    
    func testLongName() {
        let name = "Sadly pneumonoultramicroscopicsilicovolcanoconiosis(ic)"
        let generatedName = stringUtils.createNameWith(first: "Sadly", last: "pneumonoultramicroscopicsilicovolcanoconiosis(ic)")
        XCTAssertEqual(name, generatedName)
    }
}
