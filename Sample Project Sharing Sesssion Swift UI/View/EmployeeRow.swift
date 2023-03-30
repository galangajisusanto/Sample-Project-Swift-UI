//
//  EmployeeView.swift
//  Sample Project Sharing Sesssion Swift UI
//
//  Created by MEKARI on 27/02/23.
//

import SwiftUI

struct EmployeeRow: View {
    var employee: Employee
    var body: some View {
        HStack(spacing: 16) {
            employee.avatarImage
                .resizable()
                .frame(width: 32, height: 32)
                .clipShape(Circle())
                .scaledToFill()
            VStack(alignment: .leading, spacing: 16) {
                Text(employee.name).font(.system(size: 16))
                    .foregroundColor(.red)
                    .multilineTextAlignment(.leading)
                Text(employee.job).font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            Spacer()
        }.foregroundColor(.white)
    }
}

struct EmployeeView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeRow(employee: DataSource.employes[0])

    }
}
