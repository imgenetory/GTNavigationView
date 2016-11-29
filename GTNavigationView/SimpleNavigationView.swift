//
//  MainNavigationView.swift
//  OnePlusOne
//
//  Created by General Factory on 2016. 10. 24..
//  Copyright © 2016년 General Factory. All rights reserved.
//

import UIKit

class MainNavigationView: UIView {
    
    var containerView: UIView!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dividerImageView: UIImageView!

    // MARK : Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.commonInitialization()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.commonInitialization()
    }
    
    func commonInitialization() {
        containerView = Bundle.main.loadNibNamed("MainNavigationView", owner: self, options: nil)?.first as! UIView
        containerView.frame = self.bounds
        self.addSubview(containerView)
    }
    
    func initVar() {
        
    }
    
    func initBackgroundView() {
        self.containerView.backgroundColor = UIColor.purple
    }
    
    func initButtons() {
        leftButton.isHidden = true
        rightButton.isHidden = true
    }
    
    func initTitleLabel() {
        titleLabel.font = .boldSystemFont(ofSize: 16.0)
        titleLabel.textAlignment = .center
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.initVar()
        self.initBackgroundView()
        self.initButtons()
        self.initTitleLabel()
    }
    
    // MARK : Event
    
    func setTitle(title: NSString?) {
        self.titleLabel.text = title as? String
    }
    
    func setTitleColor(color: UIColor) {
        self.titleLabel.textColor = color
    }
    
    func setNaviBGColor(color: UIColor) {
        self.containerView.backgroundColor = color
    }
    
    func setDivider(enable: Bool) {
        self.dividerImageView.isHidden = !enable
    }
    
}
