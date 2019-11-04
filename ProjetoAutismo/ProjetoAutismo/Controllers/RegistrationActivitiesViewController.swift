//
//  RegistrationActivitiesViewController.swift
//  ProjetoAutismo
//
//  Created by anthony gianeli on 31/10/19.
//  Copyright © 2019 anthony.gianeli. All rights reserved.
//

import UIKit

class RegistrationActivitiesViewController: UIViewController {
    
    @IBOutlet weak var selectActivity: UITextField!
    @IBOutlet weak var mainPicture: UITextField!
    @IBOutlet weak var image2: UITextField!
    @IBOutlet weak var image3: UITextField!
    @IBOutlet weak var image4: UITextField!
    @IBOutlet weak var sound: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cadastro das Atividades"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func confirmBtn(_ sender: UIButton) {
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
