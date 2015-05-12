//
//  ViewController.swift
//  Click Counter
//
//  Created by iED on 12/05/2015.
//  Copyright (c) 2015 iED. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        
        
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 80, 80)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        self.view.addSubview(button)
        
        
    }


}

