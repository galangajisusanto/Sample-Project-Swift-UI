//
//  EmployeeDetailView.swift
//  Sample Project Sharing Sesssion Swift UI
//
//  Created by MEKARI on 04/03/23.
//

import SwiftUI

struct EmployeeDetailView: View {
    var employee: Employee
    var body: some View {
            ScrollView {
                VStack(spacing: 16) {
                    employee.avatarImage
                        .resizable()
                        .clipShape(Circle())
                        .scaledToFill()
                        .frame(width: 64, height: 64)
                    Text(employee.name).font(.system(size: 16))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                    Text(employee.job).font(.system(size: 14))
                        .foregroundColor(.gray)
                    HStack(alignment: .center, spacing: 16) {
                        Button {} label: {
                            Image(systemName: "phone.fill")
                                .foregroundColor(.white)
                                .frame(width: 72, height: 32)
                                .background(.blue)
                                .cornerRadius(8)
                        }
                        Button {} label: {
                            Image(systemName: "mail")
                                .foregroundColor(.white)
                                .frame(width: 72, height: 32)
                                .background(.blue)
                                .cornerRadius(8)
                        }
                        Button {} label: {
                            Image(systemName: "phone.bubble.left")
                                .foregroundColor(.white)
                                .frame(width: 72, height: 32)
                                .background(.blue)
                                .cornerRadius(8)
                        }
                    }
                    Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                        .padding(.horizontal, 16)
                }
            }
            
    }
}
    
    struct EmployeeDetailView_Previews: PreviewProvider {
        static var previews: some View {
            EmployeeDetailView(employee: DataSource.employes[0])
        }
    }
