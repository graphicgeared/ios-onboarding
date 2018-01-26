//
//  FirstViewController.swift
//  barbershopcat
//
//  Created by Grigorij Merkushev on 12/01/2018.
//  Copyright © 2018 Grigorii Merkushev. All rights reserved.
//

import UIKit

class PageItemViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var pageImage: UIImageView!
    
    func initOutlets(){
        print("hack for init view \(self.view.frame.height)");
    }
    
    func setLabel(text: String) -> Void{
        label.text = text
    }
    
    func setImage(imageName: String) -> Void{
        pageImage.image = UIImage(named: imageName)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}



