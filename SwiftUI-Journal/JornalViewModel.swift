//
//  JornalViewModel.swift
//  SwiftUI-Journal
//
//  Created by Natalie S on 2025-04-21.
//

import Foundation

class JournalViewModel : ObservableObject {
    @Published var entries = [JournalEntry]()
    
    init() {
        addMockData()
    }
    
    
    func addMockData() {
        entries.append(JournalEntry(content: "jag åt"))
        entries.append(JournalEntry(content: "jag sov"))
        entries.append(JournalEntry(content: "jag programmerade"))
        
    }
    
    func update(entry: JournalEntry, with content: String) {
        if let index = entries.firstIndex(of: entry) {
            entries[index].content = content
            
        }
    }
}
