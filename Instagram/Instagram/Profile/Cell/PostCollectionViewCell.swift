//
//  PostCollectionViewCell.swift
//  Instagram
//
//  Created by 최은형 on 2022/07/22.
//

import UIKit

class PostCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var postImageView: UIImageView!
    
    static let identifier = "PostCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        // setupData()
    }
    
    func setupData() {
        
    }
}
