//
//  EdgeInsetsExtension.swift
//  AFConstraintHelpers
//
//  Created by Aldo Fuentes on 5/18/19.
//  Copyright © 2019 softtek. All rights reserved.
//

import UIKit

public extension UIEdgeInsets {
    
    init(_ constant: CGFloat) {
        self.init(top: constant, left: constant, bottom: constant, right: constant)
    }
    
    init(_ x: CGFloat, _ y: CGFloat) {
        self.init(top: y, left: x, bottom: y, right: x)
    }
}
