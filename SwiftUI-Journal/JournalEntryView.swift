//
//  JournalEmptyView.swift
//  SwiftUI-Journal
//
//  Created by Natalie S on 2025-04-18.
//

import SwiftUI

struct JournalEmptyView: View {
    @State var content: String = ""
    
    var body: some View {
        TextEditor(text: $content)
    }
}

#Preview {
    JournalEmptyView()
}
