//
//  WebsiteController.swift
//  App
//
//  Created by Nathan Tannar on 2018-08-08.
//

import Vapor

final class WebsiteController: RouteCollection {
    
    func boot(router: Router) throws {
        router.get(use: index)
    }
    
    func index(_ req: Request) throws -> Future<View> {
        let education: [Education] = [
            Education(school: "Simon Fraser University", degree: "Bachelors of Applied Science", concentration: "Computer Engineering", date: "GRADUATING SPRING 2019", awards: ["Dean's Honor Roll 2017/2018"], url: "http://www.sfu.ca/engineering/current-students/undergraduate-students/programs-and-requirements/computer-engineering.html")
        ]
        let hobbies: [Hobby] = [
            Hobby(name: "Motorcycles", icon: "fa fa-motorcycle")
        ]
        let jobs: [Job] = [
            Job(title: "System Support Engineer Intern", company: "SAP Canada", highlights: [], date: "MAY 2016 - APRIL 2017", url: "https://www.sap.com/canada/about.html")
        ]
        let languages: [LanguageCompetence] = [
            LanguageCompetence(name: "Swift", percent: 98)
        ]
        let skills: [Skill] = [
            Skill(name: "Languages", description: "Swift, C/C++, JavaScript, SQL, VHDL")
        ]
        let projects: [Project] = [
            Project(name: "MessageKit", caption: "A UI library for messaging applications", highlights: ["2200+ Stars on GitHub"], language: "Swift 4.1", version: "1.1.0", category: "Framework", description: "MessageKit is a UI framework built in Swift to replace JSQMessagesViewController. It has quickly gained traction as a common trending repository on Github. I am one of the projects maintainers and core developers.", url: "https://github.com/MessageKit/MessageKit", imageUrl: "https://github.com/MessageKit/MessageKit/blob/master/Assets/mklogo.png?raw=true")
        ]
        let context = Resume(title: "Nathan Tannar", education: education, hobbies: hobbies, jobs: jobs, languages: languages, skills: skills, projects: projects)
        return try req.view().render("index", context)
    }
    
    
//    router.get { req in
//    return try req.view().render("welcome")
//    }
//
//    // Says hello
//    router.get("hello", String.parameter) { req -> Future<View> in
//    return try req.view().render("hello", [
//    "name": req.parameters.next(String.self)
//    ])
//    }
}
