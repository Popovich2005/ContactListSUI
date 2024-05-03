//
//  ContactListView.swift
//  ContactListSUI
//
//  Created by Алексей Попов on 03.05.2024.
//

import SwiftUI

struct ContactListView: View {
    @State private var persons = Person.getContactList()
    
    var body: some View {
        NavigationView { 
            List(persons, id: \.phoneNumber) { person in
                NavigationLink(destination: ContactDetailsView(person: person)) {
                    Text("\(person.fullName)")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContactListView()
}
