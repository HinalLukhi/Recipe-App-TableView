//
//  DisplayVC.swift
//  Assi7_1
//
//  Created by DCS on 06/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class DisplayVC: UIViewController {

    public  let myLabel = UILabel()
    
    private let imgview:UIImageView={
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.image = UIImage(named: "f2")
        return img
    }()
    private let img1view:UIImageView={
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.image = UIImage(named: "clock")
        return img
    }()
    
    private let myView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        return view
    }()
    
    private let timeLb:UILabel={
        let label=UILabel()
        label.text="30 Minutes"
        label.textAlignment = .left
        label.textColor = .gray
        label.font = UIFont(name: label.font.fontName, size: 13)
        return label
        
    }()
    
    private let p1Lb:UILabel={
        let label=UILabel()
        label.text="Ingredients : 10"
        label.textAlignment = .left
        label.textColor = .gray
        label.font = UIFont(name: label.font.fontName, size: 13)
        return label
        
    }()
    
    private let contentLabel:UILabel={
        let label=UILabel()
        label.text="\u{21E8} Ingredients :"
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 15)
        return label
        
    }()
    
    private let contentlb:UILabel={
        let label=UILabel()
        label.text="\u{00BB} 250 gm pasta macaroni \n\u{00BB}teaspoon garlic\n\u{00BB} onion\n\u{00BB} carrot\n\u{00BB}  teaspoon chilli flakes\n\u{00BB} red chilli powder\n\u{00BB} tablespoon tomato ketchup \n\u{00BB} tablespoon red chilli sauce"
         label.font = UIFont(name: label.font.fontName, size: 13)
        label.textAlignment = .left
        label.numberOfLines = 8
        return label
        
    }()
    
    private let myView1: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        return view
    }()
    
    private let contentLabel1:UILabel={
        let label=UILabel()
        label.text="\u{21E8} Setps :"
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 15)
        return label
        
    }()
    
    private let contentlb1:UILabel={
        let label=UILabel()
        label.text="Step 1  : Boil the pasta\nStep 2 : Chop the vegetables \nStep 3 : Saute the veggies for 5-7 minutes \nstep 4  : Mix in the sauces, mix and add the boiled pasta "
        label.font = UIFont(name: label.font.fontName, size: 13)
        label.textAlignment = .left
        label.numberOfLines = 5
        return label
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(imgview)
        view.addSubview(myLabel)
        myView.addSubview(img1view)
        myView.addSubview(timeLb)
        myView.addSubview(p1Lb)
        myView.addSubview(contentLabel)
        myView.addSubview(contentlb)
        view.addSubview(myView)
        myView1.addSubview(contentLabel1)
        myView1.addSubview(contentlb1)
        view.addSubview(myView1)
        imgview.image = UIImage(named: myLabel.text!)
        
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        imgview.frame = CGRect(x: 0, y: 0, width: view.width, height: 250)
        img1view.frame = CGRect(x: 80, y: 15, width: 13, height: 13)
        timeLb.frame = CGRect(x: img1view.right+5, y: 11, width: 100, height: 20)
        p1Lb.frame = CGRect(x: timeLb.right+30, y: 11, width: 100, height: 20)
        contentLabel.frame = CGRect(x: 10, y: img1view.bottom+10, width: view.width-80, height: 20)
        contentlb.frame = CGRect(x: 20, y: contentLabel.bottom, width: view.width-80, height: 150)
        myView.frame = CGRect(x: 0, y: 200, width: view.width, height: 220)
        myView1.frame = CGRect(x: 0, y: myView.bottom, width: view.width, height: 350)
        contentLabel1.frame = CGRect(x: 10, y: 20 , width: view.width-80, height: 20)
        contentlb1.frame = CGRect(x: 20, y: contentLabel.bottom, width: view.width-80, height: 100)
        
    }
    
}
