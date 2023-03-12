//
//  Personalize.swift
//  PawApp
//
//  Created by Jo on 12/01/23.
//

import UIKit

class Personalize: UIViewController {
    // MARK: - OUTLETS
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtYourname: UITextField!
    
    // MARK: - OUTLETS SELECTION PETS
    @IBOutlet var imgDog: UIImageView!
    @IBOutlet var imgCat: UIImageView!
    @IBOutlet var imgOther: UIImageView!
    @IBOutlet var imgTC: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - SELECTION PETS
    
    @IBAction func btnDog(_ sender: UIButton) {
        if imgDog.image == UIImage(named: "box"){
            imgDog.image = UIImage(named: "boxtick")
        }else{
            imgDog.image = UIImage(named: "box")
        }
    }
    
    @IBAction func btnCat(_ sender: UIButton) {
        if imgCat.image == UIImage(named: "box"){
            imgCat.image = UIImage(named: "boxtick")
        }else{
            imgCat.image = UIImage(named: "box")
        }
    }
    
    @IBAction func btnOther(_ sender: UIButton) {
        if imgOther.image == UIImage(named: "box"){
            imgOther.image = UIImage(named: "boxtick")
        }else{
            imgOther.image = UIImage(named: "box")
        }
    }
    
    // MARK: -  T&C
    
    
    @IBAction func btnTC(_ sender: UIButton) {
        if imgTC.image == UIImage(named: "box"){
            imgTC.image = UIImage(named: "boxtick")
        }else{
            imgTC.image = UIImage(named: "box")
        }
    }
    
    
    
    // MARK: - Navigation
    
    @IBAction func btnSubmit(_ sender: UIButton) {
        
        let Tabbar = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Tabbar") as! Tabbar
        self.navigationController?.pushViewController(Tabbar, animated: true)
    }
    
    @IBAction func btnback(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
