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
        
        
        let item2 = Album(id: 0, albumBGImage: UIImage(named: "Abra")!, albumName: "Abra",
                          photos: [UIImage(named: "Abra")!,UIImage(named: "Articuno")!,UIImage(named: "Charmander")!,UIImage(named: "Cloyster")!,UIImage(named: "Chansey")!,UIImage(named: "Butterfree")!,UIImage(named: "Clefable")!,UIImage(named: "Blastoise")!])
        list.append(item2)
        list.append(Album(id: 1, albumBGImage: UIImage(named: "Aerodactyl")!, albumName: "Aerodactyl", photos: [UIImage(named: "Aerodactyl")!,UIImage(named: "Dewgong")!]))
        list.append(Album(id: 2, albumBGImage: UIImage(named: "Arbok")!, albumName: "Arbok", photos: [UIImage(named: "Arbok")!,UIImage(named: "Blastoise")!,UIImage(named: "Blastoise")!,UIImage(named: "Blastoise")!]))
        list.append(Album(id: 3, albumBGImage: UIImage(named: "Articuno")!, albumName: "Articuno", photos: [UIImage(named: "Articuno")!,UIImage(named: "Blastoise")!]))
        list.append(Album(id: 5, albumBGImage: UIImage(named: "Beedrill")!, albumName: "Beedrill", photos: [UIImage(named: "Beedrill")!]))
        list.append(Album(id: 6, albumBGImage: UIImage(named: "Bellsprout")!, albumName: "Bellsprout", photos: [UIImage(named: "Bellsprout")!]))
        list.append(Album(id: 7, albumBGImage: UIImage(named: "Blastoise")!, albumName: "Blastoise", photos: [UIImage(named: "Blastoise")!]))
        list.append(Album(id: 8, albumBGImage: UIImage(named: "Bulbasaur")!, albumName: "Bulbasaur", photos: [UIImage(named: "Bulbasaur")!]))
        list.append(Album(id: 9, albumBGImage: UIImage(named: "Butterfree")!, albumName: "Butterfree", photos: [UIImage(named: "Butterfree")!]))
        list.append(Album(id: 10, albumBGImage: UIImage(named: "Caterpie")!, albumName: "Caterpie", photos: [UIImage(named: "Caterpie")!]))
        list.append(Album(id: 11, albumBGImage: UIImage(named: "Chansey")!, albumName: "Chansey", photos: [UIImage(named: "Chansey")!]))
        list.append(Album(id: 12, albumBGImage: UIImage(named: "Charizard")!, albumName: "Charizard", photos: [UIImage(named: "Charizard")!]))
        list.append(Album(id: 13, albumBGImage: UIImage(named: "Charmander")!, albumName: "Charmander", photos: [UIImage(named: "Charmander")!]))
        list.append(Album(id: 14, albumBGImage: UIImage(named: "Charmeleon")!, albumName: "Charmeleon", photos: [UIImage(named: "Charmeleon")!]))
        list.append(Album(id: 15, albumBGImage: UIImage(named: "Clefable")!, albumName: "Clefable", photos: [UIImage(named: "Clefable")!]))
        list.append(Album(id: 16, albumBGImage: UIImage(named: "Clefairy")!, albumName: "Clefairy", photos: [UIImage(named: "Clefairy")!]))
        list.append(Album(id: 17, albumBGImage: UIImage(named: "Cloyster")!, albumName: "Cloyster", photos: [UIImage(named: "Cloyster")!]))
        list.append(Album(id: 18, albumBGImage: UIImage(named: "Dewgong")!, albumName: "Dewgong", photos: [UIImage(named: "Dewgong")!]))
    }
}
