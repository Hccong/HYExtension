//
//  HYThen.swift
//  delegate
//
//  Created by Harry on 2017/2/8.
//  Copyright © 2017年 Harry. All rights reserved.
//

import Foundation

public protocol Then {}

extension Then where Self: Any {
    public func then_Any( block: (inout Self) -> Void) -> Self {
        var copy = self
        block(&copy)
        return copy
    }
}


extension Then where Self: AnyObject {
    public func then( block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
}


extension NSObject: Then {}
