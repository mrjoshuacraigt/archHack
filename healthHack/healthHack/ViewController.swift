//
//  ViewController.swift
//  healthHack
//
//  Created by Joshua Taylor on 11/5/16.
//  Copyright © 2016 byteCodeLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let bmiCalculator = BmiCalculator()
        bmiCalculator.makeBmiRequestion()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

