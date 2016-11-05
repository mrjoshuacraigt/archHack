//
//  BmiCalculator.swift
//  healthHack
//
//  Created by Joshua Taylor on 11/5/16.
//  Copyright © 2016 byteCodeLabs. All rights reserved.
//

import Foundation
import Alamofire

class BmiCalculator {

    let mashapeKey = "4qmTJxxjDCmshHD00ovTWDsubDL6p1eAG1Jjsnn3cwmILniPOI"
    let bmiURI = "https://bmi.p.mashape.com/post"

    let parameters: Parameters = [

        "weight": [ "value": "85.00",
                "unit":"kg"
                   ],
            "height" : [
                "value": "170.00",
                    "unit": "cm"
            ],
            "sex": "m",
            "age": "24",
            "waist": "34.00",
            "hip": "40.00"
    ]

    let headers: HTTPHeaders = [

            "X-Mashape-Key": "4qmTJxxjDCmshHD00ovTWDsubDL6p1eAG1Jjsnn3cwmILniPOI",
            "Content-Type": "application/json",
            "Accept": "application/json",


    ]


    func makeBmiRequestion () -> Void {

        Alamofire.request(mashapeKey, headers:headers).responseJSON {
            response in debugPrint(response)
        }
        
        Alamofire.request(.POST, mashapeKey, parameters: parameters, headers: headers).responseJSON() {
            
            (req, res, data, error) in
        }


    }




}
