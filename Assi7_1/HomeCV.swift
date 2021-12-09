//
//  HomeCV.swift
//  Assi7_1
//
//  Created by DCS on 06/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class HomeCV: UIViewController {
    
    public var foodArray = ["Cake","Pizaa","Salad","Burger","Breakfast"]
    public var searchData = [String]()
    private let tblView = UITableView()
    private let mySearchbar = UISearchBar()
    
    private var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        title = "Home"
        view.addSubview(mySearchbar)
        view.addSubview(tblView)
        //tblView.contentInset = .init(top: 0, left: 5, bottom: 30, right: -5)
        setuptableview()
        mySearchbar.delegate = self
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        mySearchbar.frame = CGRect(x: 0, y: 20, width: view.width, height: 50)
        
        tblView.frame = CGRect(x: 0, y: mySearchbar.bottom , width:view.width, height: view.height - view.safeAreaInsets.top - view.safeAreaInsets.bottom)
        
    }
    
    /*override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //checkAuth()
    }*/
    
    /*private func checkAuth()
    {
        if let uname = UserDefaults.standard.string(forKey: "usrename"){
            print(uname)
            //usernameLabel.text = "Welcome \(uname)"
        }else{
            let vc = Login()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            nav.setNavigationBarHidden(true, animated: false)
            present(nav,animated: false)
        }
    }*/
    
}
extension HomeCV : UITableViewDelegate ,UITableViewDataSource{
    
    private func setuptableview()
    {
        tblView.delegate = self
        tblView.dataSource = self
        tblView.register(TblCell.self, forCellReuseIdentifier: "Cell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchData.count
        }else{
            return foodArray.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TblCell
        if searching {
            cell.setupTblCell(title: searchData[indexPath.row])
        }
        else{
            cell.setupTblCell(title: foodArray[indexPath.row])
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(foodArray[indexPath.row])
        
        let vc = DisplayVC()
        vc.myLabel.text = foodArray[indexPath.row]
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension HomeCV : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.count == 0 {
            searching = false
        }
        else{
            searching = true
            searchData = foodArray.filter({ $0.lowercased().hasPrefix(searchText.lowercased()) })
        }
        tblView.reloadData()
    }
}
