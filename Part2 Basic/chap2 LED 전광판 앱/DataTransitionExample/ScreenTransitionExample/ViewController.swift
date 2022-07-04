//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 김소현 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController")
                as? CodePresentViewController
        else {
            return            
        }
        
        viewController.modalPresentationStyle = .fullScreen
        // present를 모달이 아니라 전체 화면으로 전환하기!
        viewController.name = "Colli present"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController")
                as? CodePushViewController
        else {
            return
            // optional binding
        }
        
        viewController.name = "Colli push"
        
        self.navigationController?.pushViewController(viewController, animated: true)
        // 화면 전환을 원하는 뷰 컨트롤러를 추가
    }
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}

