//
//  UserInfoResponseModel.swift
//  34th-Sopt-Seminar
//
//  Created by 왕정빈 on 2024/04/27.
//

import Foundation

// MARK: - UserInfoResponseModel
struct UserInfoResponseModel: Codable {
    let code: Int
    let message: String
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let authenticationId, nickname, phone: String
}
