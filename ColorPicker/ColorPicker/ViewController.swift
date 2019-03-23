//
//  ViewController.swift
//  ColorPicker
//
//  Created by Kolbe Weathington on 3/22/19.
//  Copyright © 2019 Kolbe Weathington. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    let initialColorIndex = 0
    
    struct Color{
        var name : String
        var color : UIColor
        
        init(_ colorName: String, _ backgroundColor : UIColor ){
            self.name = colorName
            self.color = backgroundColor
        }
    }
    
    let colorArray : Array<Color> = [
        Color("Red", UIColor.red)
        ,Color("Orange",UIColor.orange)
        ,Color("Yellow",UIColor.yellow)
        ,Color("Green",UIColor.green)
        ,Color("Blue",UIColor.blue)
        ,Color("Purple",UIColor.purple)
        ,Color("Brown",UIColor.brown)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        picker.dataSource = self
        //        picker.delegate = self
        view.backgroundColor = colorArray[initialColorIndex].color
        colorLabel.text = colorArray[initialColorIndex].name
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorArray[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
        print(colorArray[row].name)
        view.backgroundColor = colorArray[row].color
        colorLabel.text = colorArray[row].name
        
    }
    
    
    
    
    
}

