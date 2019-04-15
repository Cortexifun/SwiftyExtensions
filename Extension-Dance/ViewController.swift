//
//  ViewController.swift
//  Extension-Dance
//
//  Created by Omid on 15.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var colorizeBtn: UIButton!
    @IBOutlet weak var WiggleBtn: UIButton!
    @IBOutlet weak var dimBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func colorizeBtnPressed(_ sender: Any) {
        colorizeBtn.colorize()
    }
    
    @IBAction func wiggleBtnPressed(_ sender: Any) {
        WiggleBtn.wiggle()
    }
    
    @IBAction func dimBtnPressed(_ sender: Any) {
        dimBtn.dim()
    }
    
}

