//
//  ArrayExtension.swift
//  AFConstraintHelpers
//
//  Created by Aldo Fuentes on 5/18/19.
//  Copyright © 2019 softtek. All rights reserved.
//

import UIKit

public extension Array where Element: UIView {
    
    func constraintTo(_ view: Any?, attributes: [NSLayoutConstraint.Attribute] = [.top, .left, .bottom, .right], insets: UIEdgeInsets = .zero){
        for v in self {
            v.constraintTo(view, attributes: attributes, insets: insets)
        }
    }
    
    private func stack(edge: LayoutEdge, spacing: CGFloat = 0, align: Bool = false, center: NSLayoutConstraint.Attribute) {
        guard count > 1 else { return }
        let insets = UIEdgeInsets(spacing)
        _ = self.reduce(self.first!) { (prev, next) -> UIView in
            if prev == next { return next }
            prev.constraintEdge(edge, to: next, inset: insets)
            if align {
                prev.constraintTo(next, attributes: [center])
            }
            return next
        }
    }
    
    func stackVertical(spacing: CGFloat = 0, align: Bool = false) {
        guard count > 1 else { return }
        stack(edge: .bottomToTop, spacing: spacing, align: align, center: .centerX)
    }
    
    func stackHorizontal(spacing: CGFloat = 0, align: Bool = false) {
        guard count > 1 else { return }
        stack(edge: .rightToLeft, spacing: spacing, align: align, center: .centerY)
    }
    
    func constraintHeight(to constant: CGFloat) {
        for view in self {
            view.heightAnchor.constraint(equalToConstant: constant).isActive = true
        }
    }
    
    func constraintWidth(to constant: CGFloat) {
        for view in self {
            view.widthAnchor.constraint(equalToConstant: constant).isActive = true
        }
    }
    
    func constraintWidthTo(_ view: Any? = nil, attribute: NSLayoutConstraint.Attribute = .width, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0){
        for e in self {
            e.constraintWidthTo(view, attribute: attribute, multiplier: multiplier, constant: constant)
        }
    }
    
    func constraintHeightTo(_ view: Any? = nil, attribute: NSLayoutConstraint.Attribute = .height, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0){
        for e in self {
            e.constraintHeightTo(view, attribute: attribute, multiplier: multiplier, constant: constant)
        }
    }
}
