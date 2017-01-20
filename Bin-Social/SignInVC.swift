//
//  ViewController.swift
//  Bin-Social
//
//  Created by Vinod Kumar on 12/20/16.
//  Copyright © 2016 self. All rights reserved.
//

import UIKit
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fbBtn(_ sender: Any) {
        
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("Vinnu: Authentication is Faild due to \(error)")
            } else if result?.isCancelled == true {
                print("Vinnu: Authentication is cancelled by user")
            } else {
                print("Vinnu: Successfully authenticated")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
        
    }
    
    func firebaseAuth(_ credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("Vinnu: Firebase Authentication is faild due to \(error)")
            } else {
                print("Vinnu: Firebase is successfully authenticated")
            }
        })
    }

}

