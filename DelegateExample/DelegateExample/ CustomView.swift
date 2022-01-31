//
//   CustomView.swift
//  DelegateExample
//
//  Created by Yagnik Bavishi on 28/01/22.
//

import Foundation
import UIKit

protocol TextTransferDelegate: AnyObject {
    func transferText(text:String)
}

class CustomView: UIView {
    
    @IBOutlet weak var textField:UITextField!
    @IBOutlet weak var button:UIButton!
    
    weak var delegate:TextTransferDelegate? = nil
    
    @IBAction func changeTextPressed(_ sender:UIButton) {
        guard let delegate = delegate else { return }
        delegate.transferText(text: textField.text!)
    }
}
