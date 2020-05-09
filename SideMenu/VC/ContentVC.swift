//
//  ContentVC.swift
//  SideMenu
//
//  Created by Eslam on 5/9/20.
//  Copyright © 2020 Eslam. All rights reserved.
//

import UIKit
class ContentVC: UIViewController {
    
    @IBAction func present(_ sender: Any) {
    self.sideMenuViewController!.presentLeftMenuViewController()

    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}
