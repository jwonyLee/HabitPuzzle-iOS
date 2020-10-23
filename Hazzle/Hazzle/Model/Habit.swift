//
//  Habit.swift
//  Hazzle
//
//  Created by 이지원 on 2020/10/20.
//

import Foundation
import RealmSwift

/**
 Habit is a class for save data Realm model objects.
 
 - `identifier`: 식별자
 - `name`: 이름
 - `date`: 생성일
 - `photo`: 퍼즐 이미지
 - `goal`: 목표 횟수
 - `numberOfDays`: 일주일 주기
 - `grid`: 완료한 퍼즐을 저장할 `Boolean` 타입의 2차원 배열
 - `count`: 완료 횟수
 */
class Habit: Object {
    @objc dynamic var identifier = UUID().uuidString
    @objc dynamic var name = ""
    @objc dynamic var date = Date()
    @objc dynamic var photo: Data? = nil
    @objc dynamic var goal = 0
    @objc dynamic var numberOfDays = 0
    @objc dynamic var grid = [[]]
    @objc dynamic var count = 0
}
