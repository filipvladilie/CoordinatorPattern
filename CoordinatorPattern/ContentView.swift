//
//  ContentView.swift
//  CoordinatorPattern
//
//  Created by Vlad-Ilie Filip on 24.01.2025.
//

import SwiftData
import SwiftUI

enum Tab {
    case home, profile
}

struct ContentView: View {

    @StateObject var homeCoordinator = HomeCoordinator()
    @StateObject var profileCoordinator = ProfileCoordinator()
    @State private var selectedTab: Tab = .home

    var body: some View {
        TabView(selection: $selectedTab) {

            Home()
            .environmentObject(homeCoordinator)
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .tag(Tab.home)
            
            Profile()
            .tabItem {
                Label("Profile", systemImage: "person")
            }
            .tag(Tab.profile)
            .environmentObject(profileCoordinator)

        }
    }
    
    struct Home: View {
        @EnvironmentObject var homeCoordinator: HomeCoordinator
        var body: some View {
            NavigationStack(path: $homeCoordinator.path) {
                homeCoordinator.build(page: .home)
                   
                    .navigationDestination(for: HomeRoute.self) { route in
                        homeCoordinator.build(page: route)
                    }
                    .sheet(item: $homeCoordinator.sheet) { sheet in
                        homeCoordinator.buildSheet(sheet: sheet)
                    }
                    .fullScreenCover(item: $homeCoordinator.fullScreenCover) {
                        fullScreenCover in
                        homeCoordinator.buildCover(cover: fullScreenCover)
                    }
                    
            }
        }
    }
    
    struct Profile: View {
        @EnvironmentObject var profileCoordinator: ProfileCoordinator
        var body: some View {
            NavigationStack(path: $profileCoordinator.path) {
                profileCoordinator.build(page: .profile)
                    
                    .navigationDestination(for: ProfileRoute.self) { route in
                        profileCoordinator.build(page: route)
                    }
                    .sheet(item: $profileCoordinator.sheet) { sheet in
                        profileCoordinator.buildSheet(sheet: sheet)
                    }
                    .fullScreenCover(item: $profileCoordinator.fullScreenCover) {
                        fullScreenCover in
                        profileCoordinator.buildCover(cover: fullScreenCover)
                    }
                    
            }
        }
    }

}

