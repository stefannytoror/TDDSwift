//
//  LinkedListTests.swift
//  Linked_TDDTests
//
//  Created by Stefanny Toro Ramirez on 10/21/19.
//  Copyright © 2019 Stefanny Toro Ramirez. All rights reserved.
//

import XCTest
@testable import Linked_TDD

class LinkedListTests: XCTestCase {

    override func setUp() {

    }

    override func tearDown() {
    }

    func testShouldAcceptStrings() {
        //Given
        let linkedList = LinkedList<Int>()  // <-- Define an specific kind of data like string or Int
        //When and Then
        XCTAssertNoThrow(linkedList.insert(2), "Linkedlist should accept strings")
    }

    func testShouldAcceptInt() {
        //Given
        let linkedList = LinkedList<String>()
        //When and Then
        XCTAssertNoThrow(linkedList.insert(""), "Linkedlist should accept Integers")
    }

    func testInsertElements() {
        //Given
        let linkedList = LinkedList<Int>()
        //When
        linkedList.insert(2)
        linkedList.insert(3)

        //Then
        XCTAssertEqual(linkedList.size,2 ,"List should have the correct size")

    }

}
