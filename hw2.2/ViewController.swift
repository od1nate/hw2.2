//
//  ViewController.swift
//  hw2.2
//
//  Created by admin on 25.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var background: UIView!
    @IBOutlet var displayColor: UIView!// дисплей с смесью цветов
    
    @IBOutlet var displayOne: UIView!
    @IBOutlet var displayTwo: UIView!
    @IBOutlet var displayThree: UIView!// дисплей в котором отображается индекс цвета
    
    @IBOutlet var indexOne: UILabel!
    @IBOutlet var indexTwo: UILabel!
    @IBOutlet var indexThree: UILabel!// индекс цвета
    
    @IBOutlet var colorOne: UILabel!
    @IBOutlet var colorTwo: UILabel!
    @IBOutlet var colorThree: UILabel! // надпись с значением цвета
    
    @IBOutlet var sliderOne: UISlider!
    @IBOutlet var sliderTwo: UISlider!
    @IBOutlet var sliderThree: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorOne.text = "red"
        colorTwo.text = "green"
        colorThree.text = "blue"
        
        displayColor.layer.cornerRadius = 10
        
        displayOne.layer.cornerRadius = 10
        displayTwo.layer.cornerRadius = 10
        displayThree.layer.cornerRadius = 10 
        
        displayOne.backgroundColor = .red
        displayTwo.backgroundColor = .green
        displayThree.backgroundColor = .blue
        
        sliderOne.minimumValue = 0.01
        sliderTwo.minimumValue = 0.01
        sliderThree.minimumValue = 0.01
        
        sliderOne.value = 1
        sliderTwo.value = 1
        sliderThree.value = 1
        
        sliderOne.maximumValue = 1
        sliderTwo.maximumValue = 1
        sliderThree.maximumValue = 1
        
        sliderOne.minimumTrackTintColor = .red
        sliderTwo.minimumTrackTintColor = .green
        sliderThree.minimumTrackTintColor = .blue
        
        indexOne.text = String(sliderOne.minimumValue)
        indexTwo.text = String(sliderTwo.minimumValue)
        indexThree.text = String(sliderThree.minimumValue)
        
        
     
        
    }
    
    @IBAction func sliderActionOne() {
        let colorDisplayOne = displayOne.tintColor
        displayOne.tintColor = colorDisplayOne?.withAlphaComponent(CGFloat(sliderOne.value))
        indexOne.text = String(sliderOne.value)
        
    }
    @IBAction func sliderActionTwo() {
        indexTwo.text = String(sliderTwo.value)
        let colorDisplayTwo = displayTwo.tintColor
        displayTwo.tintColor = colorDisplayTwo?.withAlphaComponent(CGFloat(sliderTwo.value))
    }
    @IBAction func sliderActionThree() {
        let colorDisplayThree = displayThree.tintColor
        displayThree.tintColor = colorDisplayThree?.withAlphaComponent(CGFloat(sliderThree.value))
        indexThree.text = String(sliderThree.value)
    }
    
}

