//
//  LogInWithMVPTests.swift
//  LogInWithMVPTests
//
//  Created by Artem Pavlov on 14.05.2022.
//

import XCTest
@testable import LogInWithMVP

class PersonTests: XCTestCase {
    
    var person: Person?
    
    override func setUp() {
        super.setUp()
        person = Person(name: "Foo", surname: "Bar")
    }
    
    override func tearDown() {
        person = nil
        super.tearDown()
    }
    
    func testInitPersonWithNameAndSurname() {
        XCTAssertNotNil(person)
    }
    
    func testWhenGivenNameAndSurnameSetsNameAndSurname() {
        XCTAssertEqual("Foo", person?.name)
        XCTAssertEqual("Bar", person?.surname)
    }
}
