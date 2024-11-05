//
//  Favourites.swift
//  NewsApp
//
//  Created by Shady Adel on 05/11/2024.
//

import UIKit

class Favourites: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        collectionView.register(UINib.init(nibName: "NewsViewCell", bundle: nil), forCellWithReuseIdentifier: "NewsViewCell")
    }

}

extension Favourites: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsViewCell", for: indexPath) as! NewsViewCell
        
        //cell.img.image = UIImage(systemName: "pencil")
        
        cell.lblTitle.text = String(indexPath.row)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width / 2) - 10
        return CGSize(width: width, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let destVc = self.storyboard?.instantiateViewController(withIdentifier: "Details") as! Details
        
        self.navigationController?.pushViewController(destVc, animated: true)
    }
    
}
