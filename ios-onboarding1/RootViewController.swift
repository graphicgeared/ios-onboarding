//
//  RootViewController.swift
//  ios-onboarding1
//
//  Created by Grigorij Merkushev on 26/01/2018.
//  Copyright © 2018 Grigorii Merkushev. All rights reserved.
//

import Foundation
import UIKit

class RootViewController: UIViewController{
    
    @IBOutlet var getStartedButton: UIButton!;
    @IBOutlet var skipButton: UIButton!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        disableButon()
        getStartedButton.setTitleColor(.white, for: .normal)
        getStartedButton.layer.cornerRadius = 5;
        skipButton.addTarget(self, action: #selector(self.finish), for: .touchUpInside)
    }
    
    @IBAction func finish(){
        let storyBoard = UIStoryboard(name: "Onboarding", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "RootViewController") as! RootViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    func enableButon(){
        getStartedButton.layer.backgroundColor = UIColor(red:0.30, green:0.58, blue:0.99, alpha:1.0).cgColor;
        getStartedButton.addTarget(self, action: #selector(self.finish), for: .touchUpInside)
    }
    
    func disableButon(){
        getStartedButton.layer.backgroundColor = UIColor.gray.cgColor;
        getStartedButton.removeTarget(self, action: nil, for: .touchUpInside)
    }
}
