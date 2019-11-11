//
//  RegisterViewController.swift
//  KartRedo
//
//  Created by Likhit Garimella on 17/10/19.
//  Copyright © 2019 Likhit Garimella. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func registerTapped(_ sender: Any) {
        
        SVProgressHUD.show()
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil
            {
                print(error!)
            }
            else
            {
                print("Registration Successful!")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToHome", sender: self)
                
            }
        }
        
    }
    
}
