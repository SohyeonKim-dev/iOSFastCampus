//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 김소현 on 2022/07/04.
//

import UIKit

protocol SendDataDelegate : AnyObject {
    func sendData (name: String)
}
                                

class CodePresentViewController: UIViewController {

    var name: String?
    weak var delegate: SendDataDelegate?
    // delegater 객체 사용할 때는 꼭 weak 붙여줘야 함!
    // or 강한 순환 참조로 인해, 메모리 누수 leak 발생 가능성 !
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
   
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "delegated present Colli")
        self.presentedViewController?.dismiss(animated: true, completion: nil)
    }
}
