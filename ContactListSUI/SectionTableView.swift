//
//  SectionTableView.swift
//  ContactListSUI
//
//  Created by Алексей Попов on 03.05.2024.
//

import SwiftUI

struct SectionTableView: View {
    
    @Binding var persons: [Person]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($persons, id: \.phoneNumber) { $person in
                    Section(header: Text("\(person.fullName)")) {
                        SectionView(person: person) 
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}
#Preview {
    SectionTableView(persons: .constant(Person.getContactList()))
}
