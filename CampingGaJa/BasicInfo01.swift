//
//  BasicInfo01.swift
//  ANP
//
//  Created by macbook on 2021/11/02.
//

import SwiftUI
import RealmSwift

class BasicInfo01: Object,Identifiable, Codable{
    @objc dynamic var uuid: String = UUID().uuidString
    @objc dynamic var addr1: String?
//    @objc dynamic var grade: String?
    @objc dynamic var semester = ""
    @objc dynamic var subject = ""
    @objc dynamic var chapter = 0
    @objc dynamic var chapName = ""
    @objc dynamic var page = 0
}
