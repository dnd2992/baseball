//
//  Logic.swift
//  Game.Baseball
//
//  Created by t2023-m0115 on 6/14/24.
//

import Foundation

   
class BaseballGame {
    
    
    // makeAnswer() 메서드: 1에서 9까지의 숫자 중에서 서로 다른 3개의 숫자로 이루어진 정답을 생성합니다. Array(1...9)로 초기화된 배열에서 숫자를 무작위로 선택하여 answer 배열에 추가합니다.
    func makeAnswer() -> [Int] {
        var numbers = Array(1...9)
        numbers.shuffle() // 배열 요소들을 무작위로 섞음
        let answer = Array(numbers.prefix(3)) // 섞인 배열에서 처음 3개의 요소를 가져와 정답으로 사용
        return answer
    }
    
    // 유저 입력값 조건검사.
    func isValidInput(_ input: String) -> Bool {
        // 입력값이 숫자인지 확인하고, 길이가 3인지 확인하며, 중복된 숫자와 0이 없는지 확인
        if input.count != 3 || Set(input).count != 3 || input.contains("0") {
            return false
        }
        if !input.allSatisfy({ $0.isNumber }) {
            return false
        }
        return true
    }
    
    func start() {
        let answer = makeAnswer() // 정답을 만드는 함수
        print("정답 숫자: \(answer)") // 정답을 출력
        
        var strike = 0
        var ball = 0
        
        
        //  while 루프를 활용. 사용자가 정답을 맞출 때까지 반복합니다.
        //    3 스트라이크가 되면 루프탈출. break
        while true {
            print("숫자를 입력하세요")
            if let input = readLine() {
                if !isValidInput(input) {
                    print("올바르지 않은 입력값입니다")
                    continue
                }
                // 사용자 입력값과 정답을 비교하는 로직을 완성시키자....
                // if 활용. 만약. 3 자리가 모두 같다? 그럼 break 로 빠져나와야됨.
                
                break
            }
        }
    }
}
