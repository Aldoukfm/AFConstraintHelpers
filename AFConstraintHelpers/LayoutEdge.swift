//
//  LayoutEdge.swift
//  AFConstraintHelpers
//
//  Created by Aldo Fuentes on 5/18/19.
//  Copyright © 2019 softtek. All rights reserved.
//

import UIKit

public enum LayoutEdge {
    
    case rightToLeft
    case leftToRight
    case topToBottom
    case bottomToTop
    
    public var sourceAttribute: NSLayoutConstraint.Attribute{
        get{
            switch self {
            case .rightToLeft:
                return .right
            case .leftToRight:
                return .left
            case .bottomToTop:
                return .bottom
            case .topToBottom:
                return .top
            }
        }
    }
    
    public var destinationAttribute: NSLayoutConstraint.Attribute{
        get{
            switch self {
            case .rightToLeft:
                return .left
            case .leftToRight:
                return .right
            case .bottomToTop:
                return .top
            case .topToBottom:
                return .bottom
            }
        }
    }
}
