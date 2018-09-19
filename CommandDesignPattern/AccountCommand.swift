//
//  AccountCommand.swift
//  CommandDesignPattern
//
//  Created by MacBook  on 19.09.2018.
//  Copyright © 2018 Onurcan Yurt. All rights reserved.
//

import Foundation

class AccountCommand : Command {
    
    private var account : Account
    
    enum Transaction {
        case depositMoney
        case withdrawMoney
    }
    
    private var transaction: Transaction
    private var amount: Int
    private var succeeded: Bool = false
    
    init(account: Account, transaction: Transaction, amount: Int) {
        self.account = account
        self.transaction = transaction
        self.amount = amount
    }
    
    func call() {
        switch transaction {
        case .depositMoney:
            account.depositMoney(amount)
            succeeded = true
        case .withdrawMoney:
            succeeded = account.withdrawMoney(amount)
        }
    }
    
    func undo() {
        if !succeeded { return }
        
        switch transaction {
        case .depositMoney:
            _ = account.depositMoney(amount)
        case .withdrawMoney:
            account.withdrawMoney(amount)
        }
    }
}
