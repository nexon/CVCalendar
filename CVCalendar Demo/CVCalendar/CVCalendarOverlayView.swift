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
    
    override init(frame: CGRect) {
        self.label = UILabel(frame: CGRectZero)
        self.label.textColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        super.init(frame: frame)
        self.label.frame = CGRectMake(0, 0, 150, 21)
        
        // For label
        
        let centerX = NSLayoutConstraint(item: self.label, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1, constant: 0)
        let centerY = NSLayoutConstraint(item: self.label, attribute: .CenterY, relatedBy: .Equal, toItem: self, attribute: .CenterY, multiplier: 1, constant: 0)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.label.translatesAutoresizingMaskIntoConstraints = false
        
        self.setupFormatter()
        self.addSubview(self.label)
        self.addConstraints([centerX, centerY])        
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.label = UILabel(frame: CGRectZero )
        self.label.textColor = UIColor.blackColor().colorWithAlphaComponent(1)
        super.init(coder: aDecoder)
        self.label.frame = CGRectMake(0, 0, 150, 21)
        
        let centerX = NSLayoutConstraint(item: self.label, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1, constant: 0)
        let centerY = NSLayoutConstraint(item: self.label, attribute: .CenterY, relatedBy: .Equal, toItem: self, attribute: .CenterY, multiplier: 1, constant: 0)
        
        
        
        self.setupFormatter()
        
        self.addSubview(self.label)
        self.addConstraints([centerX, centerY])
    }
    
    
    func setText(text: String) {
        self.label.text = text
        self.label.textColor = UIColor.blackColor().colorWithAlphaComponent(1)
    }
    
    func setMonthName(withDate date: NSDate) {
        self.label.text = CVCalendarOverlayView.dateFormatter.stringFromDate(date)
    }
    
    
    private func setupFormatter() {
        CVCalendarOverlayView.dateFormatter.dateFormat = "MMMM"
    }
}
