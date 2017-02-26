//
//  ViewController.swift
//  SimpleTable
//
//  Created by Benjamin Wilcox on 2/21/17.
//  Copyright © 2017 Benjamin Wilcox. All rights reserved.
//

import UIKit

let myColorChangedNotification = NSNotification.Name("colorChangedNotification")
let isPad = UIDevice.current.userInterfaceIdiom == .pad

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        // get the notification center singleton
        let nc = NotificationCenter.default
        
        // register this object as an observer
        nc.addObserver(self, selector: #selector(colorChanged), name: myColorChangedNotification, object: nil)
        
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
    
    // MARK: - Notifications -
    func colorChanged(n:Notification){
        // pull our data dictionary out of the notification
        let d = n.userInfo!
        let color = d["color"] as! UIColor
        
        // change the background color
        self.view.backgroundColor = color
    }
    
    // MARK: - Storyboard Actions -
    @IBAction func unwindToMain(segue:UIStoryboardSegue) {
        if segue.identifier == "DoneTapped"{
            let colorVC = segue.source as! ColorsTableVC
            let color = colorVC.selectedColor
            self.view.backgroundColor = color
        }
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

