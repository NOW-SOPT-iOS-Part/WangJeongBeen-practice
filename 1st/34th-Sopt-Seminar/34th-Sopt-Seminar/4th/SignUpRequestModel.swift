//
//  SignUpRequestModel.swift
//  34th-Sopt-Seminar
//
//  Created by 왕정빈 on 2024/04/27.
//

import Foundation

struct SignUpRequestModel: Codable {
    let authenticationId: String
    let password: String
    let nickname: String
    let phone: String
}
