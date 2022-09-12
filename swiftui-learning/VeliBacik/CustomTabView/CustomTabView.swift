//
//  CustomTabView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 25.07.2022.
//

import SwiftUI

struct CustomTabView: View {

    @State private var selectedIndex = 0

    var body: some View {
        VStack {
            resetButton
            tabView
        }
    }

    var tabView: some View {

        TabView(selection: $selectedIndex) {
            HeartView()
                .tabItem {
                    Image(systemName: "star")
                    Text(CustomTabs.heart.title)
                }
                .tag(CustomTabs.home)
            StarView()
                .tabItem {
                    Image(systemName: "heart")
                    Text(CustomTabs.home.title)
                }
                .tag(CustomTabs.heart)
            NavigationTabView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text(CustomTabs.navigation.title)
                }
                .tag(CustomTabs.navigation)
        }
        .accentColor(.red)
    }

    var resetButton: some View {
        Button("Reset") {
            selectedIndex = 0
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {

    static var previews: some View {
        CustomTabView()
    }
}

struct StarView: View {
    var body: some View {
        Text("Tab Content 2")
    }
}

struct HeartView: View {
    var body: some View {
        Text("Tab Content 1")
    }
}

struct NavigationTabView: View {

    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]

    var body: some View {
        NavigationView {
            vStack
        }
        .toolbar {
            EditButton()
        }
    }

    var vStack: some View {
        VStack {
            navigationLink
            list
        }
    }
    var navigationLink: some View {
        NavigationLink(destination: Text("Sample")) {
            Label("Lightning", systemImage: "bolt")
        }
    }

    var list: some View {
        List {
            ForEach(
                fruits,
                id: \.self
            ) {
                fruit in
                Text(fruit)
            }
        }.navigationTitle("Fruits")
    }
}
