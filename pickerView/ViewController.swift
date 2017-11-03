//
//  ViewController.swift
//  pickerView
//
//  Created by shokhsanam on 11/2/17.
//  Copyright © 2017 shokhsanam. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UIPickerViewDataSource , UIPickerViewDelegate {
    
    var bikes : [String] = ["Bob street" , "Alan Walker" , "James Blunt "]

    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var selectValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerview.dataSource = self
        pickerview.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return bikes.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let myBike = bikes[row]
        
        print(myBike)
        selectValue.text = "\(myBike)"
        
        return myBike
    
    }
}

