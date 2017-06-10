//
//  ViewController.swift
//  swiftLearningDemo
//
//  Created by gong on 2017/6/1.
//  Copyright © 2017年 gong. All rights reserved.
//

import UIKit


enum CompassPoint {
    case north
    case south
    case east
    case west
}


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var navigationView: UIView!
    var listTableVIew: UITableView!
    
    var editButton:UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 64))
        self.navigationView.backgroundColor = UIColor.red
        self.view.addSubview(self.navigationView)
        
        listTableVIew = UITableView.init(frame: CGRect.init(x: 0, y: 64, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 64), style: .plain)
        listTableVIew.delegate = self;
        listTableVIew.dataSource = self;
        listTableVIew.tableFooterView = UIView.init()
        self.view.addSubview(listTableVIew)
        
        editButton = UIButton.init(frame: CGRect.init())
        editButton.addTarget(self, action: #selector(makeUI), for: .touchUpInside)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style:.default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = "abc"
        cell?.selectionStyle = .none
        return cell!
    }
    
    func makeUI() -> Void {
        print("heheh")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

