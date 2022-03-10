//
//  UIComponetsViewController.swift
//  practice_ios
//
//  Created by Yagnik Bavishi on 28/02/22.
//

import UIKit

class UIComponetsViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var btSubmit: UIButton!
    @IBOutlet weak var tvBio: UITextView!
    @IBOutlet weak var tfName: TextField!
    @IBOutlet weak var ageSilder: UISlider!
    @IBOutlet weak var uiSwitch: UISwitch!
    @IBOutlet weak var lbHelloWord: UILabel!
    @IBOutlet weak var lbAge: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    //MARK: - Variable Declaration
    var didTap = true
    let progress = Progress(totalUnitCount: 5)
    
    //MARK: - view didLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        addValuesForOutLet()
    }

    //MARK: - IBActions
    
    @IBAction func btnSubmitAction(_ sender: UIButton) {
      //  btSubmit.addTarget(self, action: #selector(tapforNewNavigation), for: .touchUpInside)
        //progressView.setProgress(1, animated: true)
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
//            self.progress.completedUnitCount += 1
//            let progrsssFloat = Float(self.progress.fractionCompleted)
//            print(self.progress.fractionCompleted)
//            self.progressView.setProgress(progrsssFloat, animated: true)
//            if self.progress.isFinished == true {
//                timer.invalidate()
//                return
//            }
//        }
        
        let story = UIStoryboard(name: "UIComponetsStoryboard", bundle: nil)
              let controller = story.instantiateViewController(identifier: "NewCollectionViewController") as! NewCollectionViewController
              let navigation = UINavigationController(rootViewController: controller)
              self.view.addSubview(navigation.view)
              self.addChild(navigation)
              navigation.didMove(toParent: self)
      
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        lbAge.text = "Age: \(Int(sender.value))"
    }
    
    @IBAction func changeTheBackgroundColor(_ sender: UISwitch) {
        if uiSwitch.isOn {
            view.backgroundColor = .gray
        } else {
            view.backgroundColor = .white
        }
    }
    
    @IBAction func stepperWithTextFiled(_ sender: UIStepper) {
        lbAge.text = "Stepper: \(Int(sender.value))"
    }
    
}// End of Class


// MARK: - File Private Functions
extension UIComponetsViewController {
    
    func  addValuesForOutLet() {
        lbHelloWord.text = "Yagnik"
        let tap = UITapGestureRecognizer(target: self, action: #selector(clickTheLable(_:)))
        lbHelloWord.isUserInteractionEnabled = true
        lbHelloWord.addGestureRecognizer(tap)
        
        btSubmit.layer.cornerRadius = 5
        
        tvBio.text = "Enter Your Bio"
        tvBio.layer.borderColor = UIColor.black.cgColor
        tvBio.layer.borderWidth = 2
        tvBio.addDoneButtonOnKeyboard()
    }
    
    @objc func clickTheLable(_ sender: Any) {
           if(didTap){
               lbHelloWord.backgroundColor = UIColor.brown
               didTap = false
           } else {
               lbHelloWord.backgroundColor = UIColor.white
               didTap = true
           }
    }
}//End of Extension

//MARK: -  UITextFieldDelegate
extension UIComponetsViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("TextField did begin editing method called")
    }
     
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("TextField should begin editing method called")
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("TextField should clear method called")
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("TextField should end editing method called")
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("While entering the characters this method gets called")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextField should return method called")
        textField.resignFirstResponder()
        return true
    }
    
}// End of Extension

//MARK: - UITextViewDelegate
extension UITextView: UITextViewDelegate {
    
    func addDoneButtonOnKeyboard() {
           let keyboardToolbar = UIToolbar()
           keyboardToolbar.sizeToFit()
           let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
               target: nil, action: nil)
           let doneButton = UIBarButtonItem(barButtonSystemItem: .done,
               target: self, action: #selector(resignFirstResponder))
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel,
            target: self, action: #selector(resignFirstResponder))
           keyboardToolbar.items = [cancelButton,flexibleSpace, doneButton]
           self.inputAccessoryView = keyboardToolbar
       }
    
}// End of Extension


