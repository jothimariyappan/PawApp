//
//  Preview.swift
//  PawApp
//
//  Created by Jo on 10/03/23.
//

import UIKit

class Preview: UIViewController {
    
    @IBOutlet var imgpet: UIImageView!
    
    @IBOutlet var lblpetname: UILabel!
    
    @IBOutlet var lblproductname: UILabel!
    
    @IBOutlet var lblmrp: UILabel!
    
    var Pimg = String()
    var Ppetname = String()
    var Pproname = String()
    var Pmrp = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgpet.image = UIImage(named: Pimg)
        lblpetname.text = Ppetname
        lblproductname.text = Pproname
        lblmrp.text = Pmrp
        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation


    @IBAction func btnback(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
