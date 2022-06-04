//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Kirill Tarasko on 04.06.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = 0.0
            slider.maximumValue = 100.0
            slider.value = 0.0
        }
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempCelcius = Int(round(sender.value))
        celciusLabel.text = "\(tempCelcius)ºC"
        let fahrenheitTemp = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemp)ºF"
    }
}

