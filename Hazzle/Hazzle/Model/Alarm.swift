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
 - `habitIdentifier`: 습관 식별자
 - `daysOfWeek`: 요일
 - `hour`: 시
 - `minute`: 분
 */
class Alarm: Object {
    @objc dynamic var identifier
    @objc dynamic var habitIdentifier
    @objc dynamic var daysOfWeek
    @objc dynamic var hour
    @objc dynamic var minute
}
