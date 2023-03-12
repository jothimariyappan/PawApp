//
//  Cart.swift
//  PawApp
//
//  Created by Jo on 12/01/23.
//

import UIKit

class Cart: UIViewController, kgpass{
    
    func pass(count1: Int) {
        lblnum.text = String(count1)
    }
    
    
    @IBOutlet var btnckeckot: UIButton!
    
    
    @IBOutlet var lbltotalprice: UILabel!
    @IBOutlet var NSimgdogH: NSLayoutConstraint!
    
    @IBOutlet var btnund: UIButton!
    @IBOutlet var lblnothing: UILabel!
    
    @IBOutlet var imgdog: UIImageView!
    @IBOutlet var NsimgdogW: NSLayoutConstraint!
    
    @IBOutlet var NsimgdogV: NSLayoutConstraint!
    
    @IBOutlet var Nsundo: NSLayoutConstraint!
    @IBOutlet var lblundo: UILabel!
    @IBOutlet var vw1: UIView!
    
    var passing : kgpass!                       // 2nd viewcontroller - PROTOCOL
    var dc = picker()                           // 2nd viewcontroller - CLASS
    
    @IBOutlet var lblnum: UILabel!
    
    
    
    @IBOutlet var lblproducname: UILabel!
    @IBOutlet var imgProduct: UIImageView!  
    @IBOutlet weak var lblPrice: UILabel!
    var kgcount = Int()
    
    
    var name = String()
    var imgpro = String()
    var price = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        dc.delegate = self
        //        lblnum.text = "\(lblnum )"
        lblnum.text = ""
        Nsundo.constant = 40
        lblundo.layer.opacity = 0
        imgdog.layer.opacity = 0
        lblnothing.layer.opacity = 0
        // Do any additional setup after loading the view.
        lbltotalprice.text = "1299"
        btnckeckot.setTitle("Checkout", for: .normal)
    }
    @objc func undo(){
        lblundo.isHidden = true
        btnund.isHidden = true
        
        
    }
    func animate(){
        UIView.animate(withDuration: 1, delay: 0) { [self] in
            if Nsundo.constant == 40 {
                Nsundo.constant = 70
                lblundo.layer.opacity = 1
                NsimgdogW.constant = 300
                NSimgdogH.constant = 300
                NsimgdogV.constant = 10
                imgdog.layer.opacity = 1
                lblnothing.layer.opacity = 1
                lbltotalprice.text = "0"
                lblundo.isHidden = false
                
                btnckeckot.setTitle("Explore", for: .normal)
            }else{
                Nsundo.constant = 40
            }
            self.view.layoutIfNeeded()
        }
        
    }
    func animateundo(){
        UIView.animate(withDuration: 1, delay: 0) { [self] in
            if Nsundo.constant == 70 {
                Nsundo.constant = 40
                lblundo.layer.opacity = 0
                vw1.isHidden = false
                imgdog.layer.opacity = 0
                lblnothing.layer.opacity = 0
                NsimgdogW.constant = 162
                NSimgdogH.constant = 134
                NsimgdogV.constant = 15
                lbltotalprice.text = "1299"
                btnckeckot.setTitle("Checkout", for: .normal)
                
            }else{
                Nsundo.constant = 70
            }
            self.view.layoutIfNeeded()
        }
        
    }
    
    // MARK: - Navigation
    
    @IBAction func btnundo(_ sender: UIButton) {
        animateundo()
        
    }
    
    @IBAction func btnKgpicker(_ sender: UIButton) {
        let cell = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "picker") as! picker
        cell.delegate = self
        self.present(cell, animated: true)
        
        
    }
    
    
    @IBAction func btnCheckout(_ sender: UIButton) {
        
        if  btnckeckot.currentTitle == "Checkout" {
            
            let Emptycart = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Payement") as! Payement
            
            self.navigationController?.pushViewController(Emptycart, animated: true)
        }else{
            
            let Emptycart = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Tabbar") as! Tabbar
            
            self.navigationController?.pushViewController(Emptycart, animated: true)
            
        }
    }
    
    @IBAction func btndelete(_ sender: UIButton) {
        
        vw1.isHidden = true
        animate()
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(undo), userInfo: nil, repeats: false)
        
        
        
        
    }
    
}
