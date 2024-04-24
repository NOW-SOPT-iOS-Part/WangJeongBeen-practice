//
//  ChatViewController.swift
//  34th-Sopt-Seminar
//
//  Created by 왕정빈 on 2024/04/20.
//
import UIKit
import SnapKit

class ChatViewController: UIViewController {
    
    private let chatTableView = UITableView(frame: .zero, style: .plain)
    private let itemList = ChatModel.dummy()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayout()
        register()
    }
    
    private func register() {
        chatTableView.delegate = self
        chatTableView.dataSource = self
        chatTableView.register(ChatTableViewCell.self, forCellReuseIdentifier: "ChatTableViewCell")
    }
    
    private func setLayout() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(chatTableView)
        
        chatTableView.snp.makeConstraints { $0.edges.equalTo(view.safeAreaLayoutGuide) }
    }
}

extension ChatViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ChatTableViewCell", for: indexPath) as? ChatTableViewCell else { return UITableViewCell()}
        
        cell.dataBind(itemList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
}
