//
//  TeacherMessegesViewController.swift
//  ProjetoAutismo
//
//  Created by anthony gianeli on 31/10/19.
//  Copyright © 2019 anthony.gianeli. All rights reserved.
//

import UIKit

class TeacherMessegesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellsLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeacherMessageTableViewCell") as! TeacherMessageTableViewCell
        cell.label.text = cellsLabel[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var tableView: UITableView!
    var cellsLabel : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Area do Professor"
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func enviar(_ sender: Any) {
        
        if textView.text != ""{
            cellsLabel.append(textView.text)
            textView.text = ""
            tableView.reloadData()
        }
    }
    
}
