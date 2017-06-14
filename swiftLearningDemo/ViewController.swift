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
    
    var listTableVIew: UITableView!
    
    var editButton:UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        
        listTableVIew = UITableView.init(frame: CGRect.init(x: 0, y:0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: .plain)
        listTableVIew.delegate = self;
        listTableVIew.dataSource = self;
        listTableVIew.tableFooterView = UIView.init()
        self.view.addSubview(listTableVIew)
        
        editButton = UIButton.init(frame: CGRect.init())
        editButton.addTarget(self, action: #selector(makeUI), for: .touchUpInside)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 23
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style:.default, reuseIdentifier: "cell")
            cell?.backgroundColor = .white
        }
        cell?.textLabel?.text = "哈哈哈"
        cell?.textLabel?.textColor = .red
        cell?.textLabel?.backgroundColor = .black
        cell?.selectionStyle = .none
        return cell!
    }
    
    func makeUI() -> Void {
        print("heheh")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailVc = DetailViewController();
        detailVc.title = "abc"
        detailVc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(detailVc, animated:true)
        
        print("tableview.frame = \(NSStringFromCGRect(listTableVIew.frame))")
        print("tableview.contentInset = \(NSStringFromUIEdgeInsets(listTableVIew.contentInset))")
    }
}

