//
//  modalSettingsView.swift
//  openXCenabler
//
//  Created by Tim Buick on 2016-09-13.
//  Copyright (c) 2016 Ford Motor Company Licensed under the BSD license.
//

import UIKit
import openXCiOSFramework


class modalSettingsView: UIViewController, UITextFieldDelegate {
    
    // UI outlets
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var aboutView: UIView!
    @IBOutlet weak var recView: UIView!
    @IBOutlet weak var srcView: UIView!
    
    @IBOutlet weak var appVersion: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let versionNumberString = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
        
        appVersion.text = versionNumberString
        
        
    }
    
    
    // close modal view
    @IBAction func hideHit(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    // show 'about' view
    @IBAction func aboutHit(_ sender: AnyObject) {
        aboutView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        mainView.addSubview(aboutView)
    }
    
    // show 'record' view
    @IBAction func recHit(_ sender: AnyObject) {
        
        
    }
    
    
    // 'back' hit, clear all view and show initial menu view
    @IBAction func backHit(_ sender: AnyObject) {
        
        aboutView.removeFromSuperview()
    }
    // 'back' hit, clear all view and show initial menu view
    @IBAction func notificationBtnClick(_ sender: AnyObject) {
        
        
    }
}
