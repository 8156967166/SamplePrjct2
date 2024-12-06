//
//  NetflixViewController.swift
//  SamplePrjct
//
//  Created by Anisha on 08/05/23.


import UIKit

class NetflixViewController: UIViewController {

    
    var netFlixModel = [NetfilxTableViewCellModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getModel()
        print("Success")
    }
    
    func getModel() {
        let cell1 = NetfilxTableViewCellModel(strTitle: "Latest", cellType: .pageControl)
        netFlixModel.append(cell1)
        let cell2 = NetfilxTableViewCellModel(strTitle: "Popular", cellType: .popular)
        netFlixModel.append(cell2)
    }
    
    @IBAction func buttonActionSideMenu(_ sender: UIButton) {
        self.performSegue(withIdentifier: "SideMenuViewController", sender: nil)
    }
}

extension NetflixViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return netFlixModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = netFlixModel[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellModel.identifier, for: indexPath) as! NetflixTableViewCell
        cell.cellModel = cellModel
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
}
