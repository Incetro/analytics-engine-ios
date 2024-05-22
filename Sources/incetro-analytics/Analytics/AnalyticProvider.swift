//
//  AnalyticProvider.swift
//
//
//  Created by Andrey Barsukov on 14.05.2024.
//

import Foundation

// MARK: - AnalyticProvider

/// A protocol for an analytics provideer that sends events to registered handlers.
public protocol AnalyticProvider {
    
    /// Sends the specified analytics event.
    ///
    /// - Parameter event: The analytics event to be sent.
    /// - Throws: An error if the event could not be sent.
    func send(event: any AnalyticsEvent) throws
}
