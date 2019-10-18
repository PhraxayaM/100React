//
//  SessionModel.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/17/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation


// MARK: - Session
struct Session: Codable {
    let id: Int
    let image: String
    let atBats, avg, doubles, hits: Int
    let homeRuns, lob, points, rbi: Int
    let runs, singles, slg, triples: Int
    let result: String?
    let home, away, risk, safe: Int
    let grandSlam, off, stop: Int
    let level: String
    let sessionFinal: Bool
    let title, taskOne, taskTwo, taskThree: String
    let taskFour: String
    let workDuration, breakDuration: Int
    let workTotal, breakTotal: String?
    let donation, firstHome, firstPoints: Int
    let createdAt: String
    let four: JSONNull?
    let player: Int

    enum CodingKeys: String, CodingKey {
        case id, image, atBats, avg, doubles, hits, homeRuns, lob, points, rbi, runs, singles, slg, triples, result, home, away, risk, safe, grandSlam, off, stop, level
        case sessionFinal = "final"
        case title
        case taskOne = "task_one"
        case taskTwo = "task_two"
        case taskThree = "task_three"
        case taskFour = "task_four"
        case workDuration = "work_duration"
        case breakDuration = "break_duration"
        case workTotal, breakTotal, donation, firstHome, firstPoints, createdAt, four, player
    }
}

typealias Sessions = [Session]

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
