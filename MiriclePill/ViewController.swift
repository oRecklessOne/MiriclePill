//
//  ViewController.swift
//  MiriclePill
//
//  Created by oliver drabble on 05/12/2016.
//  Copyright © 2016 Reckless Games Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {


    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var successIndicator: UIImageView!
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var buyNowBtnLabel: UIButton!
    @IBOutlet weak var zipcodeTxtField: UITextField!
    @IBOutlet weak var countryLbl: UILabel!
    
    @IBOutlet weak var countryTxtField: UITextField!
    @IBOutlet weak var zipcodeLbl: UILabel!
    
    @IBAction func buyNowBtn(_ sender: Any) {
        for i in 0...17 {
                self.view.viewWithTag(i)?.isHidden = true
            successIndicator.isHidden = false
        }
        
    }
     var states = ["Alaska","califonia","washington","texas","maine", "New York", "Wyoming", "San Fransisco"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        successIndicator.isHidden = true
        buyNowBtnLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        zipcodeLbl.isHidden = true
        zipcodeTxtField.isHidden = true
        countryLbl.isHidden = true
        countryTxtField.isHidden = true
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
     return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        zipcodeLbl.isHidden = false
        zipcodeTxtField.isHidden = false
        countryLbl.isHidden = false
        countryTxtField.isHidden = false
        buyNowBtnLabel.isHidden = false
    }
}

