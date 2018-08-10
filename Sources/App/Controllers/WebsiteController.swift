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
        let context = Resume.generate()
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
