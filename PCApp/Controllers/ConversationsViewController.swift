//
//  ViewController.swift
//  PCApp
//
//  Created by Hajara Osman on 3/14/22.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red   //set the background color for the screen

    }

    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
   
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
                                    
        if !isLoggedIn {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true)
            
            
        }
    }

}

