//
//  Wish.swift
//  PawApp
//
//  Created by Jo on 07/03/23.
//

import UIKit

class Wish: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - Navigation
    
    @IBAction func btnbach(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
extension Wish : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "wishCVC", for: indexPath) as! wishCVC
        
        return cell
    }
    
    
}
