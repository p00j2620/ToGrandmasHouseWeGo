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
	
	// Generating random number to win
	let winningNumber = Int(arc4random_uniform(30)) + 1
	
	
	// Creating kid objects for game
	var jacob = Kid	(
						name: "Jacob",
						numberOfWins: 0,
						happyImage: UIImage(named: "JacobHappy.jpg")!,
						sadImage: UIImage(named: "JacobSad.jpg")!
					)
	
	var allison = Kid (
						name: "Allison",
						numberOfWins: 0,
						happyImage: UIImage(named: "AllisonHappy2")!,
						sadImage: UIImage(named: "AllisonSad.jpg")!
					)
	
	

	override func viewDidLoad() {
		
		super.viewDidLoad()
		
		// Applying UI elements
		setupView()
		
	}
	
	
	// Actions
	
	// Code to run when Jacob's button is tapped
	@IBAction func jacobButtonTapped(_ sender: RoundedButton) {
		
		// Checking if happy img is active when button is pressed after a loss
		if jacobImage.image != jacob.happyImage {
			jacobImage.image = jacob.happyImage
		}
		
		setupWinner(winner: jacob.name, loser: allison.name, happyImage: jacob.happyImage, loserSadImage: allison.sadImage)
		
	}
	
	// Code to run when Allison's button is tapped
	@IBAction func allisonButtonTapped(_ sender: RoundedButton) {
		
		// Checking if happy img is active when button is pressed after a loss
		if allisonImage.image != allison.happyImage {
			allisonImage.image = allison.happyImage
		}
		
		setupWinner(winner: allison.name, loser: jacob.name, happyImage: allison.happyImage, loserSadImage: jacob.sadImage)
		
	}
	
	
	// Functions
	
	// Setting winlabel to hidden at run time and applying UI images/scores
	func setupView() {
		winLabel.isHidden = true
		jacobScore.text = String(jacob.numberOfWins)
		allisonScore.text = String(allison.numberOfWins)
		allisonImage.image = allison.happyImage
		jacobImage.image = jacob.happyImage
	}
	
	// Function to check for winners, set images and labels based on results, and update win totals.
	func setupWinner(winner: String, loser: String, happyImage: UIImage,loserSadImage: UIImage) {
		
		let kidsRandomNumber = Int(arc4random_uniform(30)) + 1
		
		if kidsRandomNumber == winningNumber {
			
			winLabel.isHidden = false
			winLabel.text = "\(winner) wins! Don't cry \(loser) 😭."
			
			if winner == allison.name {
				jacobImage.image = loserSadImage
				allison.numberOfWins += 1
				allisonScore.text = String(allison.numberOfWins)
			}
			
			if winner == jacob.name {
				allisonImage.image = loserSadImage
				jacob.numberOfWins += 1
				jacobScore.text = String(jacob.numberOfWins)
			}
			
		} else {
			winLabel.isHidden = false
			winLabel.text = "Nope! Try again \(winner)."
		}
	}
	
}


