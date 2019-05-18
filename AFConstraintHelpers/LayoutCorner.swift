//
//  LayoutCorner.swift
//  AFConstraintHelpers
//
//  Created by Aldo Fuentes on 5/18/19.
//  Copyright © 2019 softtek. All rights reserved.
//

import UIKit


public enum LayoutCorner{
    
    case topRight
    case topLeft
    case bottomRight
    case bottomLeft
    
    public var yAttribute: NSLayoutConstraint.Attribute{
        get{
            switch self {
            case .topLeft, .topRight:
                return .top
            case .bottomLeft, .bottomRight:
                return .bottom
            }
        }
    }
    
    public var xAttribute: NSLayoutConstraint.Attribute{
        get{
            switch self {
            case .bottomLeft, .topLeft:
                return .left
            case .bottomRight, .topRight:
                return .right
            }
        }
    }
}
