//
//  MybrowserViewController.swift
//  Class03
//
//  Created by 許光毅 on 2019/5/6.
//  Copyright © 2019 許光毅. All rights reserved.
//

import UIKit

class MybrowserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillAppear(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisAppear(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    @objc func keyboardWillAppear(notification:NSNotification?) {
        print("keyboadWillAppear")
        
    }
    @objc func keyboardWillDisAppear(notification:NSNotification?) {
        print("keyboadWillDisAppear")
        
    }
   /* @objc keyboardWillAppear(notification: NSNotification?) {
    
    } */

}
