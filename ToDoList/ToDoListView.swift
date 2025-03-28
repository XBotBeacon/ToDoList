import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift", "Build apps", "change the world", "take a vacation"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }
                    
                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
        }
        
    }
}

#Preview {
    ToDoListView()
}
