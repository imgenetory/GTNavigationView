//
//  ViewController.swift
//  GTNavigationView
//
//  Created by 문지윤 on 11/30/2016.
//  Copyright (c) 2016 문지윤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var simpleNavigationView: SimpleNavigationView!
    @IBOutlet weak var complexNavigationView: ComplexNavigationView!
    
    func initSimpleNavigationView() {
        self.simpleNavigationView.titleLabel.text = "SimpleNavigationView"
        self.simpleNavigationView.titleLabel.textColor = .white
        
        self.simpleNavigationView.leftButton.isHidden = false
        self.simpleNavigationView.leftButton.setTitle("L", for: .normal)
        self.simpleNavigationView.leftButton.setTitleColor(.white, for: .normal)
        
        self.simpleNavigationView.rightButton.isHidden = false
        self.simpleNavigationView.rightButton.setTitle("R", for: .normal)
        self.simpleNavigationView.rightButton.setTitleColor(.white, for: .normal)
    }
    
    func initComplexNavigationView() {
        self.complexNavigationView.titleLabel.text = "ComplexNavigationView"
        self.complexNavigationView.titleLabel.textColor = .white
        
        self.complexNavigationView.leftButton.isHidden = false
        self.complexNavigationView.leftButton.setTitle("L", for: .normal)
        self.complexNavigationView.leftButton.setTitleColor(.white, for: .normal)
        
        self.complexNavigationView.leftSubButton.isHidden = false
        self.complexNavigationView.leftSubButton.setTitle("LS", for: .normal)
        self.complexNavigationView.leftSubButton.setTitleColor(.white, for: .normal)
        
        self.complexNavigationView.rightSubButton.isHidden = false
        self.complexNavigationView.rightSubButton.setTitle("RS", for: .normal)
        self.complexNavigationView.rightSubButton.setTitleColor(.white, for: .normal)
        
        self.complexNavigationView.rightButton.isHidden = false
        self.complexNavigationView.rightButton.setTitle("R", for: .normal)
        self.complexNavigationView.rightButton.setTitleColor(.white, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initSimpleNavigationView()
        self.initComplexNavigationView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

