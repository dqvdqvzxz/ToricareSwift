//
//  TRCBaseViewController.swift
//  ToricareSwift
//
//  Created by Mèo Béo on 6/22/17.
//  Copyright © 2017 Mèo Béo. All rights reserved.
//

import UIKit

class TRCBaseViewController: UIViewController {
    
    var backButton: UIBarButtonItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tap to cancel keyboard
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.navigationController?.navigationBar.barTintColor = UIColor.init(hexString: MAIN_COLOR)
        self.navigationController?.navigationBar.tintColor = UIColor.init(hexString: BUTTON_TITLE_COLOR)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }

    //call this function when the tap is recognized
    func dismissKeyboard(){
        view.endEditing(true)
    }
    
    //func back button
    func back(sender: UIBarButtonItem){
        _ = navigationController?.popViewController(animated: true)
    }
}
