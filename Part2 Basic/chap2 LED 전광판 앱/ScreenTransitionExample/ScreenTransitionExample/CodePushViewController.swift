//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 김소현 on 2022/07/04.
//

import UIKit

class CodePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
