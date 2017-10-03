//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Vanessa Constant on 10/1/17.
//  Copyright © 2017 Vanessa Constant. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
