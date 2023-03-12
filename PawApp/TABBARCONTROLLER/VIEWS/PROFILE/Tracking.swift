//
//  Tracking.swift
//  PawApp
//
//  Created by Jo on 14/01/23.
//

import UIKit

class Tracking: UIViewController,pass {
    func reason(value: String?) {
        karanam = value ?? ""
    }
    
    var passing : pass!
    @IBOutlet var tracview: UIView!
    
    @IBOutlet var NSTrackview: NSLayoutConstraint!
    
    
    @IBOutlet var btncancel: UIButton!
    
    @IBOutlet var vuanimate: UIView!
    
    @IBOutlet var btn: UIButton!
    
    @IBOutlet var lblorder: UILabel!
    
    @IBOutlet var lbl2: UILabel!
    
    @IBOutlet var lbl3: UILabel!
    
    @IBOutlet var lbl6: UILabel!
    @IBOutlet var lbl5: UILabel!
    @IBOutlet var lbl4: UILabel!
    
    @IBOutlet var v1: UIView!
    @IBOutlet var v2: UIView!
    @IBOutlet var v3: UIView!
    @IBOutlet var v4: UIView!
    
    @IBOutlet var v5: UIView!
    @IBOutlet var v6: UIView!
    @IBOutlet var v7: UIView!
    
    
    var karanam = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btncancel.isHidden = true
        NSTrackview.constant = 410
        tracview.layer.maskedCorners = [.layerMaxXMaxYCorner , .layerMinXMaxYCorner]
        tracview.layer.cornerRadius = 40
        // Do any additional setup after loading the view.
        //        move(value: karanam)
    }
    
    
    
    // MARK: - Navigation
    
    
    @IBAction func btn(_ sender: UIButton) {
        animation(withduration: 1, deLay: 0, animat: NSTrackview)
        //        up()
        //        down()
        
        if lbl2.layer.opacity == 1{
            up()
        }else{
            down()
        }
    }
    
    func down(){
        UIView.animate(withDuration: 0.5, delay: 1) { [self] in
            if lbl2.layer.opacity == 0 {
                lblorder.layer.opacity = 1
                lbl2.layer.opacity = 1
                lbl3.layer.opacity = 1
                lbl6.layer.opacity = 1
                lbl5.layer.opacity = 1
                lbl4.layer.opacity = 1
                v1.layer.opacity = 1
                v2.layer.opacity = 1
                v3.layer.opacity = 1
                v4.layer.opacity = 1
                v5.layer.opacity = 1
                v6.layer.opacity = 1
                v7.layer.opacity = 1
            }
        }
    }
    func up(){
        UIView.animate(withDuration: 0.5, delay: 0) { [self] in
            if lbl2.layer.opacity == 1 {
                lblorder.layer.opacity = 0
                lbl2.layer.opacity = 0
                lbl3.layer.opacity = 0
                lbl6.layer.opacity = 0
                lbl5.layer.opacity = 0
                lbl4.layer.opacity = 0
                v1.layer.opacity = 0
                v2.layer.opacity = 0
                v3.layer.opacity = 0
                v4.layer.opacity = 0
                v5.layer.opacity = 0
                v6.layer.opacity = 0
                v7.layer.opacity = 0
            }
            
        }
    }
    func animation(withduration: Double , deLay: Double , animat : NSLayoutConstraint){
        UIView.animate(withDuration: withduration, delay: deLay) { [self] in
            if animat.constant == 410{
                animat.constant = 0
                tracview.layer.opacity = 0
                
                //                NSTrackview.constant = 200
            }else{
                animat.constant = 410
                //                NSTrackview.constant = 136
                tracview.layer.opacity = 1
            }
            self.view.layoutIfNeeded()
        }
        //            if animat.constant == 570{
        //                animat.constant = 136
        //
        ////                NSTrackview.constant = 200
        //            }else{
        //                animat.constant = 570
        ////                NSTrackview.constant = 136
        //            }
        //            self.view.layoutIfNeeded()
        //        }
    }
    
    override func viewWillLayoutSubviews() {
        print("---->>>",karanam)
        if karanam == "Buggy product" {
            print("--->in")
            let ReasonCancel = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Emptycart") as! Emptycart
            
            self.navigationController?.pushViewController(ReasonCancel, animated: true)
            
            
        }
        if karanam == "I changed my mind" {
            print("--->in")
            let ReasonCancel = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Emptycart") as! Emptycart
            
            self.navigationController?.pushViewController(ReasonCancel, animated: true)
            
            
        }
        if karanam == "Delay in shipping" {
            print("--->in")
            let ReasonCancel = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Emptycart") as! Emptycart
            
            self.navigationController?.pushViewController(ReasonCancel, animated: true)
            
            
        }
        if karanam == "Other" {
            print("--->in")
            let ReasonCancel = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Emptycart") as! Emptycart
            
            self.navigationController?.pushViewController(ReasonCancel, animated: true)
            
            
        }
    }
    
    

    
    @IBAction func btnback(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    @IBAction func btnmenu(_ sender: UIButton) {
        if btncancel.isHidden == true{
            btncancel.isHidden = false
        }else{
            btncancel.isHidden = true
        }
    }
    
    @IBAction func btncancel(_ sender: UIButton) {
        let ReasonCancel = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ReasonCancel") as! ReasonCancel
        ReasonCancel.protopass = self
        self.navigationController?.present(ReasonCancel, animated: true)
        
    }
}
