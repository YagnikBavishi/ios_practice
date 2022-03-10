import UIKit

class ForthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func popToFirstViewController(_ sender: UIButton) {
//        self.navigationController?.popToRootViewController(animated: true)
//        self.dismiss(animated: true, completion: nil)
       // let navigationController = self.presentingViewController as? UINavigationController
            
        //self.navigationController?.popToRootViewController(animated: true)
            
    
        if self.presentingViewController != nil {
            self.dismiss(animated: false, completion: {
               self.navigationController?.popToRootViewController(animated: true)
            })
        }
        else {
            self.navigationController?.popToRootViewController(animated: true)
        }
    
    }
}
