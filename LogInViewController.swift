//
//  LogInViewController.swift
//  KartRedo
//
//  Created by Likhit Garimella on 17/10/19.
//  Copyright © 2019 Likhit Garimella. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logInTapped(_ sender: Any) {
        
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil
            {
                print(error!)
            }
            else
            {
                print("LogIn Successful")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToHome", sender: self)
        }
        
    }
    }
}
