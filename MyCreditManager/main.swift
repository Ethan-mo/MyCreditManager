//
//  main.swift
//  MyCreditManager
//
//  Created by 모상현 on 2022/11/23.
//

import Foundation
var datamanager = DataManager()
func main(){
    
    print("원하는 기능을 입력해주세요")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    //let strArr = readLine()!.split(separator: " ").map {String($0)}
    let input = readLine()!
    switch input{
    case "1":
        print("추가할 학생의 이름을 입력해주세요")
        let name = readLine()!
        if name != nil && name != "" {
            datamanager.addStudent(name)
            print(datamanager.getData())
        }else{
            print("입력이 잘못되었습니다.")
        }
    case "2":
        print("삭제할 학생의 이름을 입력해주세요")
        let name = readLine()!
        if name != nil && name != ""  {
            datamanager.deleteStudent(name)
            print(datamanager.getData())
        }else{
            print("입력이 잘못되었습니다.")
        }
    case "3":
        print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
        print("입력 예) Mickey Swift A+\n만약에 학생의 성적 중 해당과목이 존재하면 기존 점수가 갱신됩니다.")
        let input = readLine()!.split(separator: " ").map {String($0)} // input에는 3개의 String이 들어있어야한다.
        if input != nil && input != [] && input.count == 3{
            datamanager.addSubject(input[0], input[1], input[2])
            print(datamanager.getData())
            print(datamanager.getDataSubject())
        }else{
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
        }
    case "4":
        print("삭제할 학생의 이름과 과목을 입력해주세요")
        print("입력 예) Mickey Swift")
        let input = readLine()!.split(separator: " ").map { String($0)}
        if input != nil && input != [] && input.count == 2{
            datamanager.deleteSubject(input[0], input[1])
            print(datamanager.getData())
            print(datamanager.getDataSubject())
        }else{
            print("입력이 잘못되었습니다. 다시 확인해주세요.")
        }
        
    case "5":
        print("평점을 조회할 학생의 이름을 입력해주세요")
        let name = readLine()!
        if name != nil && name != "" {
            
        }
    case "x","X":
        return
    default:
        main()
    }
    main()
}
main()
