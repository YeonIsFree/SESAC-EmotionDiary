//
//  ViewController.swift
//  EmotionDiary
//
//  Created by Seryun Chun on 2024/01/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cntButtons: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setInitialNumber()
    }
    
    func getRandomNumber() -> Int {
        return Int.random(in: 0...9)
    }
    
    func setInitialNumber() {
        for cntButton in cntButtons {
            cntButton.text = "\(getRandomNumber())"
        }
    }
    
    @IBAction func imageClicked(_ sender: UITapGestureRecognizer) {
        let id = sender.view!.tag
        let num = Int(cntButtons[id].text!)! + 1
        cntButtons[id].text = "\(num)"
    }
}

