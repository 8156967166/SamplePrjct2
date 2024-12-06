//
//  LoginViewController.swift
//  SamplePrjct
//
//  Created by Anisha on 08/05/23.
//

import UIKit
import AZDialogView

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var textFieldpassword: UITextField!
    @IBOutlet weak var textFieldUsername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonLogin.layer.cornerRadius = 6
        
    }
    
    @IBAction func buttonActionLogin(_ sender: UIButton) {
        if textFieldUsername.text == "" {
            let dialog = AZDialogViewController(title: "Alert", message: "Please Enter the Username")
            dialog.addAction(AZDialogAction(title: "Ok"){ (dialog) -> (Void) in
                self.dismiss(animated: true, completion: nil)
            })
//            dialog.allowDragGesture = false
            dialog.imageHandler = { (imageView) in
                imageView.image = UIImage(named: "login")
                imageView.contentMode = .scaleAspectFill
                return true
            }
            self.present(dialog, animated: false, completion: nil)
            
        }else {
            print("Success")
        }
    }
}
