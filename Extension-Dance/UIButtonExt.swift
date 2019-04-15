//
//  UIButtonExt.swift
//  Extension-Dance
//
//  Created by Omid on 16.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit


extension UIButton {
    
    func wiggle() {
        let wiggleAnim = CABasicAnimation(keyPath: "position")
        wiggleAnim.duration = 0.05
        wiggleAnim.repeatCount = 4
        wiggleAnim.autoreverses = true
        wiggleAnim.fromValue = CGPoint(x: self.center.x - 3.0 , y: self.center.y)
        wiggleAnim.toValue = CGPoint(x: self.center.x + 3.0, y: self.center.y)
        layer.add(wiggleAnim, forKey: "position")
    }
    
    
    func dim() {
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 0.50 }) { (finished) in
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 1.0
                })
        }
    }
    
    
    func colorize() {
        let randomNumberArray = generateRandomNumbers(quantity: 3)
        let randomColor = UIColor (red: randomNumberArray[0]/255, green: randomNumberArray[1]/255, blue: randomNumberArray[2]/255, alpha: 1)
        UIView.animate(withDuration: 0.3) {
            self.backgroundColor = randomColor
        }
    }
    
}























