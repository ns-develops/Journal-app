//
//  JournalEmptyView.swift
//  SwiftUI-Journal
//
//  Created by Natalie S on 2025-04-18.
//

import SwiftUI

struct JournalEntryView: View {
    var entry : JournalEntry?
    @EnvironmentObject var journal : JournalViewModel
    
    @State var content: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            TextEditor(text: $content)
        }
        .onAppear(perform: setContent)
        .navigationBarItems(trailing: Button("Save") {
            saveEntry()
            presentationMode.wrappedValue.dismiss()
            
        })
    }
    
    private func setContent() {
        if let entry = entry {
            content = entry.content
        }
        
    }
    private func saveEntry() {
        
        if let entry = entry {
            // update old journal
            journal.update(entry: entry, with: content)
        } else {
            // create a new journal
        }
        
        let newEntry = JournalEntry(content: content)
        journal.entries.append(newEntry)
    }
}

struct JournalEntryView_Previews: PreviewProvider {
    static var previews: some View {
        let mockJournal = JournalViewModel()
        JournalEntryView(entry: nil)
            .environmentObject(mockJournal)  // 👈 rätt sätt att använda EnvironmentObject
    }
}
