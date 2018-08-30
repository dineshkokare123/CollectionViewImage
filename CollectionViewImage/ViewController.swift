//
//  ViewController.swift
//  CollectionViewImage
//
//  Created by Student P_10 on 29/08/18.
//  Copyright © 2018 priya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    let ImageArray = ["Cosmos01","Cosmos02","Cosmos03","Cosmos04","Cosmos05","Cosmos01","Cosmos02","Cosmos03","Cosmos04","Cosmos05","Cosmos01","Cosmos02","Cosmos03","Cosmos04","Cosmos05","Cosmos01","Cosmos02","Cosmos03","Cosmos04","Cosmos05","Cosmos01","Cosmos02","Cosmos03","Cosmos04","Cosmos05","Cosmos01","Cosmos02","Cosmos03","Cosmos04","Cosmos05"]
    
    fileprivate let numberOfItems = 5
    fileprivate let Insetes = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
    @IBOutlet weak var mycollectionview: UICollectionView!
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     return ImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.myimageview.image = UIImage(named:ImageArray[indexPath.row])
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        let cell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.backgroundColor = UIColor.lightGray
        print("you have selected \(ImageArray[indexPath.row])")
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return Insetes.left
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return Insetes
    
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let totalspaces = Insetes.left + Insetes.right+(CGFloat(numberOfItems - 1) * Insetes.left )
        let totalwidth = mycollectionview.bounds.width - totalspaces
        let width = totalwidth/CGFloat(numberOfItems)
        let height = width
        return CGSize(width: width, height: height)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

