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


/*
 
 @IBInspectable : customView 속성을 스토리보드에서 바로 변경 가능
 
 @IBDesignable : 변경된 속성이 실시간으로 스토리보드에 적용됨
 
 -> RoundButton : 이게 우리가 정의한 customView
 
 */
