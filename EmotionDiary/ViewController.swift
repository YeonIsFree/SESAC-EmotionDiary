//
//  ViewController.swift
//  EmotionDiary
//
//  Created by Seryun Chun on 2024/01/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cntButtons: [UILabel]!
    
    var count = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInitialNumber()
    }
    
    func getRandomNumber() -> Int {
        return Int.random(in: 0...9)
    }
    
    func setInitialNumber() {
        for idx in 0..<count.count {
            count[idx] = getRandomNumber()
            cntButtons[idx].text = "\(count[idx])"
        }
    }
    
    @IBAction func imageClicked(_ sender: UITapGestureRecognizer) {
        let id = sender.view!.tag
        count[id] += 1
        cntButtons[id].text = "\(count[id])"
    }
}

