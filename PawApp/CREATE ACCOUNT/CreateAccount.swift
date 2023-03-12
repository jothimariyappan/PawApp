//
//  CreateAccount.swift
//  PawApp
//
//  Created by Jo on 12/01/23.
//

import UIKit

class CreateAccount: UIViewController {
    
    @IBOutlet var txtUsername: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var txtCpassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    // MARK: - Navigation
    
    
    @IBAction func btnSigin(_ sender: UIButton) {
        let Personalize = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Personalize") as! Personalize
        
        self.navigationController?.pushViewController(Personalize, animated: true)
        
        
    }
    
    
}
