//
//  IntroViewController.swift
//  swiftLearningDemo
//
//  Created by gong on 2017/6/10.
//  Copyright © 2017年 gong. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController,UIScrollViewDelegate {
    
    var mainScrollView:UIScrollView!
    var mainImageView:UIImageView!
    var pageControl:UIPageControl!
    var enterButton:UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.makeUI()
    }
    
    func makeUI(){
        
        mainImageView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH * 4, height: SCREEN_HEIGHT))
        mainImageView.image = UIImage.init(named: IS_Iphone_4 ? "LiveBootstrapper_4" : "LiveBootstrapper")
        mainScrollView = UIScrollView.init(frame: UIScreen.main.bounds)
        mainScrollView.addSubview(mainImageView)
        mainScrollView.contentSize = mainImageView.bounds.size
        mainScrollView.isPagingEnabled = true
        mainScrollView.bounces = false
        mainScrollView.delegate = self
        self.view.addSubview(mainScrollView)
        
        pageControl = UIPageControl.init(frame: CGRect.init(x: SCREEN_WIDTH * 0.5 - 50, y: SCREEN_HEIGHT - 40, width: 100, height: 40))
        pageControl.pageIndicatorTintColor = UIColor.lightGray
        pageControl.currentPageIndicatorTintColor = UIColor.black
        pageControl.numberOfPages = 4
        self.view.addSubview(pageControl)
        
        enterButton = UIButton.init(frame: CGRect.init(x: SCREEN_WIDTH * 3.5 - 50 , y: SCREEN_HEIGHT - 150, width: 100, height: 50))
        enterButton.backgroundColor = UIColor.red
        enterButton.setTitle("enter", for: .normal)
        enterButton.addTarget(self, action: #selector(enterAction), for: .touchUpInside)
        mainScrollView.addSubview(enterButton)
    }
    
    func enterAction(){
        print("enter")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x/SCREEN_WIDTH)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
