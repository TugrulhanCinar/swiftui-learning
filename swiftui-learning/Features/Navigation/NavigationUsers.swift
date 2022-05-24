//
//  NavigationUsers.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 24.05.2022.
//

import SwiftUI

struct NavigationUsers: View {

    @State private var isPresented: Bool = false
    var body: some View {

        NavigationView {
            List(NavigationUserModel.samples, id: \.id) { data in
                NavigationLink {
                    UserViewDetail(user: data)
                } label: {
                    Text(data.name)
                }
            }
            .sheet(isPresented: $isPresented, onDismiss: {
                // on dissmis

                print("onDismiss")

            }, content: {
                Color.red
                Button("hello") {
                    // button action
                    print("action")
                }
            })
            .listStyle(.grouped)
                .navigationTitle(Text("navigation title"))
                .toolbar {
                    ToolbarItem {
                        /*NavigationLink("Welcome") {
                            Text("prod").background(.red)
                        }*/
                        Button("Open sheet") {
                            isPresented.toggle()
                        }
                    }
                }
        }
    }
}

struct NavigationUsers_Preview: PreviewProvider {
    static var previews: some View {
        NavigationUsers()
    }
}
