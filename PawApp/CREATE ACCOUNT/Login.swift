//
//  Login.swift
//  PawApp
//
//  Created by Jo on 12/01/23.
//

import UIKit

class Login: UIViewController {
    // MARK: - OUTLETS
    @IBOutlet var txtUserName: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - Navigation
    
    @IBAction func btnLogin(_ sender: UIButton) {
        let tabbar = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Tabbar") as! Tabbar
        
        self.navigationController?.pushViewController(tabbar, animated: true)
    }
    
    @IBAction func btnForgetpswd(_ sender: UIButton) {
    }
    
}
