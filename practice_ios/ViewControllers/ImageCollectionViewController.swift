//
//  ImageCollectionViewController.swift
//  practice_ios
//
//  Created by Yagnik Bavishi on 02/03/22.
//

import UIKit


class ImageCollectionViewController: UICollectionViewController {

    let data: [String] = ["one","two","three","four","five","six","seven"]
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//       var cell =  UICollectionViewCell()
//        if let name = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)as? CollectionViewCell
//        {
//            name.configuer(with: data[indexPath.row])
//            cell = name
//        }
//        
//        return cell
//    }

   


}
