//
//  Date+Relative.swift
//  RbSwift
//
//  Created by draveness on 19/03/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation

public extension Duration {
    var since: Date {
        return since()
    }
    
    var later: Date {
        return since
    }
    
    var ago: Date {
        return ago()
    }
    
    var before: Date {
        return ago
    }
    
    func before(_ date: Date = Date.now) -> Date {
        return ago(date)
    }
    
    func later(_ date: Date = Date.now) -> Date {
        return since(date)
    }
    
    func since(_ date: Date = Date.now) -> Date {
        return Calendar.current.date(byAdding: self.to_dateComponents, to: date)!
    }
    
    func ago(_ date: Date = Date.now) -> Date {
        return Calendar.current.date(byAdding: self.to_dateComponents(before: true), to: date)!
    }
}
