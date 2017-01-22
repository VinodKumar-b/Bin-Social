//
//  CircleView.swift
//  Bin-Social
//
//  Created by Vinod Kumar on 1/21/17.
//  Copyright © 2017 self. All rights reserved.
//

import UIKit

class CircleView: UIImageView {
    
//    override func draw(_ rect: CGRect) {
//        super.draw(rect)
//        layer.cornerRadius = self.frame.width/2
//        clipsToBounds = true
//    }
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }
    

}
