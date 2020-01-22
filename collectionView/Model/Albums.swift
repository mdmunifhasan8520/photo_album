//
//  AlbumBank.swift
//  collectionView
//
//  Created by Md Munif Hasan on 21/1/20.
//  Copyright © 2020 Md Munif Hasan. All rights reserved.
//

import UIKit

class Albums {
    
    //create an array of album object
    var list = [Album]()
    
    init() {
        //creating a quiz item and appending it to the list
/*
        let item = Album(id: 1, albumBGImage: UIImage(named: "Album 1")!, albumName: "Nature")
        
        //add the album to the list of album
        list.append(item)
        list.append(Album(id: 2, albumBGImage: UIImage(named: "Album 2")!, albumName: "Flower"))
        list.append(Album(id: 3, albumBGImage: UIImage(named: "Album 3")!, albumName: "Bird"))
        list.append(Album(id: 4, albumBGImage: UIImage(named: "Album 4")!, albumName: "Fish"))
        list.append(Album(id: 5, albumBGImage: UIImage(named: "Album 5")!, albumName: "Animal"))
        list.append(Album(id: 6, albumBGImage: UIImage(named: "Album 6")!, albumName: "Insects"))*/
        
        
        let item2 = Album(id: 1, albumBGImage: UIImage(named: "Album 1")!, albumName: "Nature",
                          photos: [UIImage(named: "Album 1")!,UIImage(named: "Album 2")!,UIImage(named: "Album 3")!])
        list.append(item2)
        list.append(Album(id: 2, albumBGImage: UIImage(named: "bird 1.png")!, albumName: "Birds", photos: [UIImage(named: "bird 1.png")!,UIImage(named: "bird 2.png")!]))
        list.append(Album(id: 3, albumBGImage: UIImage(named: "Fish 1")!, albumName: "Fish", photos: [UIImage(named: "Fish 1")!]))
        list.append(Album(id: 4, albumBGImage: UIImage(named: "Fish 1")!, albumName: "Fish", photos: [UIImage(named: "Fish 1")!]))
        list.append(Album(id: 5, albumBGImage: UIImage(named: "Fish 1")!, albumName: "Fish", photos: [UIImage(named: "Fish 1")!]))
        list.append(Album(id: 6, albumBGImage: UIImage(named: "Fish 1")!, albumName: "Fish", photos: [UIImage(named: "Fish 1")!]))
    }
}
