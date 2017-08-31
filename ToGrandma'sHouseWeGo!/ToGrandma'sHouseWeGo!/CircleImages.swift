//
//  CircleImages.swift
//  ToGrandma'sHouseWeGo!
//
//  Created by Arthur Pujols on 8/31/17.
//  Copyright © 2017 Arthur Pujols. All rights reserved.
//

import UIKit
@IBDesignable


class CircleImages: UIImageView {

	override func awakeFromNib() {
		super.awakeFromNib()
		setupViews()
	}
	
	func setupViews() {
		self.layer.cornerRadius = self.frame.width / 2
		self.clipsToBounds = true
	}
	
	override func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		setupViews()
	}
}
