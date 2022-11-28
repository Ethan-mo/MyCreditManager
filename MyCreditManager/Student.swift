//
//  Student.swift
//  MyCreditManager
//
//  Created by 모상현 on 2022/11/23.
//

import Foundation
class Student{
    var name: String
    var subject: [String:String]
    init(name:String,subject:[String:String] = [:]){
        self.name = name
        self.subject = subject
    }
}
