//
//  Question.swift
//  
//
//  Created by Igor Leonovich on 18.06.21
//  Copyright © 2021 FT. All rights reserved.
//

import Foundation


class Question {
    
    var text: String?
    var options: [QuestionOption] = []
    var answer: String?
    
    func run() {
        if let text = text {
            cli.print(text, to: .highlightedGreen)
        }
        var questionOptionsString = ""
        for (index, questionOption) in options.enumerated() {
            questionOptionsString += ("\(index + 1)) \(questionOption.text)")
            if index < options.count - 1 {
                questionOptionsString += "\n"
            }
        }
        cli.print(questionOptionsString)
        if let answer = cli.getInput(), let answerNumber = Int(answer) {
            didSelectOption(number: answerNumber)
        } else {
            cli.print("Wrong option, please try again", to: .errorRed)
            run()
        }
    }
    
    private func didSelectOption(number: Int) {
        let selectedOption = options[number - 1]
        if let action = selectedOption.action {
            action?()
        }
    }
}

struct QuestionOption {
    
    let text: String
    let action: QuestionAction?
}

typealias QuestionAction = (() -> Void)?
