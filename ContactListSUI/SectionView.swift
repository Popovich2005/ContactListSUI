//
//  SectionView.swift
//  ContactListSUI
//
//  Created by Алексей Попов on 04.05.2024.
//

import SwiftUI

struct SectionView: View {
    let person: Person
//    @Binding var persons: [Person]
    
    var body: some View {
//        VStack(spacing: 15) {
            HStack {
                Image(systemName: "phone")
                    .foregroundStyle(.blue)
                Text("\(person.phoneNumber)")
                Spacer()
            }
            
            HStack {
                Image(systemName: "envelope.open")
                    .foregroundStyle(.blue)
                Text("\(person.email)")
                Spacer()
            }
//        }
    }
}

#Preview {
    SectionView(person: Person(name: "", surname: "", email: "", phoneNumber: ""))
}
