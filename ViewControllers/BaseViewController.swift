//
//  BaseViewController.swift
//  VinovaAMS
//
//  Created by Hoang Quan Tran on 7/11/17.
//  Copyright © 2017 Hoang Quan Tran. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setupNavigationbar(){
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = AMSColor.redColor
    }
    // MARK: BACK BUTTON BAR ITEM
    func addMenuButton(){
        let menuBtn = UIButton()
        menuBtn.setImage(#imageLiteral(resourceName: "menu"), for: .normal)
        menuBtn.sizeToFit()
        menuBtn.addTarget(self , action: #selector(btnBackTapped), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: menuBtn)
    }
    
    func addProfileButton(){
        let profileBtn = UIButton()
        profileBtn.setImage(#imageLiteral(resourceName: "profile"), for: .normal)
        profileBtn.sizeToFit()
        profileBtn.addTarget(self , action: #selector(btnBackTapped), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: profileBtn)
    }
    
    
    func btnBackTapped(){
        self.navigationController?.dismiss(animated: true, completion: nil)
    }

    
}
