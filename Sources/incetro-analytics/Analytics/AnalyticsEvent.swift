//
//  AnalyticsEvent.swift
//  
//
//  Created by Andrey Barsukov on 16.05.2024.
//

import Foundation

// MARK: - AnalyticsEvent

/// A protocol representing an analytics event.
public protocol AnalyticsEvent: Equatable {

    /// The associated type for the metadata of the event.
    associatedtype Metadata

    /// The name of the analytics event.
    var name: String { get }

    /// The associated metadata for the event.
    var metadata: Metadata { get }
}
