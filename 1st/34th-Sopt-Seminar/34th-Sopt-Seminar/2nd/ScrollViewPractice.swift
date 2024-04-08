//
//  ScrollViewPractice.swift
//  34th-Sopt-Seminar
//
//  Created by 왕정빈 on 2024/04/06.
//

import UIKit
import SnapKit
import Then

class ScrollViewPractice: UIViewController {
    
    private let scrollView = UIScrollView()
    private let mainView = UIView()
    private let contentView1 = UIView()
    private let contentView2 = UIView()
    private let contentView3 = UIView()
    private let contentView4 = UIView()
    private let contentView5 = UIView()
    private let contentView6 = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        setLayout()
    }
  
    private func setUI() {
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.addSubview(mainView)
        
        [contentView1, contentView2, contentView3, contentView4, contentView5, contentView6]
            .forEach { mainView.addSubview($0) }
        
        contentView1.do { $0.backgroundColor = .red}
        contentView2.do { $0.backgroundColor = .orange}
        contentView3.do { $0.backgroundColor = .yellow}
        contentView4.do { $0.backgroundColor = .green}
        contentView5.do { $0.backgroundColor = .blue}
        contentView6.do { $0.backgroundColor = .purple}
    }
    
    private func setLayout() {
        let halfScreenWidth = UIScreen.main.bounds.size.width / 2
        
        scrollView.snp.makeConstraints { $0.edges.equalToSuperview() }
        
        mainView.snp.makeConstraints {
            $0.edges.equalTo(scrollView)
            $0.width.equalTo(scrollView)
            $0.height.greaterThanOrEqualToSuperview().priority(.low)
        }
        
        contentView1.snp.makeConstraints {
            $0.top.leading.equalTo(mainView)
            $0.width.equalTo(halfScreenWidth)
            $0.height.equalTo(400)
        }
        
        contentView2.snp.makeConstraints {
            $0.top.trailing.equalTo(mainView)
            $0.width.equalTo(halfScreenWidth)
            $0.height.equalTo(400)
        }
        
        contentView3.snp.makeConstraints {
            $0.top.equalTo(contentView1.snp.bottom)
            $0.leading.equalTo(mainView)
            $0.width.equalTo(halfScreenWidth)
            $0.height.equalTo(400)
        }

        contentView4.snp.makeConstraints {
            $0.top.equalTo(contentView2.snp.bottom)
            $0.trailing.equalTo(mainView)
            $0.width.equalTo(halfScreenWidth)
            $0.height.equalTo(400)
        }
        
        contentView5.snp.makeConstraints {
            $0.top.equalTo(contentView3.snp.bottom)
            $0.leading.equalTo(mainView)
            $0.width.equalTo(halfScreenWidth)
            $0.height.equalTo(400)
            $0.bottom.equalTo(mainView)
        }

        contentView6.snp.makeConstraints {
            $0.top.equalTo(contentView4.snp.bottom)
            $0.trailing.equalTo(mainView)
            $0.width.equalTo(halfScreenWidth)
            $0.height.equalTo(400)
        }
    }

}
