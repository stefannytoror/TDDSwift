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

    func testInserIntSorted() {
        //Given
        let linkedListInt = LinkedList<Int>()
        let array = [1,2,3,4]
        let array2 = [1,2,3,4,5]
        //When
        linkedListInt.insert(2)
        linkedListInt.insert(4)
        linkedListInt.insert(1)
        linkedListInt.insert(3)
        //Then
        XCTAssertEqual(linkedListInt.getValues(), array, "List should insert values sortly")
        linkedListInt.insert(5)
        XCTAssertEqual(linkedListInt.getValues(), array2 , "List should insert values sortly")
    }

    func testInsertStringSorted() {
        //Given
        let linkedListString = LinkedList<String>()
        let arrayString = ["A","B","F", "H"]
        let arrayString2 =  ["A","B","F", "H", "b"]
        //When
        linkedListString.insert("B")
        linkedListString.insert("A")
        linkedListString.insert("H")
        linkedListString.insert("F")
        //Then
        XCTAssertEqual(linkedListString.getValues(), arrayString, "List should insert strings sortly")

        linkedListString.insert("b")
        XCTAssertEqual(linkedListString.getValues(), arrayString2 , "List should insert strings sortly")
        XCTAssertEqual(linkedListString.size,5 ,"List should have the correct size")
    }

    func testDeleteData() {
        //Given
        let linkedListInt = LinkedList<Int>()
        let array =  [1,3,4]
        //When
        linkedListInt.insert(2)
        linkedListInt.insert(4)
        linkedListInt.insert(1)
        linkedListInt.insert(3)
        linkedListInt.delete(2)
        //Then
        XCTAssertEqual(linkedListInt.getValues(), array, "List should delete values")
    }

}
