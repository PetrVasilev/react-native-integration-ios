//
//  ViewController.swift
//  IosApp
//
//  Created by Petr Vasilev on 29.02.2020.
//  Copyright © 2020 Petr Vasilev. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func OpenReactNativeApp(_ sender: Any) {
        NSLog("Opening React Native App")
//        let jsCodeLocation = Bundle.main.url(forResource: "main", withExtension: "jsbundle")!
        
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        
        let mockData:NSDictionary = ["message": "Hello from Native iOS app"]
                
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "ReactNativeApp",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        
        let vc = UIViewController()
        vc.view = rootView
//        vc.modalPresentationStyle = .fullScreen
        vc.title = "React Native app"
        self.present(vc, animated: true, completion: nil)
    }
}
