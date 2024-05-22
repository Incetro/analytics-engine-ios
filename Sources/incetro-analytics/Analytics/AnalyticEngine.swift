//
//  AnalyticEngine.swift
//
//
//  Created by Andrey Barsukov on 14.05.2024.
//

import Foundation

// MARK: - AnalyticEngine

public final class AnalyticEngine {
    
    // MARK: - Properties
    
    /// The analytics providers that the system can use to send events.
    private let providers: [any AnalyticProvider]

    // MARK: - Initializers
    
    /// Initializes the analytics engine with the provided providers.
    ///
    /// - Parameter providers: The providers to be registered with the implementation.
    public init(providers: [any AnalyticProvider]) {
        self.providers = providers
    }
}

extension AnalyticEngine {
    
    // MARK: - AnalyticEngine
    
    /// Sends an analytics event to all configured analytics providers.
    ///
    /// - Parameter event: The analytics event to be sent.
    public func send(event: any AnalyticsEvent) {
        do {
            try providers.forEach { provider in
                try provider.send(event: event)
#if DEBUG
print("send event (event.rawValue) for (provider.rawValue)")
#endif
            }
        } catch {
            
        }
    }
}
