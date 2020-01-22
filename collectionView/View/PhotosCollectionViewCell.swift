//
//  AnswerCollectionViewCell.swift
//  collectionView
//
//  Created by Md Munif Hasan on 17/10/19.
//  Copyright © 2019 Md Munif Hasan. All rights reserved.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photosNameLabel: UILabel!
    
    @IBOutlet weak var albumPhotosImageView: UIImageView!
    
    @IBOutlet weak var selectedImageIconView: UIImageView!
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                //backgroundColor = UIColor.red
                //photosNameLabel.text = "selected"
                selectedImageIconView.isHidden = false
                selectedImageIconView.image = UIImage(named: "CheckmarkIcon")
                albumPhotosImageView.alpha = 0.5
            }
            else {
                //backgroundColor = UIColor.purple
                selectedImageIconView.isHidden = true
                albumPhotosImageView.alpha = 1
            }
        }
    }
}
