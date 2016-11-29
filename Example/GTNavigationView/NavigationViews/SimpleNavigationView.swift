//
//  SimpleNavigationView.swift
//  GTNavigationView
//
//  Created by General Factory on 2016. 11. 30..
//  Copyright © 2016년 Genetory. All rights reserved.
//

import UIKit

class SimpleNavigationView: UIView {
    
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
        containerView = Bundle.main.loadNibNamed("SimpleNavigationView", owner: self, options: nil)?.first as! UIView
        containerView.frame = self.bounds
        self.addSubview(containerView)
    }
    
    func initVar() {
        
    }
    
    func initBackgroundView() {
        self.containerView.backgroundColor = UIColor.init(red: 100/255, green: 149/255, blue: 251/255, alpha: 1.0)
    }
    
    func initButtons() {
        leftButton.isHidden = true
        rightButton.isHidden = true
    }
    
    func initTitleLabel() {
        titleLabel.font = .boldSystemFont(ofSize: 16.0)
        titleLabel.textAlignment = .center
        titleLabel.text = "GTNavigationView"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.initVar()
        self.initBackgroundView()
        self.initButtons()
        self.initTitleLabel()
    }
    
}
