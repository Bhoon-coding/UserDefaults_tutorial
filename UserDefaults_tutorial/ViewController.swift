//
//  ViewController.swift
//  UserDefaults_tutorial
//
//  Created by BH on 2021/12/31.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    // 변수 처리
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 값 불러오기
        let getTextValue = defaults.string(forKey: "textValue")
        
        // getTextValue가 nil이면 label에 "기본값" 보여주기
        label.text = getTextValue ?? "기본값"
        
        
        
    }

    
    
    @IBAction func saveData(_ sender: Any) {
        // textField에 적힌 글을 label에 보여주기
        label.text = textField.text
    
        // textField에 있는 글 저장
        defaults.set(textField.text, forKey: "textValue")
    }
    
}

