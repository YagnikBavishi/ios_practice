import UIKit

protocol SecondViewControllerDetegate {
    func dataPassing(_ message: String)
}

class SecondViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var tfMessageSecondToFirst: UITextField!
    
    //MARK: - Variables
    var message = ""
    var delegate: SecondViewControllerDetegate?

    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        lblMessage.text = "Message: - " + message

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    //MARK: - Actions
    @IBAction func goBack(_ sender: UIButton) {
        let textFieldmessage = tfMessageSecondToFirst?.text ?? ""
//        if let previousViewController = self.presentingViewController as? NavigationViewController {
//            previousViewController.firstName = textFieldmessage
//        }
        delegate?.dataPassing(textFieldmessage)

        navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
}
