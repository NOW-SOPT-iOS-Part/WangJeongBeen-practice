//
//  LoginViewController3.swift
//  34th-Sopt-Seminar
//
//  Created by 왕정빈 on 2024/04/20.
//

import UIKit

class LoginViewController3: UIViewController {

    private let loginView = LoginView3()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func loadView() {
        view = loginView
    }

}
