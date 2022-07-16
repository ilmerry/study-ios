//
//  MusicCollectionViewCell.swift
//  ThirdSeminar
//
//  Created by 최은형 on 2022/07/16.
//

import UIKit

class MusicCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    static var identifier = "MusicCollectionViewCell"
    
    func setData(imageName: String,
                 title: String,
                 subtitle: String)
    {
        if let image = UIImage(named: imageName)
        {
            albumImageView.image = image
        }
        titleLabel.text = title
        subtitleLabel.text = subtitle
    }
}
