//
//  Logo.swift
//  PawApp
//
//  Created by Jo on 11/01/23.
//

import UIKit

class Logo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1){
            
            let Splash = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Splash") as! Splash
            
            self.navigationController?.pushViewController(Splash, animated: true)
        }
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
