//
//  ViewController.swift
//  SamplePrjct
//
//  Created by Anisha on 05/05/23.
//

import UIKit
import Alamofire
import AZDialogView
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var purpleView: UIView!  // view inside super view
    @IBOutlet weak var yellowView: UIView!  // super view
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        yellowView.layer.cornerRadius = 20
        yellowView.layer.masksToBounds = true
    }
}
