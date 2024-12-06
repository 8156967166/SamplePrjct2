//  SideMenuViewController.swift
//  SamplePrjct
//  Created by Anisha on 11/05/23.

import UIKit

class SideMenuViewController: UIViewController {

    @IBOutlet weak var viewProfile: UIView!
    
    var nameArry = ["Search", "Home", "Tv Shows", "Movies", "Categories", "My List"]
    var imageArry = ["search 1", "home 1", "tvShows", "movies", "categories", "myList"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewProfile.layer.cornerRadius = 22.5
    }
    
    @IBAction func butonClose(sender: UIButton){
        self.dismiss(animated: true)
    }
}

extension SideMenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SidemenuTableViewCell", for: indexPath) as! SidemenuTableViewCell
        cell.imageInCell.image = UIImage(named: imageArry[indexPath.row])
        cell.labelTitle.text = nameArry[indexPath.row]
        return cell
    }
}
