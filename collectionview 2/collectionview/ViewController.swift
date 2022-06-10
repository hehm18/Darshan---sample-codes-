//
//  ViewController.swift
//  collectionview
//
//  Created by CEPL on 06/06/22.
//

import UIKit




class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var image = [UIImage]()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "viewCell", for: indexPath) as! CollectionViewCell
        
        cell.imageCell.image = image[indexPath.item]
        return cell
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
       image = [
                UIImage(named: "Helmet")!,
                UIImage(named: "Helmet")!,
                UIImage(named: "Helmet")!,
                UIImage(named: "Helmet")!,
                UIImage(named: "Helmet")!,
                UIImage(named: "Helmet")!
                ]
        
        
    }


}

