//
//  ProfileCoordinator.swift
//  CoordinatorPattern
//
//  Created by Vlad-Ilie Filip on 27.01.2025.
//
import SwiftUI

class ProfileCoordinator: CoordinatorProtocol {
    typealias R = ProfileRoute
    @Published var path: NavigationPath = .init()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?

    func push(page: ProfileRoute) {
        path.append(page)
    }

    func pop() {
        path.removeLast()
    }

    func popToRoot() {
        path = .init()
    }

    func presentSheet(_ sheet: Sheet) {
        self.sheet = sheet
    }

    func presentFullScreenCover(_ cover: FullScreenCover) {
        self.fullScreenCover = cover
    }

    func dismissSheet() {
        self.sheet = nil
    }

    func dismissCover() {
        self.fullScreenCover = nil
    }

    @ViewBuilder
    func build(page: ProfileRoute) -> some View {
        switch page {
        case .profile:
            ProfileView(viewModel: ProfileViewModel())
        }
    }

    @ViewBuilder
    func buildSheet(sheet: Sheet) -> some View {
        switch sheet {
        case .sheet:
            SheetView(viewModel: SheetViewModel())
        }
    }

    @ViewBuilder
    func buildCover(cover: FullScreenCover) -> some View {
        switch cover {
        case .fullScreen: FullScreenView(viewModel: FullScreenViewModel())
        }
    }
}
