//
//  Login.swift
//  Assi7_1
//
//  Created by DCS on 06/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Login: UIViewController {

    private let myLabel:UILabel={
        let label=UILabel()
        label.text="Recipe"
        label.textAlignment = .center
        label.textColor = .green
        label.font = UIFont.boldSystemFont(ofSize: 45)
        //label.backgroundColor = .white
        return label
        
    }()
    private let myLabel1:UILabel={
        let label=UILabel()
        label.text="Help To cook Healthy Recipe"
        label.textAlignment = .left
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        //label.backgroundColor = .white
        return label
        
    }()
    private let unameTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter UserName"
        textField.textAlignment = .center
        textField.backgroundColor = .white
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.cornerRadius = 15
        return textField
    }()
    private let pwdTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Password"
        textField.isSecureTextEntry = true
        textField.textAlignment = .center
        textField.backgroundColor = .white
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.cornerRadius = 15
        return textField
    }()
    
    private let LogInButton:UIButton={
        let button=UIButton()
        button.setTitle("LogIn", for: .normal)
        button.addTarget(self, action: #selector(OnLoginClicked), for: .touchUpInside)
        button.backgroundColor = .green
        button.layer.cornerRadius = 20
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        view.addSubview(myLabel)
        view.addSubview(myLabel1)
        view.addSubview(unameTextField)
        view.addSubview(pwdTextField)
        view.addSubview(LogInButton)
        
        assignbackground()
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        myLabel.frame = CGRect(x: 40, y: 150, width: view.width-80, height: 50)
        myLabel1.frame = CGRect(x: 100, y: myLabel.bottom, width: view.width-80, height: 20)
        unameTextField.frame = CGRect(x: 40, y: 300, width: view.width-80, height: 40)
        pwdTextField.frame = CGRect(x: 40, y: unameTextField.bottom+20, width: view.width-80, height: 40)
        LogInButton.frame = CGRect(x: 40, y: pwdTextField.bottom+20, width: view.width-80, height: 40)
    }
    
    @objc  private func OnLoginClicked()
    {
        
       // UserDefaults.standard.setValue(unameTextField.text, forKey: "username")
         //self.dismiss(animated: false)
        let vc = HomeCV()
        //navigationController?.setNavigationBarHidden(true, animated: false)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    func assignbackground(){
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "bg1")
        imageView.center = view.center
        
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
}
