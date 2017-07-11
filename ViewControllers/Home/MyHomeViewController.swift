//
//  MyHomeViewController.swift
//  VinovaAMS
//
//  Created by Hoang Quan Tran on 7/11/17.
//  Copyright © 2017 Hoang Quan Tran. All rights reserved.
//

import UIKit

class MyHomeViewController: BaseViewController {
    
    let data: [String] = ["A","A"]
    
    
    @IBOutlet weak var awwwLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationbar()
        addMenuButton()
        addProfileButton()
        

    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    func setUpViews(){
        setupNavigationbar()
        addMenuButton()
        addProfileButton()
        if data != nil {
            awwwLabel.isHidden = true
        }
        
    }
    
    
}
