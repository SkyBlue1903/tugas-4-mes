//
//  LoginViewController.swift
//  Tugas 4
//
//  Created by Erlangga Anugrah Arifin on 02/11/22.
//

import UIKit
import Toast

class LoginViewController: UIViewController {
    
    var profile: Person?
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
        
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
        if (usernameTextField.text! == "") || (passwordTextField.text! == "") {
            print("TOAST!!")
            let toast = Toast.text("Can't login", subtitle: "Please fill the form correctly!")
            toast.show()
        } else {
            profile = Person(name: usernameTextField.text!, password: passwordTextField.text!)
            performSegue(withIdentifier: "moveToProfile", sender: nil)
        }
            
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToProfile" {
            let destination = segue.destination as! ProfileViewController
            destination.profile = self.profile
        }
    }
}
