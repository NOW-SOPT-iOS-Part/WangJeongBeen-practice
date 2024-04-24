//
//  ChatTableViewCell.swift
//  34th-Sopt-Seminar
//
//  Created by 왕정빈 on 2024/04/20.
//

import UIKit
import SnapKit
import Then

class ChatTableViewCell: UITableViewCell {
    
    private let userImage = UIImageView()
    private let userID = UILabel()
    private let userLocation = UILabel()
    private let chatLabel = UILabel()
    private let itemImage = UIImageView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUI()
        setLayout()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        userImage.do {
            $0.image = UIImage(systemName: "person")
            $0.layer.cornerRadius = 20
        }
        
        userID.do {
            $0.font = .boldSystemFont(ofSize: 18)
            $0.textColor = .black
        }
        
        userLocation.do {
            $0.font = .systemFont(ofSize: 14)
            $0.textColor = .lightGray
        }
        
        chatLabel.do {
            $0.font = .systemFont(ofSize: 17)
            $0.textColor = .black
        }
        
        itemImage.do {
            $0.image = UIImage(systemName: "pencil")
            $0.layer.cornerRadius = 5
        }
    }
    
    private func setLayout() {
        [userImage, userID, userLocation, chatLabel, itemImage]
            .forEach { addSubview($0) }
        
        userImage.snp.makeConstraints {
            $0.top.leading.bottom.equalToSuperview().inset(16)
            $0.width.height.equalTo(40)
        }
        
        userID.snp.makeConstraints {
            $0.top.equalToSuperview().offset(16.5)
            $0.leading.equalTo(userImage.snp.trailing).offset(10)
        }
        
        userLocation.snp.makeConstraints {
            $0.top.equalTo(userID).offset(1)
            $0.leading.equalTo(userID.snp.trailing).offset(3)
        }
        
        chatLabel.snp.makeConstraints {
            $0.top.equalTo(userID.snp.bottom).offset(5)
            $0.leading.equalTo(userID)
        }
        
        itemImage.snp.makeConstraints {
            $0.top.trailing.bottom.equalToSuperview().inset(16)
            $0.width.height.equalTo(40)
        }
    }
    
    func dataBind(_ chatData: ChatModel) {
            userImage.image = chatData.profileImg
            userID.text = chatData.name
            userLocation.text = chatData.place
            chatLabel.text = chatData.message
            itemImage.image = chatData.itemImg
        }
}
