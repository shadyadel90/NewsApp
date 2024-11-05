//
//  NewsViewCell.swift
//  NewsApp
//
//  Created by Shady Adel on 04/11/2024.
//

import UIKit

class NewsViewCell: UICollectionViewCell {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblAuthor: UILabel!
    
 
    @IBOutlet weak var lblDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        img.layer.cornerRadius = 20
    }

}
