//
//  Run.swift
//  CommandDesignPattern
//
//  Created by MacBook  on 19.09.2018.
//  Copyright © 2018 Onurcan Yurt. All rights reserved.
//

import Foundation
import UIKit

class Run {
    
    
    func run(){
        
        let newAccount = Account()
        
        //The point is that these commands are able to be stored and audited for roll back...
        let commands = [
            AccountCommand(account: newAccount, transaction: .depositMoney , amount: 90),
            AccountCommand(account: newAccount, transaction: .depositMoney, amount: 10),
            AccountCommand(account: newAccount, transaction: .withdrawMoney, amount: 10),
            AccountCommand(account: newAccount, transaction: .withdrawMoney, amount: 50)
        ]
        
        print(newAccount)
        
        commands.forEach() { $0.call() }
        
        print(newAccount)
        
        //UNDO OPERATIONS
        commands.reversed().forEach() { $0.undo() }
        
        print(newAccount)
        
        
    }
    
    

}
