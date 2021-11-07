//
//  ContentView.swift
//  CampingGaJa
//
//  Created by underTheBlueSun on 2021/10/31.
//

import Foundation
import SwiftUI
import RealmSwift

struct ContentView: View {
    
    func deleteAll() {
        guard let dbRef = try? Realm() else { return }
        try? dbRef.write {

            dbRef.deleteAll();
        }
    }
    
    var body: some View {
        Text("캠핑 가자~")
            .padding()
        
        Button(action: {
            deleteAll()
        }, label: {
            Text("삭제")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
