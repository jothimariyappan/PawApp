//
//  Payement.swift
//  PawApp
//
//  Created by Jo on 13/01/23.
//

import UIKit

class Payement: UIViewController {
    
    var card = [1,2,3]
    @IBOutlet var imgCredit: UIImageView!
    
    @IBOutlet var imgUpi: UIImageView!
    
    
    @IBOutlet var imgCod: UIImageView!
    
    @IBOutlet var imgNetBAnk: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        imgCod.image = UIImage(named: "yellow")
        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - Navigation
    
    @IBAction func btnCRedit(_ sender: UIButton) {
        if imgCredit.image == UIImage(named: ""){
            imgCredit.image = UIImage(named: "yellow")
            
            imgUpi.image = UIImage(named: "")
            imgCod.image = UIImage(named: "")
            imgNetBAnk.image = UIImage(named: "")
        }else{
            imgCredit.image = UIImage(named: "")
        }
        
    }
    
    @IBAction func btnUPI(_ sender: UIButton) {
        if imgUpi.image == UIImage(named: ""){
            imgUpi.image = UIImage(named: "yellow")
            
            imgCredit.image = UIImage(named: "")
            imgCod.image = UIImage(named: "")
            imgNetBAnk.image = UIImage(named: "")
        }else{
            imgUpi.image = UIImage(named: "")
        }
    }
    
    @IBAction func btnCod(_ sender: UIButton) {
        //        if imgCod.image == UIImage(named: ""){
        //            imgCod.image = UIImage(named: "yellow")
        //
        //            imgUpi.image = UIImage(named: "")
        //            imgCredit.image = UIImage(named: "")
        //            imgNetBAnk.image = UIImage(named: "")
        //        }else{
        //            imgCod.image = UIImage(named: "")
        //        }
    }
    
    @IBAction func btnNetbanking(_ sender: UIButton) {
        if imgNetBAnk.image == UIImage(named: ""){
            imgNetBAnk.image = UIImage(named: "yellow")
            
            imgUpi.image = UIImage(named: "")
            imgCod.image = UIImage(named: "")
            imgCredit.image = UIImage(named: "")
        }else{
            imgNetBAnk.image = UIImage(named: "")
        }
    }
    
    
    @IBAction func btncontinue(_ sender: UIButton) {
    }
    
    @IBAction func btnback(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension  Payement : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return card.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let card = collectionView.dequeueReusableCell(withReuseIdentifier: "paymentCVC", for: indexPath) as! paymentCVC
        card.blurrr.layer.cornerRadius = 5
        card.blurrr.layer.borderWidth = 1
        card.blurrr.layer.borderColor = UIColor.gray.cgColor
        return card
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 282, height: 152)
    }
    
}
