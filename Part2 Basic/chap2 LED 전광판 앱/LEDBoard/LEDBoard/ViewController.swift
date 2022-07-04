//
//  ViewController.swift
//  LEDBoard
//
//  Created by 김소현 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentsLabel.textColor = .yellow 
    }


}

