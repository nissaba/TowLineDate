//
//  ACDateView.swift
//  TowLineDate
//
//  Created by Pascale Beaulac on 2014-09-30.
//  Copyright (c) 2014 Mobinot Software. All rights reserved.
//

import UIKit



@IBDesignable class ACDateView: UIView {
    @IBOutlet var view: UIView!
    @IBOutlet weak var centerDot: UIView!
    @IBOutlet weak var lblMonthName: UILabel!
    @IBOutlet weak var lblDayNumer: UILabel!
    var date:NSDate
    var frameInset:UIEdgeInsets
    
    @IBInspectable var itemDistance: NSInteger = 0
    @IBInspectable var direction:NSInteger = 0
    
    
    @IBInspectable var day: String = "1"{
        didSet{
            self.lblDayNumer.text = day
        }
    }
    
    @IBInspectable var month: String = "JAN"{
        didSet{
            self.lblMonthName.text = month
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clearColor(){
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "ACDateView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as UIView
    }

    
    required init(coder aDecoder: NSCoder) {
        date = NSDate()
        frameInset = UIEdgeInsetsZero
        itemDistance = 0
        direction = 0
        
        self.view = ACDateView.instanceFromNib()
        
        super.init(coder: aDecoder)
        addSubview(view)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
