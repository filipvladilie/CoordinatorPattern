//
//  FullScreenView.swift
//  CoordinatorPattern
//
//  Created by Vlad-Ilie Filip on 26.01.2025.
//

import SwiftUI
struct FullScreenView<VM: FullScreenViewModelProtocol>: View {

    var viewModel: VM

    init(viewModel: VM) {
        self.viewModel = viewModel
    }

    var body: some View {
        Text("SignupView")
    }
}
