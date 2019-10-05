//
//  ViewController.swift
//  Dark Mode
//
//  Created by Christiano Gontijo on 5/10/19.
//  Copyright © 2019 kiwiswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var modeButton: UIButton!
    
    @IBAction func buttonAction(_ sender: Any) {
        
        let style = self.traitCollection.userInterfaceStyle
        UIView.transition(with: self.view,
                          duration: 0.7,
                          options: [.transitionCrossDissolve],
                          animations: {
                            self.overrideUserInterfaceStyle = style == .light ? .dark : .light
                            self.modeButton.setImage(style == .light ? #imageLiteral(resourceName: "dark mode") : #imageLiteral(resourceName: "light mode"), for: .normal)
        },
                          completion: nil
        )
        
    }
    
    
}

