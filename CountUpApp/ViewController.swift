//
//  ViewController.swift
//  CountUpApp
//
//  Created by 本杉春奈 on 2023/06/27.
//

import UIKit

class ViewController: UIViewController {
    var count:UInt8 = 0
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "0X"+String(format: "%02x",count)
        label.textColor = .red
        
    
    }
    
    
    
    @IBAction func oneUpButton(_ sender: Any) {
        if (count<=254){
            count=count+1
        }else if (count > 254){
            count = UInt8(0)
        }
        label.text = "0X"+numToString(number: count)
    }
    
    @IBAction func tenUpButton(_ sender: Any) {
        if (count<=245){
            count = count + 10
        }else if (count > 245){
            count = UInt8(0)
        }
        label.text = "0X"+numToString(number: count)
    }
    
    @IBAction func changeColorButton(_ sender: Any) {
        if (label.textColor == .red){
            label.textColor = .black
        }else {
            label.textColor = .red
        }
    }
    
//    func ntr(number:UInt8) -> String {
//        let ntr = String(number,radix: 16)
//
//    }
    
    func  numToString(number:UInt8) -> String {
        return String(format:"%02x",number).uppercased()
        //    format: "%02d",
    
        
        
    }
}
