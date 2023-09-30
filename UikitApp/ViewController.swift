//
//  ViewController.swift
//  UikitApp
//
//  Created by Егор Желабков on 30.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView! {
        didSet {
            colorView.layer.cornerRadius = 5
            colorView.alpha = 0.5
        }
    }
    
    @IBOutlet weak var redSlider: UISlider! {
        didSet {
            redSlider.tintColor = UIColor.red
            
        }
    }
    
    @IBOutlet weak var greenSlide: UISlider! {
        didSet {
            greenSlide.tintColor = UIColor.green
            
        }
    }
    
    @IBOutlet weak var blueSlider: UISlider! {
        didSet {
            blueSlider.tintColor = UIColor.blue
            
        }
    }
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setuoSlider()
        setupLabel()
    }
    
    private func modelColor() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlide.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlide.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func rgbSlider(_ sender: Any) {
        modelColor()
    }
    
    private func setupLabel() {
        redLabel.text = redSlider.value.formatted()
        redLabel.font = redLabel.font.withSize(15)
        redLabel.textAlignment = .left
        redLabel.numberOfLines = 2
        
        greenLabel.text = greenSlide.value.formatted()
        greenLabel.font = greenLabel.font.withSize(15)
        greenLabel.textAlignment = .left
        greenLabel.numberOfLines = 2
        
        blueLabel.text = blueSlider.value.formatted()
        blueLabel.font = blueLabel.font.withSize(15)
        blueLabel.textAlignment = .left
        blueLabel.numberOfLines = 2
    }
    
    private func setuoSlider() {
        
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 5
        
        greenSlide.value = 0
        greenSlide.minimumValue = 0
        greenSlide.maximumValue = 5
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 5
    }
}


