//
//  ProjectMVVMM_CoreDataApp.swift
//  ProjectMVVMM_CoreData
//
//  Created by Hanitha Dhavileswarapu on 6/12/26.
//

import SwiftUI

@main
struct ProjectMVVMM_CoreDataApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
