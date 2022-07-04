//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 김소현 on 2022/07/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
    Quote(contents: "The most incomprehensible thing about the universe is that it is comprehensible.", name: "Albert Einstein"),
    Quote(contents: "If quantum mechanics hasn't profoundly shocked you, you haven't understood it yet.", name: "Niels Bohr "),
    Quote(contents: "Opportunity is missed by most people because it is dressed in overalls and looks like work.", name: "Thomas Alva Edison"),
    Quote(contents: "수학은 논리적인 생각을 표현하는 한편의 시이다.", name: "Albert Einstein"),
    Quote(contents: "If you can't explain it simply, you don't understand it well enough.", name: "Albert Einstein")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func tapQuotesGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5))
        // 0 ~ 4 사이의 난수 생성 & 인덱스 접근을 위하여 int 타입으로 변환
        let quote = quotes[random]
        
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

