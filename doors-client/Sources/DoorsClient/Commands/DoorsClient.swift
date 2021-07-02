//
//  DoorsClient.swift
// 
//  Created by Igor Leonovich on 8.06.21
//  Copyright © 2021 FT. All rights reserved.
//

import ArgumentParser
import DoorsCLISDK


struct DoorsClient: ParsableCommand {
    
    static var configuration = CommandConfiguration(abstract: "A Doors client.",
                                                    version: "0.1.0",
                                                    subcommands: [ID.self, Server.self, StepByStep.self])
}

extension DoorsClient {
    
    struct StepByStep: ParsableCommand {
        
        static var configuration = CommandConfiguration(abstract: "Step by step flow.",
                                                        subcommands: [Next.self])
    }
    
    struct ID: ParsableCommand {
        
        static var configuration = CommandConfiguration(abstract: "Perform an account action.",
                                                        subcommands: [SignUp.self, SignIn.self, SignOut.self])
    }
    
    struct Server: ParsableCommand {
        
        static var configuration = CommandConfiguration(abstract: "Perform an server action.",
                                                        subcommands: [SetRemote.self, InstallLocal.self])
    }
}
