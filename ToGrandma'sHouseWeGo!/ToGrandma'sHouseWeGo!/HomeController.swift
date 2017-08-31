//
//  ViewController.swift
//  ToGrandma'sHouseWeGo!
//
//  Created by Arthur Pujols on 8/31/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
	
	// Outlets
	@IBOutlet weak var jacobImage: CircleImages!
	@IBOutlet weak var allisonImage: CircleImages!
	@IBOutlet weak var jacobScore: UILabel!
	@IBOutlet weak var allisonScore: UILabel!
	@IBOutlet weak var winLabel: UILabel!
	
	// Variables
	let winningNumber = Int(arc4random_uniform(30)) + 1
	var jacob = Kid(name: "Jacob", numberOfWins: 0)
	var allison = Kid(name: "Allison", numberOfWins: 0)
	
	
	
	

	override func viewDidLoad() {
		super.viewDidLoad()
		setupView()
		
		
	}
	
	// Actions
	@IBAction func jacobButtonTapped(_ sender: RoundedButton) {
		let kidsRandomNumber = Int(arc4random_uniform(30)) + 1
		
		if kidsRandomNumber == winningNumber {
			
			if jacobImage.image != UIImage(named: "JacobHappy.jpg") {
				jacobImage.image = UIImage(named: "JacobHappy.jpg")
			}
			
			winLabel.isHidden = false
			winLabel.text = "\(jacob.name) wins! Don't cry \(allison.name) 😭."
			allisonImage.image = UIImage(named: "AllisonSad.jpg")
			jacob.numberOfWins += 1
			jacobScore.text = String(jacob.numberOfWins)
		} else {
			winLabel.isHidden = false
			winLabel.text = "Nope! Try again \(jacob.name)."
		}
		
		
	}

	@IBAction func allisonButtonTapped(_ sender: RoundedButton) {
		let kidsRandomNumber = Int(arc4random_uniform(30)) + 1
		
		if kidsRandomNumber == winningNumber {
			
			if allisonImage.image != UIImage(named: "AllisonHappy2.jpg") {
				allisonImage.image = UIImage(named: "AllisonHappy2.jpg")
			}
			
			winLabel.isHidden = false
			winLabel.text = "\(allison.name) wins! Don't cry \(jacob.name) 😭."
			jacobImage.image = UIImage(named: "JacobSad.jpg")
			allison.numberOfWins += 1
			allisonScore.text = String(allison.numberOfWins)
		} else {
			winLabel.isHidden = false
			winLabel.text = "Nope! Try again \(allison.name)."
		}
	}
	
	
	
	// Functions
	
	func setupView() {
		winLabel.isHidden = true
		jacobScore.text = String(jacob.numberOfWins)
		allisonScore.text = String(allison.numberOfWins)
		allisonImage.image = UIImage(named: "AllisonHappy2.jpg")
		jacobImage.image = UIImage(named: "JacobHappy.jpg")
	}
}

