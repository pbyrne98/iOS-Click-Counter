//
//  ViewController.swift
//  Click Counter
//
//  Created by iED on 12/05/2015.
//  Copyright (c) 2015 iED. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label : UILabel!
    var label2 : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        var label2 = UILabel()
        label2.frame = CGRectMake(150, 200, 60, 60)
        label2.text = "0"
        self.view.addSubview(label2)
        self.label2=label2
        
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 80, 80)
        button.setTitle("Add", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        var button2 = UIButton()
        button2.frame = CGRectMake(50, 250, 80, 80)
        button2.setTitle("Subtract", forState: .Normal)
        button2.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button2)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        button2.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        button.addTarget(self, action: "changeColor", forControlEvents: UIControlEvents.TouchUpInside)
        button2.addTarget(self, action: "changeColor", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount() {
        self.count++
        self.label.text="\(self.count)"
        self.label2.text="\(self.count)"
        
    }
    
    func decrementCount() {
        self.count--
        self.label.text="\(self.count)"
        self.label2.text="\(self.count)"
        
    }

    
    //Used Google to get this function : http://stackoverflow.com/questions/26029393/random-number-between-two-decimals-in-swift
    func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat{
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum, secondNum)
    }
    
    func changeColor(){
        var red : CGFloat!
        var green : CGFloat!
        var blue :CGFloat!
        
        red = randomBetweenNumbers(0, secondNum: 1)
        green = randomBetweenNumbers(0, secondNum: 1)
        blue = randomBetweenNumbers(0, secondNum: 1)

        self.view.backgroundColor = UIColor(red: red, green: green  , blue: blue   , alpha: 1.0)

    }

}

