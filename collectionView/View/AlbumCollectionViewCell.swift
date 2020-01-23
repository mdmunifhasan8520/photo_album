//
//  CollectionViewCell.swift
//  collectionView
//
//  Created by Md Munif Hasan on 17/10/19.
//  Copyright © 2019 Md Munif Hasan. All rights reserved.
//

import UIKit

class AlbumCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var albumNameLabel: UILabel!
    
    @IBOutlet weak var albumFolderBGImage: UIImageView!
    
    @IBOutlet weak var albumFrame: UIImageView!
    @IBOutlet weak var selectedAlbumIconImageView: UIImageView!
    var isViewFirstTimeLoadForFirstCell = true
    
    override var isSelected: Bool {
        didSet {
            if self.isSelected {
                //backgroundColor = UIColor.red
                //photosNameLabel.text = "selected"
                selectedAlbumIconImageView.isHidden = false
                selectedAlbumIconImageView.image = UIImage(named: "album_selected_icon")
                albumFolderBGImage.alpha = 0
                albumNameLabel.alpha = 0
                isViewFirstTimeLoadForFirstCell = false
                albumFrame.alpha = 0
            }
            else {
                //backgroundColor = UIColor.purple
                selectedAlbumIconImageView.isHidden = true
                albumFolderBGImage.alpha = 1
                albumNameLabel.alpha = 1
                albumFrame.alpha = 1
            }
        }
    }
}
