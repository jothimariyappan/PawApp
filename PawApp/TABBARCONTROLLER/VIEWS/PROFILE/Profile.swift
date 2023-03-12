//
//  Profile.swift
//  PawApp
//
//  Created by Jo on 07/03/23.
//

import UIKit

class Profile: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

   
    @IBAction func btnorder(_ sender: UIButton) {
        
        let Orders = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Orders") as! Orders
        
        self.navigationController?.pushViewController(Orders, animated: true)
    }
    
    @IBAction func btnwishlist(_ sender: UIButton) {
        let Wish = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Wish") as! Wish
        
        self.navigationController?.pushViewController(Wish, animated: true)
    }
}
