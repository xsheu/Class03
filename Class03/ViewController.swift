//
//  ViewController.swift
//  Class03
//
//  Created by 許光毅 on 2019/4/22.
//  Copyright © 2019 許光毅. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelmessage: UILabel!
    
    @IBAction func buttonpushclick(_ sender: UIButton) {
        labelmessage.text="Swift hello"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

