//
//  Expt7TableViewCell.swift
//  Expt7
//
//  Created by CEPL on 08/06/22.
//

import UIKit

class Expt7TableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var photo = [UIImage]()

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        photo = [
                 UIImage(named: "Rps")!,
                 UIImage(named: "Teams")!,
                 UIImage(named: "Ipl")!,
                 UIImage(named: "Rps")!,
                 UIImage(named: "Teams")!,
                 UIImage(named: "Ipl")!,
                 UIImage(named: "Rps")!,
                 UIImage(named: "Teams")!,
                 UIImage(named: "Ipl")!,
                 UIImage(named: "Rps")!,
                 UIImage(named: "Teams")!,
                 UIImage(named: "Ipl")!
                ]
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colltnCell", for: indexPath) as! Expt7CollectionViewCell
        
        cell.imgView.image = photo[indexPath.item]
        return cell
        
    }
}
