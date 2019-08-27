//
//  RegisterPageViewController.swift
//  login
//
//  Created by MDL on 10/10/17.
//  Copyright © 2017 MDL. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userMobileNumberTextField: UITextField!
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var userRepeatPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func registerButtonTapped(_ sender: Any) {
        
        let userName = userNameTextField.text;
        let userMobile = userMobileNumberTextField.text;
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = userRepeatPasswordTextField.text;
        
        //check for empty field
        if(userName!.isEmpty || userMobile!.isEmpty || userEmail!.isEmpty || (userPassword?.isEmpty)! || userRepeatPassword!.isEmpty)
        {
            diplayMyAlertMessage(userMessage: "All fields are required to be filled!");
            return;
        }
        
        
        //check if password match
        if(userPassword != userRepeatPassword){
            
            diplayMyAlertMessage(userMessage: "Passwords do not match!");
            return;
        }
        
        //store data
        UserDefaults.standard.set(userName, forKey:"userName");
        UserDefaults.standard.set(userMobile, forKey:"userMobile");
        UserDefaults.standard.set(userEmail, forKey:"userEmail");
        UserDefaults.standard.set(userPassword, forKey:"userPassword");
        UserDefaults.standard.synchronize();
    
        //display alert message
        let myAlert = UIAlertController(title:"Alert", message:"Registration is successful,Thank you!", preferredStyle:UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title:"ok", style:UIAlertActionStyle.default)
        {action in
            self.dismiss(animated:true, completion:nil);
        }
        
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);
    
    }
    func diplayMyAlertMessage(userMessage:String){
        
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle:UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title:"ok", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);
        
        
    }

}
