//
//  ContentView.swift
//  iExpense
//
//  Created by Benjamin McEnulty on 9/7/21.
//

import SwiftUI

struct ContentView: View {
    //Update data here when it is changed in the class
    @ObservedObject var expenses = Expenses()
    
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationBarTitle("iExpense")
            .navigationBarItems(trailing:
                Button(action: {
                    self.showingAddExpense = true
                }) {
                    Image(systemName: "plus")
                }
            )
        }
        .sheet(isPresented: $showingAddExpense) {
            AddView(expenses: self.expenses)
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Int
}

class Expenses: ObservableObject {
    //Notify container for class that this var changed
    @Published var items = [ExpenseItem]()
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
