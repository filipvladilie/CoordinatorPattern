//
//  HomeView.swift
//  CoordinatorPattern
//
//  Created by Vlad-Ilie Filip on 25.01.2025.
//

import SwiftUI

struct HomeView<VM: HomeViewModelProtocol>: View {

    var viewModel: VM
    @EnvironmentObject var coordinator: HomeCoordinator

    init(viewModel: VM) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Spacer()
            Text("Home")
                .font(.system(size: 25, weight: .bold))
            Spacer()
            
            Button("Go to details view") {
                coordinator.push(page: .detail)
            }
            
            Button("Show sheet") {
                coordinator.presentSheet(.sheet)
            }
            
            Spacer()
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
