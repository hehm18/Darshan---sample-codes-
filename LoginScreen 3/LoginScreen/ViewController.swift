//
//  ViewController.swift
//  LoginScreen
//
//  Created by CEPL on 08/06/22.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var passTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTf.delegate = self
        passTf.delegate = self
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.emailTf.resignFirstResponder()
        self.passTf.resignFirstResponder()
        return true
        
    }
        
    @IBAction func iftapLogin(_ sender: Any) {
        
        if let emailText = self.emailTf.text, emailText.isEmpty {
            
            let alert = UIAlertController(title: "ALERT", message: "Email id is empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true) {
                return
            }
        }
        
        else if let passcodeText = self.passTf.text, passcodeText.isEmpty {
            
            let alert = UIAlertController(title: "ALERT", message: "Passcode is Empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true) {
                return
            }
            
        }
        let email = validEmail(testStr: emailTf.text!)
        if email == false {
            showAlert()
            emailTf.text = ""
        }
        
    }
    
    func validEmail(testStr: String) -> Bool {
        let emailFormat = "[A-Z0-9Aa-z._%+-]+@[A-Za-z0-9.-]\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailTest.evaluate(with: testStr)
    
        
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Alert", message: "Enter Valid Email Id....", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

