//
//  CircleView.swift
//  TechMedia
//
//  Created by Ashit Anandkumar on 7/19/17.
//  Copyright © 2017 Ashit Anandkumar. All rights reserved.
//

import UIKit

class CircleView: UIImageView {

    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width / 2
    }
    
}
