//
//  ViewController.swift
//  CirclePulse
//
//  Created by Imran razak on 25/10/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let pulsingView = PulsingView()
        view.addSubview(pulsingView)
        
        
        //pulsingView.constrainCenter(to: view)
        
    }


}

