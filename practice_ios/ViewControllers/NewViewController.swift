//
//  NewViewController.swift
//  practice_ios
//
//  Created by Yagnik Bavishi on 01/03/22.
//

import UIKit

class NewViewController: ViewController{
   
    

    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet var thirdView: UIView!
    @IBOutlet weak var myTableView: UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.register(UINib(nibName: "IndexTableViewCell", bundle: nil), forCellReuseIdentifier: "IndexTableViewCell")

    }
    @IBAction func segmentedControlActionChanged(sender: AnyObject) {
//        switch(mySegmentedControl.selectedSegmentIndex)
//                              {
//                              case 0:
//                    secondView.isHidden = true
//                           firstView.isHidden = false
//                  //  thirdView.isHidden = true
//                   //return 100
//        
//                    case 1:
//          secondView.isHidden = false
//                 firstView.isHidden = true
//                    //thirdView.isHidden = true
//                case 2:
//        secondView.isHidden = true
//             firstView.isHidden = true
//                //thirdView.isHidden = false
//                default:
//                  break
//                }
            myTableView.reloadData()
      }
    
    
//    func numberOfRows(inSection section: Int) -> Int {
//        return 1    
//    }
    
//
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section-1"
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        switch(mySegmentedControl.selectedSegmentIndex)
                      {
                      case 0:
            secondView.isHidden = true
                   firstView.isHidden = false
            thirdView.isHidden = true
            return 100

            case 1:
  secondView.isHidden = false
         firstView.isHidden = true
            thirdView.isHidden = true
        case 2:
secondView.isHidden = true
     firstView.isHidden = true
        thirdView.isHidden = false
        default:
          break
        }
        return 0


    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {



        guard let cell = tableView.dequeueReusableCell(withIdentifier: "IndexTableViewCell") as? IndexTableViewCell else {
            return UITableViewCell()
        }

        switch(mySegmentedControl.selectedSegmentIndex)
        {
        case 0:
            cell.lbIndex.text = "Label: \(indexPath.row)"
            
            break

        default:
            break

        }

           return cell

    

    }
    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 10
//      //  var returnValue = 0
               
//               switch(mySegmentedControl.selectedSegmentIndex)
//               {
//               case 0:
//                   returnValue = privateList.count
//                   break
//               case 1:
//                   returnValue = friendsAndFamily.count
//                   break
//
//               case 2:
//                   returnValue = publicList.count
//                   break
//
//               default:
//                   break
//
//               }
//
//               return returnValue
//    }
    
  //  }

    

