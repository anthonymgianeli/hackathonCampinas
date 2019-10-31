//
//  HistoricViewController.swift
//  ProjetoAutismo
//
//  Created by anthony gianeli on 30/10/19.
//  Copyright © 2019 anthony.gianeli. All rights reserved.
//

import UIKit

class HistoricViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var historic: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareTableView()
        
        historic.append("Treinamento RH")
        historic.append("Bem Vindos à Synvia")
        historic.append("Treinamento Financeiro")
        historic.append("Treinamento Devs")
        historic.append("Marketing Digital")
        
    }
    
    
    
    func prepareTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historic.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath) as! HistoricTableViewCell
        cell.textLbl.text = historic[indexPath.row]
        return cell
    }
}
