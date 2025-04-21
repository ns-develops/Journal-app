//
//  SwiftUI_JournalApp.swift
//  SwiftUI-Journal
//
//  Created by Natalie S on 2025-04-18.
//

import SwiftUI

@main
struct SwiftUI_JournalApp: App {
    
    @StateObject var journal = JournalViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(journal)
            //JournalEntryView()
           
        }
    }
}
