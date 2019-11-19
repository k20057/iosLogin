//
//  LoginController.swift
//  iosLogin
//
//  Created by  明智 on 2019/11/19.
//  Copyright © 2019 ming. All rights reserved.
//

import UIKit
import FacebookLogin
class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
        let manager = LoginManager()
        
        manager.logIn(permissions: [.publicProfile], viewController: self) { (result) in
        if case LoginResult.success(granted: _, declined: _, token: _) = result{
            self.dismiss(animated: true, completion: nil)
            }
                
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
