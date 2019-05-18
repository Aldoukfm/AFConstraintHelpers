//
//  LayoutConstraintExtension.swift
//  AFConstraintHelpers
//
//  Created by Aldo Fuentes on 5/18/19.
//  Copyright © 2019 softtek. All rights reserved.
//

import UIKit

public extension NSLayoutConstraint.Attribute{
    
    func constant(from insets: UIEdgeInsets) -> CGFloat{
        switch self{
        case .top:
            return insets.top
        case .left:
            return insets.left
        case .bottom:
            return insets.bottom * -1
        case .right:
            return insets.right * -1
        case .width:
            return (insets.right + insets.left) * -1
        case .height:
            return (insets.top + insets.bottom) * -1
        default:
            return 0.0
        }
    }
}
