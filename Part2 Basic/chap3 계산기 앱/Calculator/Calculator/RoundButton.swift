//
//  RoundButton.swift
//  Calculator
//
//  Created by 김소현 on 2022/07/05.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var isRound: Bool = false {
        didSet {
            if isRound == true {
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
    }
}
