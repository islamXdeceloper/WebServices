//
//  ViewController.swift
//  WebService
//
//  Created by Eslam Ahmed on 6/27/19.
//  Copyright © 2019 Eslam Ahmed. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class LoginVC: UIViewController {
    
    @IBOutlet var emailField: UITextField!
    @IBOutlet var passwordField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func login(_ sender: Any) {
        guard let email = emailField.text, !email.isEmpty else { return }
        guard let password = passwordField.text, !password.isEmpty else { return }
        API.login(email: email, password: password) { (error, success: Bool) in
            if success {
                // user no is login
                self.showAlert(withTitle: "user login", withMessage: "success to login")
            } else {
                
                //handle error
                    self.showAlert(withTitle: "Error", withMessage: "user not found")
                
            }
        }
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    

    

}






extension  UIViewController {
    
    func showAlert(withTitle title: String, withMessage message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: { action in
        })
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler: { action in
        })
        alert.addAction(ok)
        alert.addAction(cancel)
        DispatchQueue.main.async(execute: {
            self.present(alert, animated: true)
        })
    }
}
