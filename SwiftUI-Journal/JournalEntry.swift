//
//  JournalEntry.swift
//  SwiftUI-Journal
//
//  Created by Natalie S on 2025-04-18.
//

import Foundation

struct JournalEntry : Identifiable, Equatable {
    var id = UUID()
    var content : String
    
    private var unformatedDate = Date()
    private let dateFormatter = DateFormatter()
    
    init(content: String) {
        self.content = content
        dateFormatter.dateStyle = .medium
    
}
    
    var date : String {
        
        return dateFormatter.string(from: unformatedDate)
    }
    
    
}

