import UIKit



class NavigationViewController: UIViewController, SecondViewControllerDetegate {
    
    //MARK: - Outlets
    @IBOutlet weak var lblMessageFormSecond: UILabel!
    @IBOutlet weak var tfMessage: UITextField!
    
    //MARK: - Variables
    var firstName = ""

    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    //MARK: - Actions
//    @IBAction func goToFirstVC(segue: UIStoryboardSegue) {
//
//    }
    
    @IBAction func goToSecondVC(sender: UIButton) {
        
    }

}// End of class

//MARK: - override Functions
extension NavigationViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let textFieldmessage = tfMessage.text ?? ""
        if segue.identifier == "GoToSecondVC" {
            if let destinationVC = segue.destination as? SecondViewController {
                destinationVC.message = textFieldmessage
                destinationVC.delegate = self
            }

        }
    }
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        
    }
    func dataPassing(_ message: String) {
        lblMessageFormSecond.text = "Message: - " + firstName
        lblMessageFormSecond.text = "Message: - " + firstName

    }
    
}// End of class
