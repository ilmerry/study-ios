//
//  ProfileCollectionViewCell.swift
//  Instagram
//
//  Created by 최은형 on 2022/07/22.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {
    static let identifier = "ProfileCollectionViewCell"
    
    @IBOutlet weak var profileImageView: UIImageView!

    @IBOutlet weak var addProfileImageView: UIImageView!
    
    @IBOutlet weak var editProfileButton: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupAttribute()
    }
    
    private func setupAttribute() {
        profileImageView.layer.cornerRadius = 88 / 2
        addProfileImageView.layer.cornerRadius = 24 / 2
        
        editProfileButton.layer.cornerRadius = 5
        editProfileButton.layer.borderColor = UIColor.lightGray.cgColor
        editProfileButton.layer.borderWidth = 1
    }
}
