//
//  LoginViewController.swift
//  login
//
//  Created by MDL on 10/10/17.
//  Copyright © 2017 MDL. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func loginButtonTapped(_ sender: Any) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        
        let userEmailStored = UserDefaults.standard.string(forKey:"userEmail");
        let userPasswordStored = UserDefaults.standard.string(forKey:"userPassword");
    
    if(userEmailStored == userEmail){
    
        if(userPasswordStored == userPassword){
            //login is successful
            UserDefaults.standard.set(true, forKey:"isUserLoggedIn");
            UserDefaults.standard.synchronize();
            self.dismiss(animated:true, completion:nil);
        }
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

