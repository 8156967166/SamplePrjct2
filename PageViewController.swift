//
//  PageViewController.swift
//  SamplePrjct
//
//  Created by Anisha on 09/05/23.
//

import UIKit

class PageViewController: UIViewController {

    @IBOutlet weak var imagePageControl: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var imageArry = ["barlie", "firestarter", "lavagirl", "loveAgain", "penguin", "theDouble"]
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.currentPage = 0
        imagePageControl.image = UIImage(named: "sir")
    }
    
    @IBAction func buttonActionPage(_ sender: UIPageControl) {
        if pageControl.currentPage == 0 {
            imagePageControl.image = UIImage(named: "sir")
        }else if pageControl.currentPage == 1 {
            imagePageControl.image = UIImage(named: "firestarter")
        } else if pageControl.currentPage == 2 {
            imagePageControl.image = UIImage(named: "lavagirl")
        } else if pageControl.currentPage == 3 {
            imagePageControl.image = UIImage(named: "loveAgain")
        }
    
    }
    
}
