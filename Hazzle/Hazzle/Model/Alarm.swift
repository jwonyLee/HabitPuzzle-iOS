//
//  Alarm.swift
//  Hazzle
//
//  Created by 이지원 on 2020/10/20.
//

import Foundation
import RealmSwift

/**
 Alarm is a Realm model objects for Habits notify.
 
 - `identifier`: 식별자
 - `target`: 알림을 보내는 습관 객체
 - `daysOfWeek`: 요일
 - `hour`: 시
 - `minute`: 분
 */
class Alarm: Object {
    @objc dynamic var identifier = UUID().uuidString
    @objc dynamic var target: Habit?
    @objc dynamic var daysOfWeek = 0
    @objc dynamic var hour = 0
    @objc dynamic var minute = 0
}
