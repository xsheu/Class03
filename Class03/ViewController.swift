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
        if(labelmessage.text=="Swift hello") {
            labelmessage.text="Hello Swift"
        }
        else {
            labelmessage.text="Swift hello"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // print( "\(UserDefaults.standard.string(forKey: "hi")! )" )
      //  let worker : FileWorker = FileWorker()
      //  worker.writeToFile(content: "中文", fileName: "info.txt", tag: 0)
      //  let result : String = worker.readFromFile(fileName: "info.txt", tag: 0)
      //  print(result)
    }


}

