//  MVViewController.swift
//  SamplePrjct
//  Created by Aneesha on 10/11/23.

import UIKit

class MVViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        present(SecondViewController(), animated: true)
    }
    
}

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}
