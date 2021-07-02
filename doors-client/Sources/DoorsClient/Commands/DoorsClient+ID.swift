//
//  DoorsClient+ID.swift
//  
//  Created by Igor Leonovich on 8.06.21
//  Copyright © 2021 FT. All rights reserved.
//

import ArgumentParser
import DoorsCLISDK


extension DoorsClient.ID {

    struct SignUp: ParsableCommand {
        
        static var configuration = CommandConfiguration(abstract: "Perform signup action.")
        
        @Argument(help: "Login.")
        var login: String = ""
        
        @Argument(help: "Password.")
        var password: String = ""
        
        func validate() throws {
            guard login.isEmpty == false else { throw ValidationError("The login is invalid.") }
            guard password.isEmpty == false else { throw ValidationError("The password is invalid.") }
        }
        
        func run() throws {
            cli.print("Creating the new account...", to: .highlightedPurple)
        }
    }
    
    struct SignIn: ParsableCommand {
        
        static var configuration = CommandConfiguration(abstract: "Perform signin action.")
        
        @Argument(help: "Login.")
        var login: String = ""
        
        @Argument(help: "Password.")
        var password: String = ""
        
        func validate() throws {
            guard login.isEmpty == false else { throw ValidationError("The login is invalid.") }
            guard password.isEmpty == false else { throw ValidationError("The password is invalid.") }
        }
        
        func run() throws {
            cli.print("Performing signin action...", to: .highlightedPurple)
        }
    }
    
    struct SignOut: ParsableCommand {
        
        static var configuration = CommandConfiguration(abstract: "Perform signout action.")
        
        func run() throws {
            cli.print("Signing out...", to: .highlightedPurple)
        }
    }
}
