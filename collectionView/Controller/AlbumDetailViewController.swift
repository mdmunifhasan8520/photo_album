//
//  AlbumDetailViewController.swift
//  collectionView
//
//  Created by Md Munif Hasan on 20/1/20.
//  Copyright © 2020 Md Munif Hasan. All rights reserved.
//

import UIKit

class AlbumDetailViewController: UIViewController {
    @IBOutlet weak var albumDetail: UICollectionView!
    
    var albumImage = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(albumImage)
        // Do any additional setup after loading the view.
    }
}
extension AlbumDetailViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return albumImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumImageCell", for: indexPath) as! AlbumImageCollectionViewCell
        cell.albumImageNameLabel.text = albumImage[indexPath.item]
        cell.albumImage.image = UIImage(named: albumImage[indexPath.item])
        
        return cell
    }
    

}

