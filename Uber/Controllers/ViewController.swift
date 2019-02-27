//
//  ViewController.swift
//  Uber
//
//  Created by Ryan Nazari on 2/1/19.
//  Copyright © 2019 Ryan Nazari. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class ViewController: UIViewController {

    
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        SVProgressHUD.show()
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (result, error) in
            if error != nil {
                print("there is error to log in \(error)")
            } else {
                SVProgressHUD.dismiss()
                print("login success")
                self.performSegue(withIdentifier: "home", sender: self)
            }
        }
        
    }
    
    
    
    
}

