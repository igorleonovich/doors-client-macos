//
//  QuestionLocalGlobalServer.swift
//  
//
//  Created by Igor Leonovich on 18.06.21
//  Copyright © 2021 FT. All rights reserved.
//

import Foundation

class QuestionLocalGlobalServer: Question {
    
    override init() {
        let option1 = QuestionOption(text: "Global server", action: nil)
        let option2 = QuestionOption(text: "Custom server", action: nil)
        let option3 = QuestionOption(text: "New custom server") {
            cli.print("Performing local server installation", to: .highlightedPurple)
            let installerPath = "/Users/Shared/doors/il/dev/doors/doors-server/installer/install.sh"
            cli.shell(installerPath)
            cli.shell("doors-server run")
            // Setup first admin user
        }
        super.init()
        self.text = "Which server do you want to use?"
        self.options = [option1, option2, option3]
    }
}
