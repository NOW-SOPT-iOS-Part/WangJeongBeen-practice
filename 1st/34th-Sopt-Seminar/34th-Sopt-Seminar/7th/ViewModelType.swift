//
//  ViewModelType.swift
//  34th-Sopt-Seminar
//
//  Created by 왕정빈 on 6/7/24.
//

import RxSwift

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(from input: Input, disposeBag: RxSwift.DisposeBag) -> Output
}
