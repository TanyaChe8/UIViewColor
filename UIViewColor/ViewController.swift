//
//  ViewController.swift
//  UIViewColor
//
//  Created by Черненко Татьяна Анатольевна on 05.03.2022.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var colorView: UIView!
	
	@IBOutlet var redSlider: UISlider!
	@IBOutlet var greenSlider: UISlider!
	@IBOutlet var blueSlider: UISlider!
	
	@IBOutlet var redLabel: UILabel!
	@IBOutlet var greenLabel: UILabel!
	@IBOutlet var blueLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		redSlider.value = 0.3
		greenSlider.value = 0.6
		blueSlider.value = 0.9
		
		redLabel.text = String(redSlider.value)
		greenLabel.text = String(greenSlider.value)
		blueLabel.text = String(blueSlider.value)
		
		colorView.layer.cornerRadius = 8
		
		changeColor()
	}

	
	@IBAction func rgbSliderChanged(_ sender: Any) {
		changeColor()
		
	}
	
	func changeColor() {
		colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
		redLabel.text = String(round(redSlider.value * 100) / 100)
		greenLabel.text = String(round(greenSlider.value * 100) / 100)
		blueLabel.text = String(round(blueSlider.value * 100) / 100)
	}
}

