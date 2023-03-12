//
//  Splash.swift
//  PawApp
//
//  Created by Jo on 11/01/23.
//

import UIKit

class Splash: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    @IBAction func btnNext(_ sender: UIButton) {
        
        let Splash2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Splash2") as! Splash2
        
        self.navigationController?.pushViewController(Splash2, animated: true)
        
        
    }
    
}
