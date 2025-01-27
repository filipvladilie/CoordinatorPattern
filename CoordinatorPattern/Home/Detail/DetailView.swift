//
//  DetailView.swift
//  CoordinatorPattern
//
//  Created by Vlad-Ilie Filip on 26.01.2025.
//

import SwiftUI

struct DetailView<VM: DetailViewModelProtocol>: View {

    var viewModel: VM
    @EnvironmentObject var coordinator: HomeCoordinator

    init(viewModel: VM) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Spacer()
            Text("Detail")
                .font(.system(size: 25, weight: .bold))
            Spacer()
            
            Button("Go to details deep view") {
                coordinator.push(page: .detailDeep)
            }
            
            Button("Show sheet") {
                coordinator.presentSheet(.sheet)
            }
            
            Spacer()
        }
    }
}
