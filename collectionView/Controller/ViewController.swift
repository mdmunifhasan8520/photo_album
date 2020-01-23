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
//    var userSelectedPhotos = [Int]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photosCollectionView.allowsMultipleSelection = true
        
    }
}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    //MARK: collection view datasource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.photosCollectionView {
            if (userSelectedAlbum == [0]) {
                 return allAlbums.list[0].photos.count
            } else if (userSelectedAlbum == [1]){
                 return allAlbums.list[1].photos.count
            } else if (userSelectedAlbum == [2]) {
                return allAlbums.list[2].photos.count
            }
            else if (userSelectedAlbum == [3]) {
                return allAlbums.list[3].photos.count
            }
            else if (userSelectedAlbum == [4]) {
                return allAlbums.list[4].photos.count
            }
            else if (userSelectedAlbum == [5]) {
                return allAlbums.list[5].photos.count
            }
            else if (userSelectedAlbum == [6]) {
                return allAlbums.list[6].photos.count
            }
            else if (userSelectedAlbum == [7]) {
                return allAlbums.list[7].photos.count
            }
            else if (userSelectedAlbum == [8]) {
                return allAlbums.list[8].photos.count
            }
            else if (userSelectedAlbum == [9]) {
                return allAlbums.list[9].photos.count
            }
            else if (userSelectedAlbum == [10]) {
                return allAlbums.list[10].photos.count
            }
            else if (userSelectedAlbum == [11]) {
                return allAlbums.list[11].photos.count
            } else if (userSelectedAlbum == [12]) {
                return allAlbums.list[12].photos.count
            } else if (userSelectedAlbum == [13]) {
                return allAlbums.list[13].photos.count
            }
            else if (userSelectedAlbum == [14]) {
                return allAlbums.list[14].photos.count
            }
            else if (userSelectedAlbum == [15]) {
                return allAlbums.list[15].photos.count
            }
            else if (userSelectedAlbum == [16]) {
                return allAlbums.list[15].photos.count
            }
            else if (userSelectedAlbum == [17]) {
                return allAlbums.list[15].photos.count
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
            
            if (userSelectedAlbum == [0]) {
                cell.PhotosImageView.image = allAlbums.list[0].photos[indexPath.item]
            } else if (userSelectedAlbum == [1]){
                //cell.photosNameLabel.text = secondalbumName[indexPath.item]
                cell.PhotosImageView.image = allAlbums.list[1].photos[indexPath.item]
            } else if (userSelectedAlbum == [2]){
                cell.PhotosImageView.image = allAlbums.list[2].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [3]){
                cell.PhotosImageView.image = allAlbums.list[3].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [4]){
                cell.PhotosImageView.image = allAlbums.list[4].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [5]){
                cell.PhotosImageView.image = allAlbums.list[5].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [6]){
                cell.PhotosImageView.image = allAlbums.list[6].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [7]){
                cell.PhotosImageView.image = allAlbums.list[7].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [8]){
                cell.PhotosImageView.image = allAlbums.list[8].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [9]){
                cell.PhotosImageView.image = allAlbums.list[9].photos[indexPath.item]
            }else if (userSelectedAlbum == [10]){
                cell.PhotosImageView.image = allAlbums.list[10].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [11]){
                cell.PhotosImageView.image = allAlbums.list[11].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [12]){
                cell.PhotosImageView.image = allAlbums.list[12].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [13]){
                cell.PhotosImageView.image = allAlbums.list[13].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [14]){
                cell.PhotosImageView.image = allAlbums.list[14].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [15]){
                cell.PhotosImageView.image = allAlbums.list[15].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [16]){
                cell.PhotosImageView.image = allAlbums.list[16].photos[indexPath.item]
            }
            else if (userSelectedAlbum == [17]){
                cell.PhotosImageView.image = allAlbums.list[17].photos[indexPath.item]
            }
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumCell", for: indexPath) as! AlbumCollectionViewCell
            cell.albumNameLabel.text = allAlbums.list[indexPath.item].albumName
            cell.albumFolderBGImage.image = allAlbums.list[indexPath.item].albumBGImage
//            if(indexPath.item == 0 && cell.isViewFirstTimeLoadForFirstCell == true) {
//                cell.selectedAlbumIconImageView.image = UIImage(named: "album_selected_icon")
//                cell.albumFolderBGImage.isHidden = true
//                cell.albumNameLabel.isHidden = true
//            } else if (indexPath.item == 0 && cell.isViewFirstTimeLoadForFirstCell == false) {
//                cell.selectedAlbumIconImageView.isHidden = true
//                cell.albumNameLabel.text = allAlbums.list[indexPath.item].albumName
//                cell.albumFolderBGImage.image = allAlbums.list[indexPath.item].albumBGImage
//            }
            
            return cell
        }
       
    }
    //MARK: collection view delegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == self.photosCollectionView {
            let cell = collectionView.cellForItem(at: indexPath)
//            let userSelectedPhotos = allAlbums.list[0].photos[indexPath.item]!
//            print("userSelectedPhotos \(userSelectedPhotos)")
            

        } else {
            let cell = collectionView.cellForItem(at: indexPath)
            userSelectedAlbum = [indexPath.item]
            print(userSelectedAlbum)
            updateUI()

        }
       
    //for push to next view controller
//        let vc = storyboard?.instantiateViewController(withIdentifier: "AlbumDetailViewController") as! AlbumDetailViewController
//
//        vc.albumImage = albumBGImage
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
     
    }
    
    

    //Custom Function
    func updateUI() {
    
        if (userSelectedAlbum == [0]) {
            //print("hello")
        } else if (userSelectedAlbum == [1]){
            //print("Hi")
        } 
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
        return 0
    }
}
