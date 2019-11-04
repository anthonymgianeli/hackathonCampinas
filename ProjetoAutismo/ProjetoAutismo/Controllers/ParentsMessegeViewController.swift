//
//  ParentsMessegeViewController.swift
//  ProjetoAutismo
//
//  Created by anthony gianeli on 31/10/19.
//  Copyright © 2019 anthony.gianeli. All rights reserved.
//

import UIKit

class ParentsMessegeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var tableView: UITableView!
    
    var cellsLabel : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Area dos Pais"
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @IBAction func btnAction(_ sender: Any) {
        
        if textView.text != ""{
            cellsLabel.append(textView.text)
            textView.text = ""
            tableView.reloadData()
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellsLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ParestsMessageTableViewCell") as! ParestsMessageTableViewCell
        cell.label.text = cellsLabel[indexPath.row]
        return cell
    }

}
