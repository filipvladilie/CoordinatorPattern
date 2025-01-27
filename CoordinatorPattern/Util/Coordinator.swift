//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Vlad-Ilie Filip on 24.01.2025.
//

import SwiftUI

protocol CoordinatorProtocol: ObservableObject {
    associatedtype R
    var path: NavigationPath { get set }
    var sheet: Sheet? { get set }
    var fullScreenCover: FullScreenCover? { get set }
    func push(page: R)
    func pop()
    func popToRoot()
    func presentSheet(_ sheet: Sheet)
    func presentFullScreenCover(_ cover: FullScreenCover)
    func dismissSheet()
    func dismissCover()
}
