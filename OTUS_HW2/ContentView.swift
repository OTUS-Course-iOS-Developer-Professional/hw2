//
//  ContentView.swift
//  OTUS_HW2
//
//  Created by Yulia on 24.06.2023.
//

import SwiftUI

enum GenerationCategory: String, CaseIterable, Identifiable {
    case first = "I"
    case second = "II"
    case third = "III"
    
    var id: Self {
        self
    }
    
    var title: String {
        switch self {
        case .first:
            return "Первое"
        case .second:
            return "Второе"
        case .third:
            return "Третье"
        }
    }
}

struct ContentView: View {
    @State private var selectedItem: GenerationCategory = .first
    
    var body: some View {
        VStack {
            Image("picachu")
            Text("Pokemons browser")
                .font(.title)
                .multilineTextAlignment(.center)
            Picker("", selection: $selectedItem) {
                ForEach(GenerationCategory.allCases) { category in
                    Text(category.title)
                        .tag(category)
                }
            }
            .pickerStyle(.segmented)
            Text("Поиск в \(selectedItem.rawValue) поколении")
                .font(.title3)
                .multilineTextAlignment(.leading)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
