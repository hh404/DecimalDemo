//
//  ViewController.swift
//  DecimalDemo
//
//  Created by hans on 2018/4/13.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var breakString = "q"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let str = "abc"
        breakString = str
        let floatNumber :Double = 1100
        let floatRate :Double = 1.1
        let floatResult = floatNumber/floatRate
        
        //代表1.1
        let ratingString = "0110"
        let rateNumber :NSDecimalNumber = NSDecimalNumber(string: ratingString)
        let rate :NSDecimalNumber = rateNumber.dividing(by: NSDecimalNumber(value: 100))
        let amountDecimal = NSDecimalNumber(value: 1100)
        let resultDecimal = amountDecimal.dividing(by: rate)
        print("resultDecimal:",resultDecimal)
        
//        if(false){
//            print("dd")
//        }
        let testNumber = NSDecimalNumber(value: 11.234)
        let bb = testNumber.decimalFormatter()
        print(bb)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension NSNumber {
    func decimalFormatter(minimumDigits: Int, maximumDigits: Int) -> String{
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal
        formatter.roundingMode = .down
        formatter.minimumFractionDigits = minimumDigits
        formatter.maximumFractionDigits = maximumDigits
        return formatter.string(from: self)!
    }
    
    
    func decimalFormatter(decimal: Int = 2) -> String{
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal
        formatter.roundingMode = .down
        formatter.minimumFractionDigits = decimal
        formatter.maximumFractionDigits = decimal
        return formatter.string(from: self)!
    }
}
