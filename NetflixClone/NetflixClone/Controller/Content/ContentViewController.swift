//
//  ContentViewController.swift
//  NetlixClone
//
//  Created by 양중창 on 2020/03/24.
//  Copyright © 2020 Netflex. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    private let bluredBackgroundView = BluredBackgroundView()
    private let contentTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setConstraints()
    }
    
    private func setUI() {
        view.addSubview(contentTableView)
        contentTableView.delegate = self
        contentTableView.dataSource = self
        contentTableView.separatorStyle = .none
        contentTableView.contentInsetAdjustmentBehavior = .never
        contentTableView.backgroundView = bluredBackgroundView
        contentTableView.allowsSelection = false
        
        contentTableView.register(PosterTableViewCell.self, forCellReuseIdentifier: PosterTableViewCell.identifier)
        contentTableView.register(SummaryTableViewCell.self, forCellReuseIdentifier: SummaryTableViewCell.identifier)
        contentTableView.register(StaffTableViewCell.self, forCellReuseIdentifier: StaffTableViewCell.identifier)
        contentTableView.register(ButtonsTableViewCell.self, forCellReuseIdentifier: ButtonsTableViewCell.identifier)
        contentTableView.register(RecommendedTableViewCell.self, forCellReuseIdentifier: RecommendedTableViewCell.identifier)
    }
    
    private func setConstraints() {
        contentTableView.snp.makeConstraints {
            $0.leading.trailing.top.bottom.equalTo(view)
        }
    }
}

extension ContentViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: PosterTableViewCell.identifier, for: indexPath) as! PosterTableViewCell
            cell.delegate = self
            return cell
        } else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: SummaryTableViewCell.identifier, for: indexPath) as! SummaryTableViewCell
            return cell
        } else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: StaffTableViewCell.identifier, for: indexPath) as! StaffTableViewCell
            return cell
        } else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: ButtonsTableViewCell.identifier, for: indexPath) as! ButtonsTableViewCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: RecommendedTableViewCell.identifier, for: indexPath) as! RecommendedTableViewCell
            cell.delegate = self
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = tableView.frame.height
        
        if indexPath.row == 0 {
            // poster
            return UITableView.automaticDimension
        } else if indexPath.row == 1{
            // summary
            return UITableView.automaticDimension
        } else if indexPath.row == 2 {
            // staff
            return UITableView.automaticDimension
        } else if indexPath.row == 3 {
            // button
            return CGFloat.dynamicYMargin(margin: 70)
        } else {
            // recommend
            return CGFloat.dynamicYMargin(margin: height * 0.5)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
//        print(scrollView.contentOffset.y)
//        print(bluredBackgroundView.blackView.alpha)
        let height = (scrollView.contentSize.height) * 0.1
        
        if (scrollView.contentOffset.y >= 0 && scrollView.contentOffset.y <= height) {
            let percent = (scrollView.contentOffset.y / height)
            bluredBackgroundView.blackView.alpha = percent
        } else if (scrollView.contentOffset.y > height){
            bluredBackgroundView.blackView.alpha = 1
        }
    }
    
}

extension ContentViewController: RecommendedCellDalegate {
    func didTapRecommendedContents() {
        // MARK: 서버로부터 컨텐츠 아이디 값 받아서 present 할 것
        
        print("해당 컨텐츠 상세화면으로 이동 할 것")
        
    }
}

extension ContentViewController: DismissDelegate {
    func dismiss() {
        presentingViewController?.dismiss(animated: true)
    }
}




