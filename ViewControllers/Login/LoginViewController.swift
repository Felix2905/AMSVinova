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
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = AMSColor.redColor
        logoLabel.backgroundColor = AMSColor.redColor
        logoLabel.textColor = .white
        logoLabel.sizeToFit()
        loginLabel.backgroundColor = AMSColor.redColor
        loginLabel.textColor = .white
        loginLabel.sizeToFit()
        // Do any additional setup after loading the view.
    }
    
   
}
