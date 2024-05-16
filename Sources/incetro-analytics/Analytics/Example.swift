//
//  Example.swift
//
//
//  Created by Andrey Barsukov on 16.05.2024.
//

import Foundation

struct PurchaseEvent: AnalyticsEvent {
    
    // MARK: - Properties
    
    let name: String = "Purchase"
    
    // MARK: - AnalyticsEvent
    
    var metadata: [String: Any] {
        [
            "name": name
        ]
    }
}

// MARK: - YandexAnalytics

/// A class representing the Yandex Analytics engine.
final class YandexAnalytics: AnalyticsEngine {
    
    // MARK: - AnalyticsEngine
    
    /// Sends an analytics event to Yandex Analytics.
    /// - Parameter event: The analytics event to be sent.
    /// - Throws: An error if the event cannot be sent.
    func send(event: any AnalyticsEvent) throws {
        print("Event \(event) sent to Yandex")
    }
}

func runExampleWithString() {
    
    let analyticsSystem = AnalyticsEngineImplementation(
        engines: [
            YandexAnalytics()
        ]
    )
    analyticsSystem.send(event: PurchaseEvent())
}
