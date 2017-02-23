//
//  ViewController.swift
//  SimpleTable
//
//  Created by Benjamin Wilcox on 2/21/17.
//  Copyright © 2017 Benjamin Wilcox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showColorSegue"{
            let colorsVC = segue.destination.childViewControllers[0] as! ColorsTableVC
//            colorsVC.colors = ["cyan","magento","yellow"]
            colorsVC.title = "Choose a color"
        }
    }

}

