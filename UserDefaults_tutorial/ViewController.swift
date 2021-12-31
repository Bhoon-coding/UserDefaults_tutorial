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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    
    @IBAction func saveData(_ sender: Any) {
        // textField에 적힌 글을 label에 보여주기
        label.text = textField.text
    
      
    }
    
}
