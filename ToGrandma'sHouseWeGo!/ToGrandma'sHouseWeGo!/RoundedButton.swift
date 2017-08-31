//
//  RoundedButton.swift
//  ToGrandma'sHouseWeGo!
//
//  Created by Arthur Pujols on 8/31/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import UIKit

@IBDesignable

// Class to apply rounded edges on UIbuttons
class RoundedButton: UIButton {

	override func awakeFromNib() {
		super.awakeFromNib()
		setupViews()
	}
	
	func setupViews() {
		self.layer.cornerRadius = 5.0
	}
	
	override func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		setupViews()
	}

}
