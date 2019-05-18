//
//  ViewExtension.swift
//  AFConstraintHelpers
//
//  Created by Aldo Fuentes on 5/18/19.
//  Copyright © 2019 softtek. All rights reserved.
//

import UIKit

public extension UIView {
    
    func addSubviews(_ views: [UIView]) {
        for view in views {
            addSubview(view)
        }
    }
    
    func constraintEdge(_ edge: LayoutEdge, to view: Any, inset: UIEdgeInsets = .zero){
        NSLayoutConstraint(item: self, attribute: edge.sourceAttribute, relatedBy: .equal, toItem: view, attribute: edge.destinationAttribute, multiplier: 1.0, constant: edge.sourceAttribute.constant(from: inset)).isActive = true
    }
    
    func constraintTo(_ view: Any?, attributes: [NSLayoutConstraint.Attribute] = [.top, .left, .bottom, .right], insets: UIEdgeInsets = .zero, priority: Float = 999) {
        attributes.forEach {
            let constraint = NSLayoutConstraint(item: self, attribute: $0, relatedBy: .equal, toItem: view, attribute: $0, multiplier: 1.0, constant: $0.constant(from: insets))
            constraint.priority = UILayoutPriority(rawValue: priority)
            constraint.isActive = true
        }
    }
    
    func constraintCorner(_ corner: LayoutCorner, to view: UIView, corner destinationCorner: LayoutCorner, insets: UIEdgeInsets = .zero){
        NSLayoutConstraint(item: self, attribute: corner.xAttribute, relatedBy: .equal, toItem: view, attribute: destinationCorner.xAttribute, multiplier: 1.0, constant: corner.xAttribute.constant(from: insets)).isActive = true
        NSLayoutConstraint(item: self, attribute: corner.yAttribute, relatedBy: .equal, toItem: view, attribute: destinationCorner.yAttribute, multiplier: 1.0, constant: corner.yAttribute.constant(from: insets)).isActive = true
    }
    func constraintWidthTo(_ view: Any? = nil, attribute: NSLayoutConstraint.Attribute = .width, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0){
        NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: view, attribute: attribute, multiplier: multiplier, constant: constant).isActive = true
    }
    func constraintHeightTo(_ view: Any? = nil, attribute: NSLayoutConstraint.Attribute = .height, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0){
        NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: view, attribute: attribute, multiplier: multiplier, constant: constant).isActive = true
    }
    func constraintSizeTo(_ size: CGSize){
        constraintWidthTo(constant: size.width)
        constraintHeightTo(constant: size.height)
    }
}
