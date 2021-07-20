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
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        chancgeColor()
        
        
        
        func chancgeColor() {
            mainView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        }
        
        func rgbSlider(_ sender: UISlider) {
            chancgeColor()
            switch sender.tag {
                case 0: counterOne.text = string(from: sender)
                case 1: counterTwo.text = string(from: sender)
                case 2: counterThree.text = string(from: sender)
                default:
                    break
            }
        }
        
        func setValue(for labels: UILabel...) {
            labels.forEach { label in
                switch label.tag {
                    case 0: counterOne.text = string(from: redSlider)
                    case 1: counterTwo.text = string(from: greenSlider)
                    case 2: counterThree.text = string(from: blueSlider)
                    default: break
                }
            }
        }
        func string(from slider: UISlider) -> String {
            String(format: "%.2f", slider.value)
        }
        
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


