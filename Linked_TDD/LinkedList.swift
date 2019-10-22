//
//  LinkedList.swift
//  Linked_TDD
//
//  Created by Stefanny Toro Ramirez on 10/21/19.
//  Copyright © 2019 Stefanny Toro Ramirez. All rights reserved.
//

import Foundation


class LinkedList<T:Comparable> {
    var head: Node<T>?
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

    private func getSize() -> Int {
        var pointer = head
        var size = 0
        while (pointer != nil) {
            size += 1
            pointer = pointer?.next
        }
        return size
    }

}
