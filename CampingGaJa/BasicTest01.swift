//
//  BasicInfo01.swift
//  ANP
//
//  Created by macbook on 2021/11/02.
//

import SwiftUI
import RealmSwift

class BasicTest01: Object,Identifiable, Codable{
    @objc dynamic var uuid: String = UUID().uuidString
    @objc dynamic var aaa: String
    @objc dynamic var bbb: String
    

}
