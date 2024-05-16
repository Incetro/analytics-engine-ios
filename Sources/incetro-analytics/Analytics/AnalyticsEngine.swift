//
//  AnalyticsEngine.swift
//
//
//  Created by Andrey Barsukov on 14.05.2024.
//

import Foundation

// MARK: - AnalyticsEngine

public protocol AnalyticsEngine {
    
    /// Notifies the handler that an event has occurred.
    ///
    /// - Parameter event: The analytics event that has occurred.
    func send(event: any AnalyticsEvent) throws
}
