//
//  ContactDetailsView.swift
//  ContactListSUI
//
//  Created by Алексей Попов on 04.05.2024.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
//    let persons: [Person] // Добавляем массив persons
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.1)
                .ignoresSafeArea()
            
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 120, height: 120)
                    Spacer()
                }
                VStack(spacing: 15) {
                    SectionView(person: person) // Передаем persons в SectionView
                }
            }
            .navigationTitle("\(person.fullName)")
        }
    }
}
#Preview {
    ContactDetailsView(person: Person(name: "", surname: "", email: "", phoneNumber: ""))
}
