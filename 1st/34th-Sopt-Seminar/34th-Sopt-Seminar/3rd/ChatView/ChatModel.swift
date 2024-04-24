//
//  ChatModel.swift
//  34th-Sopt-Seminar
//
//  Created by 왕정빈 on 2024/04/20.
//

import UIKit

struct ChatModel {
    let profileImg: UIImage
    let name: String
    let place: String
    let message: String
    let itemImg: UIImage
}

extension ChatModel {
    static func dummy() -> [ChatModel] {
        return [
            ChatModel(profileImg: UIImage(named: "Ellipse 2")!, name: "류희재", place: "성북구", message: "땡큐", itemImg: UIImage(named: "Rectangle 2")!),
            ChatModel(profileImg: UIImage(named: "Ellipse 3")!, name: "윤희슬", place: "여의도", message: "안녕", itemImg: UIImage(named: "Rectangle 3")!),
            ChatModel(profileImg: UIImage(named: "Ellipse 4")!, name: "김가현", place: "잠실", message: "아요", itemImg: UIImage(named: "Rectangle 4")!),
            ChatModel(profileImg: UIImage(named: "Frame 51")!, name: "김선우", place: "회기", message: "너무 좋아요", itemImg: UIImage(named: "Rectangle 5")!),
            ChatModel(profileImg: UIImage(named: "Frame 75")!, name: "김나연", place: "미국", message: "뿅", itemImg: UIImage(named: "Rectangle 6")!),
            ChatModel(profileImg: UIImage(named: "Ellipse 2")!, name: "김민서", place: "중국", message: "뿡", itemImg: UIImage(named: "Rectangle 7")!),
            ChatModel(profileImg: UIImage(named: "Ellipse 3")!, name: "김수연", place: "일본", message: "자기야 미안해 했자나", itemImg: UIImage(named: "Rectangle 8")!),
            ChatModel(profileImg: UIImage(named: "Ellipse 4")!, name: "한지석", place: "태국", message: "솝트 이딴거 안했어", itemImg: UIImage(named: "Rectangle 9")!),
            ChatModel(profileImg: UIImage(named: "Frame 51")!, name: "한정원", place: "명왕성", message: "진짜?", itemImg: UIImage(named: "Rectangle 10")!),
            ChatModel(profileImg: UIImage(named: "Frame 75")!, name: "이지훈", place: "안드로메다", message: "난이서~", itemImg: UIImage(named: "Rectangle 11")!)
        ]
    }
}
