//
//  LoginViewController.swift
//  VinovaAMS
//
//  Created by Hoang Quan Tran on 7/10/17.
//  Copyright © 2017 Hoang Quan Tran. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var emailTf: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = AMSColor.redColor
        logoLabel.backgroundColor = AMSColor.redColor
        logoLabel.textColor = .white
        logoLabel.sizeToFit()
        loginLabel.backgroundColor = AMSColor.redColor
        loginLabel.textColor = .white
        loginLabel.sizeToFit()
        loginView.backgroundColor = .white
        btnLogin.backgroundColor = AMSColor.redColor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        let email = emailTf.text
        let password = passwordTf.text
        if  isEmailExist(email: email!) {
            if checkPassword(password: password!) {
                let alertController = UIAlertController(title: "Login", message: "Successfully", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .cancel , handler: nil))
                present(alertController, animated: true, completion: nil)
            }
            else{
                let alertController = UIAlertController(title: "Login", message: "Password incorrect", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .cancel , handler: nil))
                present(alertController, animated: true, completion: nil)
            }
           
        }
        else {
            let alertController = UIAlertController(title: "Login", message: "Email incorrect", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .cancel , handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    
    func isEmailExist(email: String) -> Bool{
        if email == "String" {
            return true
        }
        return false
    }
    func checkPassword(password: String)->Bool{
        if password.characters.count == 6{
            return true
        }
        return false
    }
}
