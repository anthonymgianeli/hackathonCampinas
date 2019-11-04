//
//  SignUpViewController.swift
//  ProjetoAutismo
//
//  Created by anthony gianeli on 31/10/19.
//  Copyright © 2019 anthony.gianeli. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var studentName: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var cellphone: UITextField!
    @IBOutlet weak var fatherName: UITextField!
    @IBOutlet weak var motherName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
