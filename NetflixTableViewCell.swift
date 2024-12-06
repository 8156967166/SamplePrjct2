//
//  NetflixTableViewCell.swift
//  SamplePrjct
//
//  Created by Anisha on 08/05/23.
//

import UIKit

class NetflixTableViewCell: UITableViewCell {

    @IBOutlet weak var collctnView: UICollectionView!
    @IBOutlet weak var labelTitle: UILabel?
    @IBOutlet weak var pageControl: UIPageControl?
    
    var imageArry = ["barlie", "firestarter", "lavagirl", "loveAgain", "penguin", "theDouble"]
    var imagePageControlArry = ["sir", "soldier", "thegidi", "TheWarrior", "thor", "blackPanther", "blackWidow"]
    var cellModel: NetfilxTableViewCellModel! {
        didSet {
            setItems()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func pageControlAction(_ sender: UIPageControl) {
        let path = IndexPath(item: 0, section: 0)
        let cell = collctnView.cellForItem(at: path) as? NetFlixPageControlCollectionViewCell
        if pageControl?.currentPage == 0 {
            print("0")
            cell?.imagePageControl.image = UIImage(named: "sir")
        } else if pageControl?.currentPage == 1 {
            print("1")
            cell?.imagePageControl.image = UIImage(named: "soldier")
        } else if pageControl?.currentPage == 2 {
            print("2")
            cell?.imagePageControl.image = UIImage(named: "thegidi")
        } else if pageControl?.currentPage == 3 {
            print("3")
            cell?.imagePageControl.image = UIImage(named: "TheWarrior")
        } else if pageControl?.currentPage == 4 {
            print("4")
            cell?.imagePageControl.image = UIImage(named: "thor")
        } else if pageControl?.currentPage == 5 {
            print("5")
            cell?.imagePageControl.image = UIImage(named: "blackPanther")
        } else if pageControl?.currentPage == 6 {
            print("6")
            cell?.imagePageControl.image = UIImage(named: "blackWidow")
        }
    }
    
    func setItems() {
        labelTitle?.text = cellModel.getTitle()
        pageControl?.currentPage = 0
        pageControl?.numberOfPages = imagePageControlArry.count
    }
}

extension NetflixTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if cellModel.cellType == .pageControl {
            return imagePageControlArry.count
        }else {
            return imageArry.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if cellModel.cellType == .pageControl {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NetFlixPageControlCollectionViewCell", for: indexPath) as! NetFlixPageControlCollectionViewCell
            cell.imagePageControl.image = UIImage(named: imagePageControlArry[indexPath.item])
            return cell
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NetflixCollectionViewCell", for: indexPath) as! NetflixCollectionViewCell
            cell.imagePopular.image = UIImage(named: imageArry[indexPath.item])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if cellModel.cellType == .pageControl {
            let width = collectionView.frame.size.width / 3
            return CGSize(width: width, height: 150)
        }else {
            let width = collectionView.frame.size.width
            return CGSize(width: width, height: 150)
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if cellModel.cellType == .pageControl {
            pageControl?.currentPage = indexPath.item
            print("IndexPath ----> \(indexPath.item)")
            print(" current Page: \(pageControl?.currentPage)")

        }
    }
}
