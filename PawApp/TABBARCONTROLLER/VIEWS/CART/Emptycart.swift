//
//  Emptycart.swift
//  PawApp
//
//  Created by Jo on 09/03/23.
//

import UIKit

class Emptycart: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    
    @IBAction func btnExplorePrdo(_ sender: UIButton) {
        let cart = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Tabbar") as! Tabbar
        
        self.navigationController?.pushViewController(cart, animated: true)
    }
    
}
