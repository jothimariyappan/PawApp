//
//  Home.swift
//  PawApp
//
//  Created by Jo on 12/01/23.
//

import UIKit

class Home: UIViewController{
    
    var product = ["dog","cat","dogfud"]
    
    var productname = ["Dog Safe Harness","Kit Cat Classic","Royal Canin Pellet"]
    
    var mrp = ["1299","2999","1799"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - Navigation
    
    
    @IBAction func btnaddcart(_ sender: UIButton) {
        let Cart = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Cart") as! Cart
        //        Cart.imgpro =
        //        Cart.name =
        //        Cart.price = productname[index]
        
        self.navigationController?.pushViewController(Cart, animated: true)
        
    }
    
}
extension Home :UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let productcell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCVC", for: indexPath) as! homeCVC
        productcell.imgproduct.image = UIImage(named: product[indexPath.item])
        productcell.lblprice.text = "\(mrp[indexPath.item])"
        productcell.lblproductname.text = productname[indexPath.item]
        productcell.lblcategory.text = product[indexPath.item]
        productcell.btnaddcart.tag = indexPath.item
        
        return productcell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //        CGSize(width: 170, height: 216)
        //        CGSize(width: collectionView.frame.size.width / 2, height: collectionView.frame.size.height / 2 )
        CGSize(width: 170, height: 225)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let preview = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Preview") as! Preview
        
        preview.Pimg = product[indexPath.item]
        preview.Pmrp = mrp[indexPath.item]
        preview.Ppetname =  product[indexPath.item]
        preview.Pproname = productname[indexPath.item]
        
        self.navigationController?.pushViewController(preview, animated: true)
    }
}
