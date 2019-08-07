//
//  ViewController.swift
//  SlideInMenu
//
//  Created by Nelson Gonzalez on 8/7/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var buttonView: UIView!
    
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 6
        
        leadingConstraint.constant = -190
        menuShowing = false
        buttonView.isHidden = true
    }

    @IBAction func openMenuBarButtonPressed(_ sender: UIBarButtonItem) {
        if menuShowing {
            leadingConstraint.constant = -190
        } else {
            buttonView.isHidden = false
        leadingConstraint.constant = 0
        
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        }
        
        menuShowing = !menuShowing
    }
    @IBAction func closeButton(_ sender: UIButton) {
        buttonView.isHidden = true
        leadingConstraint.constant = -190
        menuShowing = false
        
    }
    
}

