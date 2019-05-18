//
//  ConstraintHelpers.swift
//  AFConstraintHelpers
//
//  Created by Aldo Fuentes on 5/18/19.
//  Copyright © 2019 softtek. All rights reserved.
//

import UIKit

public extension CGSize {
    static func square(_ length: CGFloat) -> CGSize {
        return CGSize(width: length, height: length)
    }
    var diagonal: CGFloat {
        return CGFloat(sqrt(pow(self.width, 2.0) + pow(self.height, 2.0)))
    }
}

public func * (left: CGSize, right: CGFloat) -> CGSize
{
    return CGSize(width: left.width * right, height: left.height * right)
}

public func * (left: CGFloat, right: CGSize) -> CGSize
{
    return CGSize(width: right.width * left, height: right.height * left)
}

public func *= ( left: inout CGSize, right: CGFloat)
{
    left = left * right
}

public func / (left: CGSize, right: CGFloat) -> CGSize
{
    return CGSize(width: left.width / right, height: left.height / right)
}

public func / (left: CGFloat, right: CGSize) -> CGSize
{
    return CGSize(width: right.width / left, height: right.height / left)
}

public func /= ( left: inout CGSize, right: CGFloat)
{
    left = left / right
}

public func + (left: CGSize, right: CGSize) -> CGSize
{
    return CGSize(width: left.width + right.width, height: left.height + right.height)
}

public func += ( left: inout CGSize, right: CGSize)
{
    left = left + right
}

public func - (left: CGSize, right: CGSize) -> CGSize
{
    return CGSize(width: left.width - right.width, height: left.height - right.height)
}

public func -= ( left: inout CGSize, right: CGSize)
{
    left = left - right
}

