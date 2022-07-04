//
//  SuguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 김소현 on 2022/07/04.
//

import UIKit

class SuguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

  
    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentedViewController?.dismiss(animated: true, completion: nil)
        // back 버튼을 눌렀을 때, 이전 화면으로 넘어간다.
    }
}
