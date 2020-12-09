//
//  HomePresenter.swift
//  Reportedly
//
//  Created by Mikey Pham on 12/9/20.
//  Copyright © 2020 NimbleHQ. All rights reserved.
//

import Foundation

final class HomePresenter {

    private let router: HomeRouterInput
    private let interactor: HomeInteractorInput

    weak var view: HomeViewInput?
    weak var output: HomeOutput?

    init(
        router: HomeRouterInput,
        interactor: HomeInteractorInput
    ) {
        self.router = router
        self.interactor = interactor
    }
}

// MARK: - HomeViewOutput

extension HomePresenter: HomeViewOutput {
    
    func viewDidLoad() {
        view?.configure()
    }
    
    func viewWillAppear() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormat.EEEE_MMMM_dd_YYYY
        dateFormatter.locale = Locale(identifier: LanguageSystem.shared.currentLanguage.locale.identifier)
        view?.setCurrentTime(dateFormatter.string(from: Date()))
    }
    
    func didTapStartReportingButton() {
        // TODO: Show submit reporting screen
        view?.showToastNotification(message: "Start Reporting button pressed")
    }
    
    func didTapMenuOptionReportHistoryButton() {
        // TODO: Show report history screen
        view?.showToastNotification(message: "Report history menu option pressed")
    }
    
    func didTapMenuOptionChannelSubscriptionButton() {
        // TODO: Show channel subscription screen
        view?.showToastNotification(message: "Channel Subscription menu option pressed")
    }
    
    func didTapMenuOptionUserSettingsButton() {
        // TODO: Show user settings screen
        view?.showToastNotification(message: "User Settings menu option pressed")
    }
    
    func didTapMenuOptionLogoutButton() {
        // TODO: Logout the user and show login screen
        view?.showToastNotification(message: "Logout menu option pressed")
    }
}

// MARK: - HomeInteractorOutput

extension HomePresenter: HomeInteractorOutput {
}

// MARK: - HomeInput

extension HomePresenter: HomeInput {
}
