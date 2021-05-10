//
//  ViewController.swift
//  UITest
//
//  Created by Ramesh Siddanavar on 06/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTF : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.nameTF.text = "m not nil"
    }


}

