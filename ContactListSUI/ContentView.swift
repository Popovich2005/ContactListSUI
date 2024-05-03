//
//  ContentView.swift
//  ContactListSUI
//
//  Created by Алексей Попов on 03.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactListView()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Home")
                }
            SectionTableView(persons: .constant(Person.getContactList()))
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
