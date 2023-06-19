//
//  SoCoApp.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/15/23.
//

import SwiftUI

@main
struct SoCoApp: App {
    var body: some Scene {
        WindowGroup {
            //TODO: if user has never opened app, go to first page (use @AppStorage)
            SoCoContent()
        }
    }
}
