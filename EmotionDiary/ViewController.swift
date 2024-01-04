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
        setInitialValue()
    }
    
    @IBAction func imageClicked(_ sender: UITapGestureRecognizer) {
        let id = sender.view!.tag
        
        // 1) UserDefault에서 cnt 값 불러오기
        let cnt = getValue(id)
        
        // 2) 위에서 불러온 cnt 값에 +1 하여 UserDefault 에 업데이트
        let newCnt = cnt + 1
        updateValue(id, cnt: newCnt)
        
        // 3) button 에 표시
        cntButtons[id].text = "\(getValue(id))"
    }
    
    func setInitialValue() {
        // 처음 화면에 표시 될 때 UserDefault에 저장된 값을 불러옴
        // 만약 저장된 값이 없으면 0으로 표기됨
        for id in 0...8 {
            cntButtons[id].text = "\(getValue(id))"
        }
    }
    
    func getValue(_ id: Int) -> Int {
        return UserDefaults.standard.integer(forKey: "cnt\(id)")
    }
    
    func updateValue(_ id: Int, cnt: Int) {
        UserDefaults.standard.set(cnt, forKey: "cnt\(id)")
    }
}

