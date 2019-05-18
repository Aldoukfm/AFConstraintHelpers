//
//  StringExtension.swift
//  AFConstraintHelpers
//
//  Created by Aldo Fuentes on 5/18/19.
//  Copyright © 2019 softtek. All rights reserved.
//

import UIKit

public extension String {
    
    func heightToFitInLabel(font: UIFont, width: CGFloat) -> CGFloat {
        let lbl = UILabel()
        lbl.numberOfLines = 0
        lbl.lineBreakMode = NSLineBreakMode.byWordWrapping
        lbl.font = font
        lbl.text = self
        lbl.frame = CGRect(x: 0, y: 0, width: width, height: 0)
        lbl.sizeToFit()
        return lbl.frame.height
    }
    
    func heightToFitInTextView(font: UIFont, width: CGFloat, containerInset: UIEdgeInsets = UIEdgeInsets(top: 8.0, left: 0.0, bottom: 8.0, right: 0.0), lineFragmentPadding: CGFloat = 5) -> CGFloat {
        let txt = UITextView()
        txt.font = font
        txt.text = self
        txt.isScrollEnabled = false
        txt.textContainerInset = containerInset
        txt.textContainer.lineFragmentPadding = lineFragmentPadding
        txt.frame = CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude)
        return txt.contentSize.height
    }
    
    func sizeToFit(font: UIFont) -> CGSize {
        let lbl = UILabel()
        lbl.font = font
        lbl.text = self
        lbl.sizeToFit()
        return lbl.frame.size
    }
}
