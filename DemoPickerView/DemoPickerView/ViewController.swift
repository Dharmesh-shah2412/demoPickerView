//
//  ViewController.swift
//  DemoPickerView
//
//  Created by dharmesh  on 2/9/18.
//  Copyright © 2018 com.dharmesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var viewPicker: UIView!
    @IBOutlet weak var pickerViewData: UIPickerView!
    var arrData1 = [String]()
    var arrData2 = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerViewData.delegate = self
        for _ in 0 ..< 200 {
            arrData1.append("Lorem ipsium demo text")
            arrData2.append("Lorem ipsium demo text")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0)
        {
            return ("\(arrData1[row])")
        }
        else
        {
            return ("\(arrData2[row])")
        }
    }
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return viewPicker.frame.size.width / 2 - 5
    }
}

