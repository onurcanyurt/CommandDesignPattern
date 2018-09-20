//
//  Account.swift
//  CommandDesignPattern
//
//  Created by MacBook  on 19.09.2018.
//  Copyright © 2018 Onurcan Yurt. All rights reserved.
//

import Foundation

//Bank account

class Account  {
    
    private var balance = 0
    private let moneyLimit = -500
    
    func depositMoney(_ amount: Int) {
        balance += amount
        print("+ \(amount), your balance is now \(balance)")
    }
    
    func withdrawMoney(_ amount: Int) -> Bool {
        
        if (balance - amount >= moneyLimit) {
            balance -= amount
            print("- \(amount), your balance is now: \(balance)")
            return true
        }
        
        print("WARNING : insufficient for withdraw, your balance is \(balance)")
        return false
    }
    
    var accountInfo: String {
        return "Account with balance: \(balance) and overdraft: \(moneyLimit)"
    }
}
