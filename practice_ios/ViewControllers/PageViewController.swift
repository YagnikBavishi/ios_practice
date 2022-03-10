//
//  PageViewController.swift
//  practice_ios
//
//  Created by Yagnik Bavishi on 01/03/22.
//

import UIKit

class PageViewController: UIPageViewController {
    
    lazy var vcList:[UIViewController] = {
        let storyboard = UIStoryboard(name: "PageStoryboard", bundle: nil)
        let firstVC = storyboard.instantiateViewController(withIdentifier:"BlueViewController")
        let secondVC = storyboard.instantiateViewController(withIdentifier: "RedViewController")
          
        return [firstVC, secondVC]
          
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
             if let vc = vcList.first{
                 self.setViewControllers([vc], direction: .forward, animated: true, completion: nil)
             }
        
    }
//    func viewControllerWith(name: String) -> UIViewController {
//        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
//    }
    

}
extension PageViewController : UIPageViewControllerDataSource{
      
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = vcList.lastIndex(of: viewController) else { return nil }
        let previousIndex = index - 1
        guard previousIndex >= 0 else {return nil}
        guard previousIndex < vcList.count else {return nil}
        return vcList[previousIndex]
          
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    guard let index = vcList.lastIndex(of: viewController) else { return nil }
        let previousIndex = index + 1
        guard previousIndex >= 0 else {return nil}
        guard previousIndex < vcList.count else {return nil}
        return vcList[previousIndex]
  
  
    }
}
