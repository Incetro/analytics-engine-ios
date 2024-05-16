//
//  AnalyticsEngineImplementation.swift
//
//
//  Created by Andrey Barsukov on 14.05.2024.
//

import Foundation

// MARK: - AnalyticsEngineImplementation

public final class AnalyticsEngineImplementation {
    
    // MARK: - Properties
    
    /// The analytics engines that the system can use to send events.
    private let engines: [AnalyticsEngine]

    // MARK: - Initializers
    
    /// Initializes the analytics engine with the provided handlers.
    ///
    /// - Parameter handlers: The handlers to be registered with the engine.
    public init(engines: [any AnalyticsEngine]) {
        self.engines = engines
    }
}

extension AnalyticsEngineImplementation {
    
    // MARK: - Methods
    
    /// Sends an analytics event to all configured analytics engines.
    /// - Parameter event: The analytics event to be sent.
    public func send(event: any AnalyticsEvent) {
        do {
            try engines.forEach { engine in
                try engine.send(event: event)
            }
        } catch {
            print("Unknown error '\(error.localizedDescription)'")
        }
    }
}
