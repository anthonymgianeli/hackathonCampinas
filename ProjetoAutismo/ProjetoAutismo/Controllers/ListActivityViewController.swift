//
//  ListActivityViewController.swift
//  ProjetoAutismo
//
//  Created by anthony gianeli on 02/11/19.
//  Copyright © 2019 anthony.gianeli. All rights reserved.
//

import UIKit

class ListActivityViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    let CellIdentifier = "ListActivityTableViewCell"
    var historics: [String] = []
    var descricoes: [String] = []
    var imagens: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareTableView()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    func prepareTableView() {
        
        historics.append("Atividade de carrinho")
        historics.append("Atividade da árvore")
        historics.append("Atividade da bola")
        historics.append("Atividade do dado")
        historics.append("Atividade do gato")
        
        descricoes.append("Desenvolver o conhecimento sobre a letra C e o que se ve no dia a dia que começ com a letra C.")
        descricoes.append("Desenvolver o conhecimento sobre a letra A e o que se ve no dia a dia que começ com a letra A.")
        descricoes.append("Desenvolver o conhecimento sobre a letra B e o que se ve no dia a dia que começ com a letra B.")
        descricoes.append("Desenvolver o conhecimento sobre a letra D e o que se ve no dia a dia que começ com a letra D.")
        descricoes.append("Desenvolver o conhecimento sobre a letra G e o que se ve no dia a dia que começ com a letra G.")
        
        
        if let imagem = UIImage(named: "carro"){
            imagens.append(imagem)
        }
        if let imagem = UIImage(named: "arvore"){
            imagens.append(imagem)
        }
        if let imagem = UIImage(named: "bola"){
            imagens.append(imagem)
        }
        if let imagem = UIImage(named: "dados"){
            imagens.append(imagem)
        }
        if let imagem = UIImage(named: "gato"){
            imagens.append(imagem)
        }
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier, for: indexPath) as! ListActivityTableViewCell
        let word = historics[indexPath.row]
        let descricao = descricoes[indexPath.row]
        let image = imagens [indexPath.row]
        
        // Configure cell of TableView
        cell.textLbl.text = word
        cell.descricao.text = descricao
        cell.imagem.image = image
        
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

}
