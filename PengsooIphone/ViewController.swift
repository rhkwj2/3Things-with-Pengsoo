//
//  ViewController.swift
//  PengsooIphone
//
//  Created by Kim Yeon Jeong on 2020/2/3.
//  Copyright © 2020 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{


    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet var scrollViewCollection: [UIScrollView]!
    @IBOutlet var imageViewCollection: [UIImageView]!
    
    var curPage = 0
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
           curPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
           pageController.currentPage = curPage
           if curPage + 1 < 7{
               scrollViewCollection[curPage + 1].zoomScale = 1.0
           }
           if curPage - 1 >= 0 {
            scrollViewCollection[curPage - 1].zoomScale = 1.0
           }
       }
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

