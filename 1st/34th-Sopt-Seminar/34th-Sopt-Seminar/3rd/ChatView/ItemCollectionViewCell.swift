//
//  ChatCollectionViewCell.swift
//  34th-Sopt-Seminar
//
//  Created by 왕정빈 on 2024/04/20.
//

import UIKit
import Then
import SnapKit

protocol ItemCollectoinViewCellDelegate: AnyObject {
    func heartButtonDidTapEvent(state: Bool, row: Int)
}

class ItemCollectionViewCell: UICollectionViewCell {
    
    var itemRow: Int?
    
    weak var delegate: ItemCollectoinViewCellDelegate?
    
    private let itemImage = UIImageView()
    private let itemName = UILabel()
    private let itemPrice = UILabel()
    lazy var heartButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        itemImage.do {
            $0.layer.cornerRadius = 3
        }
        
        itemName.do {
            $0.font = .boldSystemFont(ofSize: 19)
            $0.textColor = .black
        }
        
        itemPrice.do {
            $0.font = .boldSystemFont(ofSize: 18)
            $0.textColor = .orange
        }
        
        heartButton.do {
            $0.setImage(UIImage(systemName: "heart"), for: .normal)
            $0.setImage(UIImage(systemName: "heart.fill"), for: .selected)
            $0.addTarget(self, action: #selector(heartButtonDidTap), for: .touchUpInside)
        }
    }
    
    @objc func heartButtonDidTap() {
            self.heartButton.isSelected.toggle()
            if let itemRow {
                self.delegate?.heartButtonDidTapEvent(
                    state: self.heartButton.isSelected,
                    row: itemRow
                )
            }
        }
    
    private func setLayout() {
        [itemImage, itemName, itemPrice, heartButton]
            .forEach { addSubview($0) }
        
        itemImage.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(9)
            $0.width.height.equalTo(139)
        }
        
        itemName.snp.makeConstraints {
            $0.top.equalTo(itemImage.snp.bottom).offset(5)
            $0.leading.equalToSuperview().offset(14)
        }
        
        itemPrice.snp.makeConstraints {
            $0.top.equalTo(itemName.snp.bottom).offset(5)
            $0.leading.equalTo(itemName)
        }
        
        heartButton.snp.makeConstraints {
            $0.trailing.bottom.equalTo(itemImage).inset(8)
            $0.height.width.equalTo(15)
        }
    }
}

extension ItemCollectionViewCell {
    func dataBind(_ itemData: ItemModel, itemRow: Int) {
        itemImage.image = itemData.itemImg
        itemName.text = itemData.name
        itemPrice.text =  itemData.price
        heartButton.isSelected = itemData.heartIsSelected
        self.itemRow = itemRow
    }
}
