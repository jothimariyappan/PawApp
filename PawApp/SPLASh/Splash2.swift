//
//  Splash2.swift
//  PawApp
//
//  Created by Jo on 11/01/23.
//

import UIKit

class Splash2: UIViewController {

    @IBOutlet var btnLOGIN: UIButton!
    
    @IBOutlet var btnSIGNUP: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

  
    // MARK: - Navigation

    @IBAction func btnLogin(_ sender: UIButton) {
        let Login = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Login") as! Login
        
        self.navigationController?.pushViewController(Login, animated: true)
        
    }
    
    @IBAction func btnSignup(_ sender: UIButton) {
        
        let CreateAccount = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CreateAccount")as! CreateAccount
        
        self.navigationController?.pushViewController(CreateAccount, animated: true)
    }
    

}
