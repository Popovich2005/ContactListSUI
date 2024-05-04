//
//  ContactListView.swift
//  ContactListSUI
//
//  Created by Алексей Попов on 03.05.2024.
//

import SwiftUI

struct ContactListView: View {
    @Binding var persons: [Person]
    
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
    ContactListView(persons: .constant(Person.getContactList()))
}
