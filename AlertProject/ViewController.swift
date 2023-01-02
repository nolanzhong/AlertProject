//
//  ViewController.swift
//  AlertProject
//
//  Created by Nolan Zhong on 1/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var password2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        // creating an alert message
        /*
        let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            // button clicked what done when clicking
            print("button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
         */
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username Missing")
        }
        else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password Missing")
        }
        else if passwordText.text != password2Text.text {
            makeAlert(titleInput: "Error", messageInput: "Passwords Different")
        }
        else {
            makeAlert(titleInput: "Success", messageInput: "User OK")
        }
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

