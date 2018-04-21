//
//  ViewController.swift
//  PickerView
//
//  Created by Cameron Wandfluh on 4/21/18.
//  Copyright © 2018 Cameron Wandfluh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var colorLabel: UILabel!
    let colors = [PickerColor(name: "Red", color: UIColor.red),
                  PickerColor(name: "Orange", color: UIColor.orange),
                  PickerColor(name: "Yellow", color: UIColor.yellow),
                  PickerColor(name: "Green", color: .green),
                  PickerColor(name: "Blue", color: .blue),
                  PickerColor(name: "Purple", color: .purple)
                  ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        view.backgroundColor = colors[row].color
        colorLabel.text = colors[row].name
    }
}

