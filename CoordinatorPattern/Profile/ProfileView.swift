//
//  ProfileView.swift
//  CoordinatorPattern
//
//  Created by Vlad-Ilie Filip on 26.01.2025.
//

import SwiftUI

struct ProfileView<VM: ProfileViewModelProtocol>: View {

    var viewModel: VM
    @EnvironmentObject var coordinator: HomeCoordinator

    init(viewModel: VM) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Spacer()
            Text("Profile")
                .font(.system(size: 25, weight: .bold))            
            Spacer()
        }
    }
}

#Preview {
    ProfileView(viewModel: ProfileViewModel())
}
