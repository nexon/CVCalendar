//
//  CVCalendarOverlayView.swift
//  CVCalendar Demo
//
//  Created by Alberto Lagos on 20-10-15.
//  Copyright © 2015 GameApp. All rights reserved.
//

import UIKit

class CVCalendarOverlayView: UIView {
    private var label:UILabel!
    private static let dateFormatter = NSDateFormatter()
    private let appearance: Appearance! = Appearance()
    
    override init(frame: CGRect) {
        self.label = UILabel(frame: CGRectZero)
        self.label.textColor = appearance.overlayTextColor!
        self.label.font      = appearance.overlayFontLabel!
        super.init(frame: frame)
        self.label.frame = CGRectMake(0, 0, 150, 21)
        
        self.backgroundColor = appearance.overlayBackgroundColor!

        // For label
        
        let centerX = NSLayoutConstraint(item: self.label, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1, constant: 0)
        let centerY = NSLayoutConstraint(item: self.label, attribute: .CenterY, relatedBy: .Equal, toItem: self, attribute: .CenterY, multiplier: 1, constant: 0)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.label.translatesAutoresizingMaskIntoConstraints = false
        
        self.setupFormatter()
        self.layer.allowsGroupOpacity = true
        self.addSubview(self.label)
        self.addConstraints([centerX, centerY])
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.label = UILabel(frame: CGRectZero)
        self.label.textColor = appearance.overlayTextColor!
        self.label.font      = appearance.overlayFontLabel!
        super.init(coder: aDecoder)
        self.label.frame = CGRectMake(0, 0, 150, 21)
        
        self.backgroundColor = appearance.overlayBackgroundColor!
        
        // For label
        
        let centerX = NSLayoutConstraint(item: self.label, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1, constant: 0)
        let centerY = NSLayoutConstraint(item: self.label, attribute: .CenterY, relatedBy: .Equal, toItem: self, attribute: .CenterY, multiplier: 1, constant: 0)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.label.translatesAutoresizingMaskIntoConstraints = false
        
        self.setupFormatter()
        self.layer.allowsGroupOpacity = true
        self.addSubview(self.label)
        self.addConstraints([centerX, centerY])
    }
    
    
    func setText(text: String) {
        self.label.text = text
    }
    
    func setMonthName(withDate date: NSDate) {
        self.label.text = CVCalendarOverlayView.dateFormatter.stringFromDate(date)
    }
    
    
    private func setupFormatter() {
        CVCalendarOverlayView.dateFormatter.dateFormat = "MMMM"
    }
}
