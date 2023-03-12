//
//  ReasonCancel.swift
//  PawApp
//
//  Created by Jo on 10/03/23.
//

import UIKit


class cellclass: UITableViewCell{
    
}
class ReasonCancel: UIViewController{
    
    @IBOutlet var txtreason: UITextView!
    
    @IBOutlet var txtNsH: NSLayoutConstraint!
    
    @IBOutlet var vw: UIView!
    @IBOutlet var btndown: UIButton!
    let transparenview = UIView()
    let tableview = UITableView()
    var selectedbutton = UIButton()
    var datasource = [String]()
    var protopass : pass!
    var reasonvalue = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(cellclass.self, forCellReuseIdentifier: "cell")
       
        txtreason.isHidden = true
       
    }

    func addTransparenview(frames : CGRect){
        let window = UIApplication.shared.keyWindow
        transparenview.frame = window?.frame ?? self.view.frame
        self.vw.addSubview(transparenview)
        
        tableview.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        
        self.vw.addSubview(tableview)
        tableview.layer.cornerRadius = 5
        
        transparenview.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        //                tableview.reloadData()
        let tapguesture = UITapGestureRecognizer(target: self, action: #selector(removeTransparentview))
        transparenview.addGestureRecognizer(tapguesture)
        transparenview.alpha = 0
        
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0,options: .curveEaseOut, animations : { [self] in
            transparenview.alpha = 0.5
            self.tableview.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 150 )
        },completion:nil)
    }
    
    
    @objc  func removeTransparentview(){
        let frames = selectedbutton.frame
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0,options: .curveEaseOut, animations : {
            self.transparenview.alpha = 0
            self.tableview.frame = CGRect(x: frames.origin.x , y:frames.origin.y + frames.height, width: frames.width, height: 0)
        },completion:nil)
        
    }
    
    @IBAction func btndropdown(_ sender: UIButton) {
        addTransparenview(frames : btndown.frame)
        selectedbutton = btndown
        datasource = ["Buggy product","I changed my mind","Delay in shipping","Other"]
    }
    
    @IBAction func btnconfirm(_ sender: UIButton) {
        
        
        dismiss(animated: true){ [self] in
            //            reasonvalue = btndown.currentTitle ?? ""
            //            print("---->>>",reasonvalue)
            self.protopass.reason(value: self.reasonvalue)
        }
    }
    
    
    @IBAction func btnCancel(_ sender: UIButton) {
        //        dismiss(animated: true)
        reasonvalue = btndown.currentTitle ?? ""
        
    }
    
    
}

extension ReasonCancel : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = datasource[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedbutton.setTitle(datasource[indexPath.row], for: .normal)
        removeTransparentview()
        if btndown.currentTitle == "Other" {
            txtreason.isHidden = false
            
            
        }
    }
}

protocol pass {
    func reason(value : String?)
}
