//
//  StepByStep.swift
//  
//
//  Created by Igor Leonovich on 17.06.21
//  Copyright © 2021 FT. All rights reserved.
//

import ArgumentParser
import DoorsCLISDK


extension DoorsClient.StepByStep {

    struct Next: ParsableCommand {
        
        static var configuration = CommandConfiguration(abstract: "Perform a next step.")
        
        func run() throws {
            let question = QuestionLocalGlobalServer()
            question.run()
        }
    }
}
