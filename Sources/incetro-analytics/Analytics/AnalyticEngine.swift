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
    
    /// An enumeration representing the debug mode for logging.
    public enum DebugMode {
        case debug
        case normal
    }
    
    /// The analytics providers that the system can use to send events.
    private let providers: [any AnalyticProvider]
    
    /// The mode of operation for logging.
    private let mode: DebugMode

    // MARK: - Initializers
    
    /// Initializes the analytics engine with the provided providers.
    ///
    /// - Parameter providers: The providers to be registered with the implementation.
    public init(providers: [any AnalyticProvider], mode: DebugMode) {
        self.providers = providers
        self.mode = mode
    }
}

extension AnalyticEngine {
    
    // MARK: - AnalyticEngine
    
    /// Sends an analytics event to all configured analytics providers.
    ///
    /// - Parameter event: The analytics event to be sent.
    public func send(event: any AnalyticsEvent) throws {
        do {
            try providers.forEach { provider in
                try provider.send(event: event)
                // Conditionally print debug message based on mode
                if mode == .debug {
                    print("send event \(event.name) for \(provider) with \(event.metadata)")
                }
            }
        }
    }
}
