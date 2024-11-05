//
//  Details.swift
//  NewsApp
//
//  Created by Shady Adel on 05/11/2024.
//

import UIKit

class Details: UIViewController {
    
    weak var delegate: showSuccessAlert?
  
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblAuthor: UILabel!
    
    @IBOutlet weak var lblDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func addToFavBtnClicked(_ sender: UIButton) {
     
       
       delegate?.showAlert()

        self.navigationController?.popViewController(animated: true)
       
    }
    
   
}

