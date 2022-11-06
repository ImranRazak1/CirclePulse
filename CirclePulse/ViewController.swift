//
//  ViewController.swift
//  CirclePulse
//
//  Created by Imran razak on 25/10/2022.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let hostingController = UIHostingController(rootView: PulsingView())

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       

        // Add the hosting controller as a child view controller
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)

        // Now position & size the hosting controller’s view as desired…
        
        Constraints()
        
        
        
    }
    
    func Constraints() {
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        hostingController.view.topAnchor.constraint (equalTo: view.topAnchor) .isActive = true
        hostingController.view.bottomAnchor.constraint (equalTo: view.bottomAnchor) .isActive = true
        hostingController.view.leftAnchor.constraint (equalTo: view.leftAnchor).isActive = true
        hostingController.view.rightAnchor.constraint (equalTo: view.rightAnchor).isActive = true
    }
}

