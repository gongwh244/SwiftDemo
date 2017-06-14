//
//  DetailViewController.swift
//  swiftLearningDemo
//
//  Created by gong on 2017/6/13.
//  Copyright © 2017年 gong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .white
        self.edgesForExtendedLayout = []
        
        
        let label = UILabel.init(frame: CGRect.init(x: 0, y: 20, width: 100, height: 44))
        label.text = "detail"
        label.backgroundColor = .blue
        self.view.addSubview(label)
        
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(tapAction))
        self.view.addGestureRecognizer(tap)
        
    }
    
    func tapAction(){
        let vc = ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
