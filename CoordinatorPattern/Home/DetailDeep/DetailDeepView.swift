//
//  DetailDeepView.swift
//  CoordinatorPattern
//
//  Created by Vlad-Ilie Filip on 26.01.2025.
//

import SwiftUI
struct DetailDeepView<VM: DetailDeepViewModelProtocol>: View {

    var viewModel: VM
    @EnvironmentObject var coordinator: HomeCoordinator

    init(viewModel: VM) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Spacer()
            Text("Detail Deep")
                .font(.system(size: 25, weight: .bold))
            Spacer()
            
            Button("Go to home view") {
                coordinator.popToRoot()
            }
            
            Button("Show sheet") {
                coordinator.presentSheet(.sheet)
            }
            
            Spacer()
        }
    }
}
