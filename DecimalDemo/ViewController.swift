//
//  ViewController.swift
//  DecimalDemo
//
//  Created by hans on 2018/4/13.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let floatNumber :Double = 1100
        let floatRate :Double = 1.1
        let floatResult = floatNumber/floatRate
        
        //代表1.1
        let ratingString = "0110"
        let rateNumber :NSDecimalNumber = NSDecimalNumber(string: ratingString)
        let rate :NSDecimalNumber = rateNumber.dividing(by: NSDecimalNumber(value: 100))
        let amountDecimal = NSDecimalNumber(value: 1100)
        let resultDecimal = amountDecimal.dividing(by: rate)
        print(resultDecimal)
        
//        if(false){
//            print("dd")
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

