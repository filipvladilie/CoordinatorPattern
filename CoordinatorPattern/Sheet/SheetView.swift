//
//  SheetView.swift
//  CoordinatorPattern
//
//  Created by Vlad-Ilie Filip on 26.01.2025.
//
import SwiftUI
struct SheetView<VM: SheetViewModelProtocol>: View {

    @EnvironmentObject var coordinator: HomeCoordinator
    var viewModel: VM

    init(viewModel: VM) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text("ForgotPasswordView")
            
            Button("Go to details deep view") {
                coordinator.dismissSheet()
                coordinator.push(page: .detailDeep)
            }
        }
    }
}
