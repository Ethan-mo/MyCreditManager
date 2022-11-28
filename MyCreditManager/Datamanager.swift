//
//  Datamanager.swift
//  MyCreditManager
//
//  Created by 모상현 on 2022/11/23.
//

import Foundation

class DataManager{
    var studentArray:[Student] = []
    
    func getData() -> [String]{
        
        return studentArray.map{$0.name}
    }
    func getDataSubject() -> [Int]{
        var a : [Int] = []
        for item in studentArray{
            a.append(item.subject.count)
        }
        return a
    }
    
    /// 1번, 학생추가
    func addStudent(_ name: String){
        // 중복 이름 검색절차
        for item in studentArray{
            if item.name == name{
                print("\(name)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
                return
            }
        }
        studentArray.append(Student(name: name))
        print("\(name) 학생을 추가했습니다.")
    }
    /// 2번, 학생삭제
    func deleteStudent(_ name: String){
        // 삭제 대상 검색절차
        var count: Int = 0
        if studentArray.count == 0{
            print("\(name) 학생을 찾지 못했습니다.")
        }
        for item in studentArray{
            if item.name == name{
                studentArray.remove(at: count)
                print("\(name) 학생을 삭제하였습니다.")
            }else{
                print("\(name) 학생을 찾지 못했습니다.")
            }
            count += 1
        }
    }
    /// 3번, 성적추가(변경)
    func addSubject(_ name: String,_ subject: String,_ score: String ){
        for item in studentArray{
            if item.name == name{
                item.subject.updateValue(score, forKey: subject)
            }else{
                print("입력이 잘못되었습니다. 다시 확인해 주세요")
            }
        }
    }
    /// 4번, 성적 삭제
    func deleteSubject(_ name: String,_ subject: String){
        for item in studentArray{
            // 1차비교, 해당 학생이 있는가
            if item.name == name{
                // 2차비교, 해당 과목이 있는가
                if item.subject[subject] != nil{
                    item.subject[subject] = nil // 삭제
                }
                else{
                    print("입력이 잘못되었습니다. 다시 확인해 주세요")
                }
            }
        }
    }
    /// 5번, 평점보기
    func getRate(_ name: String){
        for item in studentArray{
            if item.name == name{
                if item.subject != [:]{ // 비어있지 않는다면
                    
                }
            }
        }
    }
}
