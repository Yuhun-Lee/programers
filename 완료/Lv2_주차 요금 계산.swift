import Foundation

var parkingTime: [String: Int] = [:]
var indic: [String:Int] = [:]

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    let outTime = 23*60 + 59
    
    for record in records {
        let split:[Substring] = record.split(separator: " ")
        if split[2] == "IN" {
            inCar(split: split) // 입차
        }
        else if split[2] == "OUT" {
            outCar(split: split) // 출차시 요금 추가
        }
    }
    
    // 마지막까지 출차되지 않은 차에 대한 시간 추가
    indic.forEach({key, value in
        let charge = outTime-value
        addTime(key: key, value: charge)
    })
    
    // chargeDic에 담긴 시간으로 차 번호별 요금 계산
    let result:[Int] = parkingTime.sorted(by: {$0.0 < $1.0}).map { // 차 번호 기준으로 정렬후 계산
        if $0.1 < fees[0] { // $0은 (key,value)튜플
            return fees[1]
        }
        let charge: Int = fees[1] + Int(ceil(Double($0.1-fees[0])/Double(fees[2])))*fees[3]
        
        return charge
    }
    
    return result
}

// 입차 시간 저장
func inCar(split:[Substring]) {
    let timeSplit:[Substring] = String(split[0]).split(separator: ":")
    let time:Int = Int(timeSplit[0])!*60 + Int(timeSplit[1])!
    indic[String(split[1])] = time
}

// 출차하면 주차 시간을 계산
func outCar(split:[Substring]) {
    let timeSplit:[Substring] = String(split[0]).split(separator: ":")
    let time:Int = Int(timeSplit[0])!*60 + Int(timeSplit[1])!
    let charge = time - indic[String(split[1])]!

    addTime(key: String(split[1]), value: charge)
    
    indic.removeValue(forKey: String(split[1]))
}

// 딕셔너리에 차 번호별 시간을 저장합니다.
func addTime(key:String, value:Int) {
    if (parkingTime[key] != nil) {
        parkingTime[key]! += value
    } else {
        parkingTime[key] = value
    }
}

print(solution([180, 5000, 10, 600], ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"]))
