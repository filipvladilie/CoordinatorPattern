//
//  EnumView.swift
//  CoordinatorPattern
//
//  Created by Vlad-Ilie Filip on 26.01.2025.
//

enum HomeRoute: Route {
    case home
    case profile
    case detail
    case detailDeep

    var id: Self { return self }
}

enum ProfileRoute: Route {
    case profile
    var id: Self { return self }
}

protocol Route: Identifiable, Hashable {}

enum Sheet: String, Identifiable {
    var id: String {
        self.rawValue
    }

    case sheet
}

enum FullScreenCover: String, Identifiable {
    var id: String {
        self.rawValue
    }

    case fullScreen
}
