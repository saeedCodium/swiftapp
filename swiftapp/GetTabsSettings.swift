//
//  GetTabsSettings.swift
//  swiftapp
//
//  Created by Saeed Rahmatolahi on 28/10/2563 BE.
//

import Foundation
import UIKit

class GetTabsSettings {
    func getCellSize(_ tab : tabs) -> CGSize {
        switch tab {
        case .a:
            return CGSize(width: .screenWidth, height: .screenHeight * 2/5)
        case .b:
            return CGSize(width: .screenWidth * 0.7, height: .screenHeight * 0.3)
        case .c:
            return CGSize(width: .screenWidth, height: .screenWidth)
        }
    }
}
