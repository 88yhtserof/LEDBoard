//
//  ViewController.swift
//  LEDBoard
//
//  Created by limyunhwi on 2021/11/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblContents: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.lblContents.textColor = .yellow
    }


}

