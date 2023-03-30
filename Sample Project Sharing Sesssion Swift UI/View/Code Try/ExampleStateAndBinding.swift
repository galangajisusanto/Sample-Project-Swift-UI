//
//  ExampleStateAndBinding.swift
//  Sample Project Sharing Sesssion Swift UI
//
//  Created by MEKARI on 30/03/23.
//

import SwiftUI

//: ~ Example state
struct ExampleState: View {
    @State var data = 0
    
    var body: some View {
        VStack {
            Text("Jumlah data \(data)")
                .font(.title)
            Button("Tambah Data") {
                self.data += 1
            }
            .padding()
            .foregroundColor(.white)
            .background(.orange)
            .cornerRadius(8)
        }
    }
}

//: ~ Example binding
struct ExampleBinding: View {
    @State var data = 0
    
    var body: some View {
        VStack {
            Text("Jumlah data \(data)")
                .font(.title)
            CardProduct(data: $data)
        }
    }
}

struct CardProduct: View {
    @Binding var data: Int
    
    var body: some View {
        VStack {
            
            Button("Tambah Data") {
                self.data += 1
            }
            .padding()
            .foregroundColor(.white)
            .background(.orange)
            .cornerRadius(8)
        }
    }
}


//: ~ Example Observable object

class GlobalData: ObservableObject {
    @Published var data = 1
}


struct ExampleObservableObject: View {
    @ObservedObject var globalData = GlobalData()
    var body: some View {
        NavigationView {
            VStack {
                Text("Jumlah Data \(globalData.data)")
                    .font(.title)
                Button("Tambah Data") {
                    self.globalData.data += 1
                }
                .padding()
                .foregroundColor(.white)
                .background(.orange)
                .cornerRadius(8)
                NavigationLink(
                    destination: DetailObservableExample(data: globalData) ) {
                        Text("Goto Detail")
                            .font(.title)
                    }
            }
        }
    }
}

struct DetailObservableExample: View {
    @ObservedObject var data: GlobalData
    var body: some View {
        Text("Jumlah data \(data.data)")
    }
}

struct ExampleState_Previews: PreviewProvider {
    static var previews: some View {
        ExampleObservableObject()
    }
}
