//
//  ProfileViewModel.swift
//  MyChat
//
//  Created by sua on 6/19/24.
//

import Foundation

enum ProfileViewModelType {
    case info, logout
}

struct ProfileViewModel {
    let viewModelType: ProfileViewModelType
    let title: String
    let handler: (() -> Void)?
}
