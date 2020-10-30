//
//  HabitCreateViewController.swift
//  Hazzle
//
//  Created by 이지원 on 2020/10/23.
//

import UIKit

class HabitCreateViewController: UIViewController {
    
    // MARK: - Properties
    lazy var contentViewSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + 400)
    
    // MARK: - Views
    lazy var containerView = UIView().then {
        $0.backgroundColor = .white
        $0.frame.size = contentViewSize
    }
    
    lazy var scrollView = UIScrollView().then {
        $0.frame = .zero
        $0.backgroundColor = .white
        $0.frame = self.view.bounds
        $0.contentSize = contentViewSize
        $0.autoresizingMask = .flexibleHeight
        $0.showsHorizontalScrollIndicator = true
        $0.bounces = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(scrollView)
        scrollView.addSubview(containerView)
    }
}
