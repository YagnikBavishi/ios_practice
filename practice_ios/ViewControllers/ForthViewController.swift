import UIKit

class ForthViewController: UIViewController {
 var a = 10
    var b = 20
    var c = 30
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
