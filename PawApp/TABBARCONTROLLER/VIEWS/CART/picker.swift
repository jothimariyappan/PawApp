//
//  picker.swift
//  PawApp
//
//  Created by Jo on 12/01/23.
//

import UIKit

class picker: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var kg = [1,2,3,4,5,6,7,8,9]
    var num = Int()
    
    @IBOutlet var lbl: UILabel!
    var delegate : kgpass!
    override func viewDidLoad() {
        super.viewDidLoad()
        //        print(num)
        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - Navigation
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return kg.count
        //            return "\(kg[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(kg[row])"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //        lbl.text = "\(kg[row])"
        num = kg[row]
        print(num)
    }
    
    
    @IBAction func btnSet(_ sender: UIButton) {
        
        //        let cell = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Cart") as! Cart
        //        var datapass = num
        //        print(datapass)
        
        //        print()
        dismiss(animated: true) {
            self.delegate.pass(count1: self.num)
        }
    }
    
    @IBAction func btnCancel(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
    
    
}
protocol kgpass {
    func pass (count1 : Int)
    
}

