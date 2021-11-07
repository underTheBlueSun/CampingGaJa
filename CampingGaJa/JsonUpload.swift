//
//  ANPJsonUpload.swift
//  ANP
//
//  Created by macbook on 2021/04/27.
// ..
import Foundation
import SwiftUI
import RealmSwift

final class JsonUpload: ObservableObject {
  
//  @Published var basicinfos: [BasicInfo02] = []
    @Published var basicinfos: [BasicInfo04] = []
//  @Published var anps: [ANP03] = []
    
  @State private var isUploaded = UserDefaults.standard.bool(forKey: "Upload")

//  init(filename: String = "CurriculumData.json") {
    init() {
        
        if isUploaded == true { // 테스트용
//        if isUploaded == false { // 실제용
//            self.basicinfos = Bundle.main.decode(filename: "gocamping 1~500.json", as: [BasicInfo01].self)
            self.basicinfos = Bundle.main.decode(filename: "gocamping 1~500.json", as: [BasicInfo04].self)
//            self.anps = Bundle.main.decode(filename: "ANPData.json", as: [ANP03].self)
            addBasicInfo()
//            addANPData()
        }
  }
    
    func addBasicInfo() {
        guard let dbRef = try? Realm() else { return }
        try? dbRef.write {
            for basicinfo in basicinfos {
                dbRef.add(basicinfo)
            }
//             curriculum json 모두 업로드한 후 userdefaults에 저장
            UserDefaults.standard.set(true, forKey: "Upload")
        } // try? dbRef.write
    }
    
//    func addANPData() {
//        guard let dbRef = try? Realm() else { return }
//        try? dbRef.write {
//            for anp in anps {
//                dbRef.add(anp)
//            }
//            // curriculum json 모두 업로드한 후 userdefaults에 저장
//            UserDefaults.standard.set(true, forKey: "Upload")
//        } // try? dbRef.write
//    }
}
