//
//  ContentView.swift
//  assign6
//
//  Created by Leo Lopez and Dale Westberg on 5/4/22.
//

import SwiftUI


struct ContentView: View {

    @StateObject private var presListModel: listViewModel;

    init() {
        _presListModel = StateObject(wrappedValue: listViewModel())
    }

    var body: some View {

        NavigationView {
            List {
                ForEach(presListModel.presArray, id: \.name) {
                    presVM in
                    NavigationLink(destination: detailView(president: presVM)) {
                        presidentCell(president: presVM)
                    }
                }
            }
            .listStyle(.plain)
            .task {
                await presListModel.loadPropertyListData()
            }
            .navigationTitle("Presidents")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
        
        
        

        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
