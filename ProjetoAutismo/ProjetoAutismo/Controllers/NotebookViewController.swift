//
//  NotebookViewController.swift
//  ProjetoAutismo
//
//  Created by anthony gianeli on 30/10/19.
//  Copyright © 2019 anthony.gianeli. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signSelector: UISegmentedControl!
    @IBOutlet weak var signButton: UIButton!
    
    var isSignIn:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func signInSelectorChanged(_ sender: UISegmentedControl) {
        
        // flip the boolean
        isSignIn = !isSignIn
        
        // check the bool and set the button and labels
        if isSignIn {
            signButton.setTitle("     Entrar     ", for: .normal)
        } else {
            signButton.setTitle("     Cadastrar    ", for: .normal)
        }
    }
    
    @IBAction func signInTappedButton(_ sender: UIButton) {
        
        // TODO: do some form validation
        if let email = emailTextField.text, let pass = passwordTextField.text {
            // check if it`s sign in or register
            if isSignIn {
                // sign in the user with Firebase
                Auth.auth().signIn(withEmail: email, password: pass, completion: { (user, error) in
                    
                    // check that isn`t nil
                    if let u = user {
                        // user is found, go to home screen
                        self.performSegue(withIdentifier: "entrarHome", sender: self)
                    }
                    else {
                        // error: check error and show message
                        return
                    }
                })
                
            } else {
                // register the user with Firebase
                Auth.auth().createUser(withEmail: email, password: pass, completion: { (user, error) in
                    
                    // check that isn`t nil
                    if let u = user {
                        // user is found, go to home screen
                        self.performSegue(withIdentifier: "entrarCadastro", sender: self)
                    }
                    else {
                        // error: check error and show message
                        return
                    }
                })
            }
        }
    }
    
    @IBAction func unwindHere(segue: UIStoryboardSegue){}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
