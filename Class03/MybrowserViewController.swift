//
//  MybrowserViewController.swift
//  Class03
//
//  Created by 許光毅 on 2019/5/6.
//  Copyright © 2019 許光毅. All rights reserved.
//

import UIKit
import WebKit

class MybrowserViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var btnURLconstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.load(URLRequest(url: URL(string: "https://www.mozilla.org/zh-TW/firefox/")!))

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
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn  range: NSRange, replacementString string: String) -> Bool {
        let accept="abcdeABCDE"
        let cs = NSCharacterSet(charactersIn: accept).inverted
        let filters = string.components(separatedBy: cs).joined(separator: "")
        if(string != filters){
            return false
        }
        let current = textField.text! as NSString
        let newString :NSString = current.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= 10
    }
    
    @objc func keyboardWillAppear(notification:NSNotification?) {
        print("keyboadWillAppear")
        guard let frame = notification?.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else {
            return
        }
        
        self.btnURLconstraint.constant=frame.cgRectValue.height;
    }
    @objc func keyboardWillDisAppear(notification:NSNotification?) {
        print("keyboadWillDisAppear")
        self.btnURLconstraint.constant=35;
        
    }
   /* @objc keyboardWillAppear(notification: NSNotification?) {
    
    } */

}
