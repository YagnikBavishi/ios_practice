//
//  CollectionViewController.swift
//  practice_ios
//
//  Created by Yagnik Bavishi on 08/03/22.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let reuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
           func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
                    //let collectionWidth = collectionView.bounds.width
        
                    return CGSize(width: 300 , height: 300)
        
                }
        
    }

    
}
extension CollectionViewController: UICollectionViewDataSource {
    
         func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
             return 10
         }
      
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as UICollectionViewCell
//        cell.imgForCollection?.image = UIImage(named: "download (1)")
//        cell.lblDecription.text = "Hello"
        return cell
    }
    
}// End of Extension

//extension UIComponetsViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//            let collectionWidth = collectionView.bounds.width
//
//            return CGSize(width: 100 , height: 100)
//
//        }
//
//
//        }
//}
