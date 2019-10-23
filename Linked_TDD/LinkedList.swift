//
//  LinkedList.swift
//  Linked_TDD
//
//  Created by Stefanny Toro Ramirez on 10/21/19.
//  Copyright © 2019 Stefanny Toro Ramirez. All rights reserved.
//

import Foundation


class LinkedList<T:Comparable> {
    private var head: Node<T>?
    var size: Int {
            return getSize()
        }

    func insert(_ data: T) {
        let newNode = Node(data: data)
        var pointer = head
        var prevPointer: Node<T>?

        // TODO: Change force unrapped
        while pointer != nil, pointer!.data < data {
            prevPointer = pointer
            pointer = pointer?.next
        }
        if head == nil || pointer == head {
            head = newNode
        }
        prevPointer?.next = newNode
        newNode.next = pointer
    }

    func delete(_ data: T) {
        var pointer = head
        var prevPointer: Node<T>?

        // TODO: Change force unrapped
        while pointer != nil, pointer!.data < data {
            prevPointer = pointer
            pointer = pointer?.next
        }
        if head == nil || pointer == head {
            head = pointer?.next
        }
        prevPointer?.next = pointer?.next
        pointer?.next = nil
    }
    
    func getValues() -> [T]? {
        var array: [T]? = []
        forEach { value in
            array?.append(value)
        }
        return array
    }

    func printData() {
        forEach { value in
            print(value)
        }
    }

    func forEach(_ completionHandler: @escaping (_ data: T) -> Void) {
        var pointer = head
        while (pointer != nil) {
            // Call the function
            completionHandler(pointer!.data)
            pointer = pointer?.next
        }
    }

    private func getSize() -> Int {
        var size = 0
        forEach { value in
            size += 1
        }
        return size
    }

}
