//
//  TextField.swift
//  practice_ios
//
//  Created by Yagnik Bavishi on 28/02/22.
//

import UIKit

class TextField: UITextField {

    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right:
                                15)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

}
