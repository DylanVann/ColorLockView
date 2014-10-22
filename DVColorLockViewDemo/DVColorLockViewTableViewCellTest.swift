//
//  DVColorLockViewTableViewCellTest.swift
//  DVColorLockViewDemo
//
//  Created by Dylan Vann on 2014-10-22.
//  Copyright (c) 2014 Dylan Vann. All rights reserved.
//

import Foundation
import UIKit

class DVColorLockViewTestTableViewCell: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Style
        selectionStyle = UITableViewCellSelectionStyle.Blue
        
        // Layout
        var margins = CGFloat(4)
        
        textLabel?.text = "UIViews"
        detailTextLabel?.textColor = UIColor.darkTextColor()
        detailTextLabel?.text = "DVColorLockViews"
        
        var red1 = UIView(), green1 = UIView(), blue1 = UIView()
        var red2 = DVColorLockView(), green2 = DVColorLockView(), blue2 = DVColorLockView()
        
        var uiViews = [UIView(), UIView(), UIView()]
        uiViews[0].backgroundColor = UIColor.redColor().colorWithAlphaComponent(0.2)
        uiViews[1].backgroundColor = UIColor.greenColor().colorWithAlphaComponent(0.2)
        uiViews[2].backgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.2)
        
        var colorLockViews = [DVColorLockView(), DVColorLockView(), DVColorLockView()]
        colorLockViews[0].lockedBackgroundColor = UIColor.redColor().colorWithAlphaComponent(0.2)
        colorLockViews[1].lockedBackgroundColor = UIColor.greenColor().colorWithAlphaComponent(0.2)
        colorLockViews[2].lockedBackgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.2)
        
        for view in (uiViews + (colorLockViews as Array<UIView>)) {
            view.setTranslatesAutoresizingMaskIntoConstraints(false)
            contentView.addSubview(view)
            addConstraints([
                // Vertical fill.
                NSLayoutConstraint(
                    item: view,
                    attribute: NSLayoutAttribute.Top,
                    relatedBy: NSLayoutRelation.Equal,
                    toItem: contentView,
                    attribute: NSLayoutAttribute.Top,
                    multiplier: 1.0,
                    constant: margins
                ),
                NSLayoutConstraint(
                    item: view,
                    attribute: NSLayoutAttribute.Bottom,
                    relatedBy: NSLayoutRelation.Equal,
                    toItem: contentView,
                    attribute: NSLayoutAttribute.Bottom,
                    multiplier: 1.0,
                    constant: -margins
                ),
                // Aspect ratio.
                NSLayoutConstraint(
                    item: view,
                    attribute: NSLayoutAttribute.Width,
                    relatedBy: NSLayoutRelation.Equal,
                    toItem: view,
                    attribute: NSLayoutAttribute.Height,
                    multiplier: 1.0,
                    constant: 0
                ),
                ])
            contentView.sendSubviewToBack(view)
        }
        
        // Align UIViews
        addConstraints([
            NSLayoutConstraint(
                item: uiViews[0],
                attribute: NSLayoutAttribute.Left,
                relatedBy: NSLayoutRelation.Equal,
                toItem: contentView,
                attribute: NSLayoutAttribute.Left,
                multiplier: 1.0,
                constant: margins
            ),
            ])
        for i in 1...2 {
            var previousView = uiViews[i-1]
            var view = uiViews[i]
            addConstraints([
                NSLayoutConstraint(
                    item: previousView,
                    attribute: NSLayoutAttribute.Right,
                    relatedBy: NSLayoutRelation.Equal,
                    toItem: view,
                    attribute: NSLayoutAttribute.Left,
                    multiplier: 1.0,
                    constant: -margins
                ),
                ])
        }
        
        // Align DVColorLockViews
        addConstraints([
            NSLayoutConstraint(
                item: colorLockViews[0],
                attribute: NSLayoutAttribute.Right,
                relatedBy: NSLayoutRelation.Equal,
                toItem: contentView,
                attribute: NSLayoutAttribute.Right,
                multiplier: 1.0,
                constant: -margins
            ),
            ])
        for i in 1...2 {
            var previousView = colorLockViews[i-1]
            var view = colorLockViews[i]
            addConstraints([
                NSLayoutConstraint(
                    item: previousView,
                    attribute: NSLayoutAttribute.Left,
                    relatedBy: NSLayoutRelation.Equal,
                    toItem: view,
                    attribute: NSLayoutAttribute.Right,
                    multiplier: 1.0,
                    constant: margins
                ),
                ])
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}