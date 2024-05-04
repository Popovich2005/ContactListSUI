//
//  ContentView.swift
//  ContactListSUI
//
//  Created by Алексей Попов on 03.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(persons: $persons)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Home")
                }
            SectionTableView(persons: $persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView()
}
