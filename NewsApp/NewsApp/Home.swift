//
//  ViewController.swift
//  NewsApp
//
//  Created by Shady Adel on 04/11/2024.
//

import UIKit

protocol showSuccessAlert: AnyObject {
    func showAlert()
}

class ViewController: UIViewController, showSuccessAlert {
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib.init(nibName: "NewsViewCell", bundle: nil), forCellWithReuseIdentifier: "NewsViewCell")
        
    }


    @IBAction func favsBtnClicked(_ sender: UIBarButtonItem) {
        let destVc = self.storyboard?.instantiateViewController(withIdentifier: "Favourites") as! Favourites
        
        self.navigationController?.pushViewController(destVc, animated: true)
    }
    
    func showAlert() {
        let alertController = UIAlertController(title: title, message: "added to favourites successfuly", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default,handler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
        print("backed")
    }
}



extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
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
        let width = (collectionView.bounds.width / 2) - 5
        return CGSize(width: width, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let destVc = self.storyboard?.instantiateViewController(withIdentifier: "Details") as! Details
        
        self.navigationController?.pushViewController(destVc, animated: true)
    }
    
}

