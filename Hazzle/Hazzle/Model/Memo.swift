//
//  Memo.swift
//  Hazzle
//
//  Created by 이지원 on 2020/10/20.
//

import Foundation
import RealmSwift

/**
 Memo is a Realm model objects for storing Habits dated notes.
 
 - `identifier`: 식별자
 - `date`: 생성일
 - `content`: 내용
 */

class Memo: Object {
    @objc dynamic var identifier
    @objc dynamic var date
    @objc dynamic var content
}
