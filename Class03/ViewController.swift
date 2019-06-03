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
    @IBAction func btn03(_ sender: Any) {
        let alert = UIAlertController(title: "information", message: "YN", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Yes", style: .default, handler: {action in})
        
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "Movetoimage2", sender: self)
        }
        alert.addAction(okAction)
 
        let cancelAction = UIAlertAction(title: "NOOOO", style: .default, handler: {action in})
        alert.addAction(cancelAction)
        present(alert,animated: true,completion: nil)
      //  performSegue(withIdentifier: "Movetoimage2", sender: self)
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   //     if(segue.identifier == "Movetoimage2") {
   //         let vc = segue.destination as! ImageViewController
   //         vc.index = 5
   //     }
    }


}

