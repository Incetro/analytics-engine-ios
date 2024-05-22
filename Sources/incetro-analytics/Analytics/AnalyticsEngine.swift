//
//  AnalyticsEngine.swift
//
//
//  Created by Andrey Barsukov on 14.05.2024.
//

<<<<<<< ours
=======
import Foundation

// MARK: - AnalyticsEngine

/// A protocol for an analytics engine that sends events to registered handlers.
public protocol AnalyticsEngine {
    
    /// Sends the specified analytics event.
    ///
    /// - Parameter event: The analytics event to be sent.
    /// - Throws: An error if the event could not be sent.
    func send(event: any AnalyticsEvent) throws
}

>>>>>>> theirs
