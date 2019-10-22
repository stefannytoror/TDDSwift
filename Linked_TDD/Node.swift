//
//  Node.swift
//  Linked_TDD
//
//  Created by Stefanny Toro Ramirez on 10/21/19.
//  Copyright © 2019 Stefanny Toro Ramirez. All rights reserved.
//

import Foundation

class Node<T:Comparable>{
    var data: T
    var next: Node?

    init(data: T) {
        self.data = data
    }
}

extension Node: Equatable {
    static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
        if lhs.data == rhs.data,
            lhs.next == lhs.next {
            return true
        }else {
            return false
        }
    }
}
