//
//  Command.swift
//  CommandDesignPattern
//
//  Created by MacBook  on 19.09.2018.
//  Copyright © 2018 Onurcan Yurt. All rights reserved.
//

import Foundation

//Instead of calling deposit and withdraw directly, we are going to do it through the command object
protocol Command {
    func call()
    func undo()
}
