//
//  EmployeeList.swift
//  Sample Project Sharing Sesssion Swift UI
//
//  Created by MEKARI on 27/02/23.
//

import SwiftUI

struct EmployeeList: View {
    
    private let employees = DataSource.employes
    
    var body: some View {
        NavigationView {
            List(employees, id: \.name) { employee in
                ZStack(alignment: .leading) {
                    NavigationLink(
                        destination:  EmployeeDetailView(employee: employee) ) {
                            EmptyView()
                        }
                        .opacity(0)
                    EmployeeRow(employee: employee)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Employee")
        }
    }
}

struct EmployeeList_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            EmployeeList().previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
            EmployeeList().previewDevice(PreviewDevice(rawValue: "iPhone 14"))
        }
    }
}
