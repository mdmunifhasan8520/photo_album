//
//  Album.swift
//  collectionView
//
//  Created by Md Munif Hasan on 21/1/20.
//  Copyright © 2020 Md Munif Hasan. All rights reserved.
//

import UIKit

class Album {
    //create properties
    let id: Int
    let albumBGImage: UIImage!
    let albumName: String
    let photos: [UIImage!]
   
   
    //initialize properties
    init(id: Int, albumBGImage: UIImage, albumName:String, photos:[UIImage]) {
        self.id = id
        self.albumBGImage = albumBGImage
        self.albumName = albumName
        self.photos = photos
        
    }
}
