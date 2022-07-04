//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 김소현 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") else { return }
        
        viewController.modalPresentationStyle = .fullScreen
        // present를 모달이 아니라 전체 화면으로 전환하기!
        
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController")
        else {
            return
            // optional binding
        }
        self.navigationController?.pushViewController(viewController, animated: true)
        // 화면 전환을 원하는 뷰 컨트롤러를 추가
    }
    
}

