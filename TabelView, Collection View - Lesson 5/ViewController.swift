//
//  ViewController.swift
//  TabelView, Collection View - Lesson 5
//
//  Created by BinhPQ on 10/11/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func clickLogin(_ sender: Any) {
       self.performSegue(withIdentifier: "countrysegue", sender: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
}

