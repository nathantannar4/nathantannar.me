//
//  ResumeContext.swift
//  App
//
//  Created by Nathan Tannar on 2018-08-08.
//

import Vapor

struct Resume: Content {
    let title: String
    let education: [Education]
    let hobbies: [Hobby]
    let jobs: [Job]
    let languages: [LanguageCompetence]
    let skills: [Skill]
    let projects: [Project]
}

struct Education: Content {
    let school: String
    let degree: String
    let concentration: String
    let date: String
    let awards: [String]
    let url: String
}

struct Job: Content {
    let title: String
    let company: String
    let highlights: [String]
    let date: String
    let url: String
}

struct Hobby: Content {
    let name: String
    let icon: String
}

struct LanguageCompetence: Content {
    let name: String
    let percent: Int
}

struct Skill: Content {
    let name: String
    let description: String
}

struct Project: Content {
    let name: String
    let caption: String
    let highlights: [String]
    let language: String
    let version: String
    let category: String
    let description: String
    let url: String
    let imageUrl: String
}


