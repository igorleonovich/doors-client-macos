//
//  DoorsClient+Server.swift
//  
//  Created by Igor Leonovich on 8.06.21
//  Copyright © 2021 FT. All rights reserved.
//

import ArgumentParser
import DoorsCLISDK


extension DoorsClient.Server {
    
    struct SetRemote: ParsableCommand {
        
        static var configuration = CommandConfiguration(abstract: "Set remote server action.")
        
        @Argument(help: "Host.")
        var host: String = ""
        
        @Argument(help: "Port.")
        var port: Int = 0
        
        func validate() throws {
            guard host.isEmpty == false else { throw ValidationError("The host is invalid.") }
        }
        
        func run() throws {
            cli.print("Setting the remote server...", to: .highlightedPurple)
        }
        
    }
    
    struct InstallLocal: ParsableCommand {
        
        static var configuration = CommandConfiguration(abstract: "Install local server action.")
        
        func run() throws {
            cli.print("Installing the new local server...", to: .highlightedPurple)
        }
    }
}
