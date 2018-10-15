//
//  DetailCategoryViewController.swift
//  TabelView, Collection View - Lesson 5
//
//  Created by BinhPQ on 10/15/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class DetailCategoryViewController: UIViewController,UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
 
    @IBOutlet weak var detailLabelName: UILabel!
    @IBOutlet weak var searchbarName: UISearchBar!
    @IBOutlet weak var detailCategoryTableView: UITableView!
   
    let image: [String] = ["1", "2", "3", "4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        detailCategoryTableView.delegate = self
        detailCategoryTableView.dataSource = self
        searchbarName.delegate = self
        // set right barbutton
        let rightButton = UIBarButtonItem.init(image: UIImage(named: "Group 4"), style: .done, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = rightButton
        
    }
    
    
    //override func of tableview, searchbar
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let detailCell = detailCategoryTableView.dequeueReusableCell(withIdentifier: "DetailCategoryCell", for: indexPath) as! DetailCategoryTableViewCell
        detailCell.imageDetailCategoryCell.image = UIImage(named: image[indexPath.row])
        detailCell.layer.borderWidth = 0.1
        detailCell.layer.cornerRadius = 10
        return detailCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //self.performSegue(withIdentifier: "description", sender: self)
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let descriptionView = sb.instantiateViewController(withIdentifier: "descriptionSb") as! DescriptionViewController
        descriptionView.imageName = image[indexPath.row]

        self.navigationController?.pushViewController(descriptionView, animated: true)
        
    }
}
