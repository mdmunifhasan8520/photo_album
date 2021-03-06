//
//  ViewController.swift
//  collectionView
//
//  Created by Md Munif Hasan on 17/10/19.
//  Copyright © 2019 Md Munif Hasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    //create a AlbumBank object
    let allAlbums = Albums()
    
    
    @IBOutlet weak var albumCollectionView: UICollectionView!
    @IBOutlet weak var photosCollectionView: UICollectionView!
    
    var userSelectedAlbum = [Int]()
//  var userSelectedPhotos = [Int]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photosCollectionView.allowsMultipleSelection = true
        
    }
}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    //MARK: collection view datasource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.photosCollectionView {
            //            if (userSelectedAlbum == [0]) {
            //                 return allAlbums.list[0].photos.count
            //            }
            for i in 0..<allAlbums.list.count {
                print("i\(i)")
                if (userSelectedAlbum == [i]) {
                    return allAlbums.list[i].photos.count
                }
            }
            return 0
        } else {
            return allAlbums.list.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.photosCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosCell", for: indexPath) as! PhotosCollectionViewCell
            cell.PhotosImageView.image = allAlbums.list[0].photos[indexPath.item]
            //            if (userSelectedAlbum == [0]) {
            //                cell.PhotosImageView.image = allAlbums.list[0].photos[indexPath.item]
            //            }
            for i in 0..<allAlbums.list.count {
                if (userSelectedAlbum == [i]) {
                    cell.PhotosImageView.image = allAlbums.list[i].photos[indexPath.item]
                    print(i)
                }
            }
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumCell", for: indexPath) as! AlbumCollectionViewCell
            cell.albumNameLabel.text = allAlbums.list[indexPath.item].albumName
            cell.albumFolderBGImage.image = allAlbums.list[indexPath.item].albumBGImage
            return cell
        }
    }
    //MARK: collection view delegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == self.photosCollectionView {
            let cell = collectionView.cellForItem(at: indexPath)

        } else {
            let cell = collectionView.cellForItem(at: indexPath)
            userSelectedAlbum = [indexPath.item]
//            print(userSelectedAlbum)
            updateUI()

        }
       
    //for push to next view controller
//        let vc = storyboard?.instantiateViewController(withIdentifier: "AlbumDetailViewController") as! AlbumDetailViewController
//
//        vc.albumImage = albumBGImage
//        self.navigationController?.pushViewController(vc, animated: true)
    }

    //Custom Function
    func updateUI() {
//
//        if (userSelectedAlbum == [0]) {
//            //print("hello")
//        } else if (userSelectedAlbum == [1]){
//            //print("Hi")
//        }
        self.photosCollectionView.reloadData()
        print("reload")
    }
}


extension ViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 5, bottom: 0, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.bounds.width
        return CGSize(width: collectionViewWidth/3 - 5, height: collectionViewWidth/3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}
