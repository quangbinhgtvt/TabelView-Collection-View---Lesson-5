//
//  CountryViewController.swift
//  TabelView, Collection View - Lesson 5
//
//  Created by BinhPQ on 10/13/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,UISearchBarDelegate {

    var country: [String] = ["Vietnam", "India", "United Stated", "United Kingdom", "Hawai"]
    
    
    @IBOutlet weak var CountryTableView: UITableView!
    @IBOutlet weak var CountrySearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        CountryTableView.delegate = self
        CountryTableView.dataSource = self
        CountrySearchBar.delegate = self
        
           // set back button
        self.navigationItem.hidesBackButton = true
        let lbl = UILabel()
        lbl.text = "Country"
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: lbl)
        //set backbar button title for category view
        let backBarButton = UIBarButtonItem()
        backBarButton.title = "Country"
        self.navigationItem.backBarButtonItem = backBarButton
        
        // set right button
        let rightButton = UIBarButtonItem.init(image: UIImage(named: "Group 4"), style: .done, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = rightButton
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return country.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell") as! CountryTableViewCell
        cell.CountryLabel.text = country[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "countryitem", sender: self)

  
        
    }
    // SearchBar
   

}
