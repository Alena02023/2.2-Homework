//
//  ViewController.swift
//  2.2 Homework
//
//  Created by Елена Лазука on 29.01.2021.
//

import UIKit
    
class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet var counterOne: UILabel!
    @IBOutlet var counterTwo: UILabel!
    @IBOutlet var counterThree: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = mainView.frame.height / 4
       
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.tintColor = .red
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.tintColor = .green
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
       
}
    
    func chancgeColor() {
        mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func rgbSlider() {
        
        counterOne.text = String(format:"%.2f", (redSlider.value))
        counterTwo.text = String(format:"%.2f",greenSlider.value)
        counterThree.text = String(format:"%.2f", blueSlider.value )
        chancgeColor()
    
    }
    
}
    
    
