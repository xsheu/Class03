//
//  MyTableViewController.swift
//  Class03
//
//  Created by 許光毅 on 2019/6/17.
//  Copyright © 2019 許光毅. All rights reserved.
//

import UIKit

class MyTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: "a")
        cell.textLabel?.text = self.array[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    var array : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        array = ["a","b","c"]

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
