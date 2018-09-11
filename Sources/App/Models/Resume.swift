//
//  Resume.swift
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
    let volunteerJobs: [Job]
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

extension Resume {
    
    static func generate() -> Resume {
        let education: [Education] = [
            Education(school: "Simon Fraser University", degree: "Bachelors of Applied Science", concentration: "Computer Engineering", date: "GRADUATING 2019", awards: ["Dean's Honor Roll 2017/2018"], url: "http://www.sfu.ca/engineering/current-students/undergraduate-students/programs-and-requirements/computer-engineering.html"),
            Education(school: "Student Works Painting", degree: "Business Management", concentration: "", date: "JAN 2015", awards: ["Top 5 Rookie Franchisee", "Fast Start Award"], url: "https://studentworkspainting.ca"),
            Education(school: "R.E. Mountain Secondary", degree: "International Baccalaureate", concentration: "Diploma", date: "SEPT 2012 - JUNE 2014", awards: [], url: "https://www.ibo.org/about-the-ib/")
        ]
        let hobbies: [Hobby] = [
            Hobby(name: "Motorcycles", icon: "fa-motorcycle"),
            Hobby(name: "Travel", icon: "ti-map-alt"),
            Hobby(name: "UI/UX Design", icon: "ti-pencil"),
            Hobby(name: "Photography", icon: "ti-camera")
        ]
        let jobs: [Job] = [
            Job(title: "System Support Engineer Intern", company: "SAP Canada", highlights: ["Provided support for the world’s leading enterprise application server, SAP NetWeaver, to customers and colleagues", "Debugged errors during upgrades, installations, source code implementation and database migrations", "Actively identified and suggested new technologies and tools for enhancing the team’s productivity"], date: "MAY 2016 - APRIL 2017", url: "https://www.sap.com/canada/about.html"),
            Job(title: "iOS Developer Intern", company: "SAP Canada", highlights: ["Built, tested and deployed a native iOS app used internally by SAP employees worldwide", "Implemented a backend connection to the SAP Cloud Platform to pull employee discounts and incentives to the user dynamically based on location", "Implemented search and sorting functionality when viewing the data on a list or map"], date: "OCT 2016 – JAN 2017", url: "https://www.sap.com/canada/about.html"),
            Job(title: "Programming Mentor", company: "Udacity", highlights: ["Served as a mentor to over 100 students online who were learning programming for the first time", "Helped to promote correct coding conventions and best practices", "Reviewed student’s projects and submitted feedback to help them improve"], date: "NOV 2017 – PRESENT", url: "https://www.sap.com/canada/about.html"),
            Job(title: "Franchise Owner/Operator", company: "Student Works", highlights: ["Developed and executed marketing programs / general business solutions resulting in increased company exposure, customer traffic and sales", "Responded to high pressure and time constrained situations", "Placed in the Top 5 Rookie Franchisee Operators in Western Canada and awarded the Fast Start Award"], date: "JAN 2015 – SEPT 2015", url: "https://studentworkspainting.ca/alumni-speak/")
        ]
        let volunteerJobs: [Job] = [
            Job(title: "Faculty of Applied Science Ambassador", company: "Simon Fraser University", highlights: ["Organized presentations with teachers in local Vancouver high schools", "Spoke to grade 11 and 12 students about the opportunities you can seize by perusing a passion for technology and applied science"], date: "SEPT 2017 – AUG 2018", url: "https://www.sfu.ca/fas/prospective-students/tour.html"),
            Job(title: "Chair", company: "SAP Vancouver Intern Community", highlights: ["Created, proposed and maintained the first annual budget given to the community Lead the organization of an external Hackathon targeted at finding new early talent", "Assisted with the onboarding of new interns",
                                                                                        "Helped plan and executed everything from small weekly events to larger site wide events", "Hosted presentations on workplace expectations and the importance of networking"], date: "SEPT 2016 – APRIL 2017", url: ""),
            Job(title: "VP Communications", company: "Western Engineering Competition 2017", highlights: ["Designed and programmed a website that included a portal where delegates could register, submit required files, and interact with others", "Helped to design graphics and resources used for branding, attracting sponsors the competition itself", "Worked with a team of volunteers during the event to ensure events ran smoothly Created transition documents for the incoming organizing committee of 2018"], date: "APRIL 2016 – FEB 2017", url: "http://wesst.ca/wec.html")
        ]
        let languages: [LanguageCompetence] = [
            LanguageCompetence(name: "Swift", percent: 95),
            LanguageCompetence(name: "SQL", percent: 92),
            LanguageCompetence(name: "Java/Javascript", percent: 87),
            LanguageCompetence(name: "VHDL", percent: 86),
            LanguageCompetence(name: "C/C++", percent: 80),
            LanguageCompetence(name: "Python", percent: 80)
        ]
        let skills: [Skill] = [
            Skill(name: "Languages", description: "Swift, SQL, Java/JavaScript, VHDL, C/C++, Python"),
            Skill(name: "Software", description: "Git, XCode, CocoaPods, NGINX, MySQL, Fastlane"),
            Skill(name: "Technologies", description: "RESTful, Node.js, Google Cloud Platform, Apple APNS")
        ]
        let projects: [Project] = [
            Project(name: "MessageKit", caption: "A UI library for messaging applications", highlights: ["2200+ Stars on GitHub"], language: "Swift 4.1", version: "1.1.0", category: "Framework", description: "MessageKit is a UI framework built in Swift to replace JSQMessagesViewController. It has quickly gained traction as a common trending repository on Github. I am one of the projects maintainers and core developers.", url: "https://github.com/MessageKit/MessageKit", imageUrl: "https://github.com/MessageKit/MessageKit/blob/master/Assets/mklogo.png?raw=true"),
            Project(name: "InputBar\nAccessoryView", caption: "A reactive InputAccessoryView", highlights: ["170+ Stars on GitHub"], language: "Swift 4.1", version: "2.2.2", category: "Framework", description: "With ease you can create a reactive input bar similar to those found in Facebook Messenger, Slack, iMessage and many more. InputAccessoryView also makes it easy to add predictive autocomplete functionality.", url: "https://github.com/nathantannar4/InputBarAccessoryView", imageUrl: "https://raw.githubusercontent.com/nathantannar4/InputBarAccessoryView/master/Screenshots/Banner.png"),
            Project(name: "Parse Dashboard for iOS", caption: "A native client for interacting with your Parse Server API", highlights: ["6000+ App Store Downloads"], language: "Swift 4.1", version: "5.0.1", category: "App", description: "Parse Dashboard for iOS is a standalone dashboard for managing your Parse apps while you are on the go! Edit, create and delete data from your MongoDB. View and upload new image files. Based off of the original Parse Dashboard we all know and love.", url: "https://github.com/nathantannar4/Parse-Dashboard-for-iOS", imageUrl: "https://raw.githubusercontent.com/nathantannar4/Parse-Dashboard-for-iOS/master/Parse%20Dashboard%20for%20iOS/Assets.xcassets/Dashboard.imageset/Z0Rz5Xs.png"),
            Project(name: "Loki - Emotion AI", caption: "NWHacks 2018", highlights: ["ARKit & Tensorflow"], language: "Swift & Python", version: "1.0.0", category: "Hackathon", description: "Loki presents a news feed to the user much like other popular social networking apps. However, in the background, it uses iOS' ARKit to gather the user's facial data. This data is piped through a neural network model we trained to map facial data to emotions. We use the currently-detected emotion to modify the type of content that gets loaded into the news feed.\nWe were inspired to build Loki to illustrate the plausibility of social media platforms tracking user emotions to manipulate the content that gets shown to them.", url: "https://github.com/nwhacks-loki/loki", imageUrl: "https://github.com/nwhacks-loki/loki/raw/master/images/loki_banner.png?raw=true"),
            Project(name: "HalalMe", caption: "Freelance Contract", highlights: [], language: "Swift 4", version: "1.0.1", category: "Freelance", description: "Working with a startup of local SFU students I aided by developing their iOS client for HalalMe - an aggregated source of Halal restaurants in Vancouver", url: "http://halalme.xyz", imageUrl: "https://scontent.fyvr3-1.fna.fbcdn.net/v/t1.0-9/34303061_437219416749107_3779684611911581696_o.jpg?_nc_cat=0&oh=5950c368eaf4caf02159dd6c32ae363f&oe=5C0C1CD2"),
            Project(name: "TypingIndicator", caption: "A replica of iMessage's typing indicator bubble", highlights: ["110+ Stars on GitHub", "Featured by The iOS Times"], language: "Swift 4.1", version: "0.1.0", category: "Concept", description: "A working prototype of an iMessage like typing indicator that quickly gained traction being featured by multiple tech blogs and articles", url: "https://github.com/nathantannar4/TypingIndicator", imageUrl: "https://raw.githubusercontent.com/nathantannar4/TypingIndicator/master/banner.png"),
            Project(name: "Personal Website", caption: "This site your currently viewing!", highlights: ["Vapor 3 - Serverside Swift"], language: "Swift 4.1", version: "1.0.0", category: "App", description: "For my first project using the server side Swift framework, Vapor, I converted my old static HTML pages into a more dynamic site thats contents are rendered with data models.", url: "https://github.com/nathantannar4/nathantannar.me", imageUrl: "https://raw.githubusercontent.com/nathantannar4/nathantannar.me/master/Preview.jpeg"),
            Project(name: "DormHub", caption: "Term Project", highlights: ["MySQL Backend", "ReactJS Frontend"], language: "Javascript", version: "1.0.0", category: "School", description: "DormHub was a term project that introduced me to backend development with a SQL based database. The goal was to develop a system that could help students find roommate for University", url: "https://github.com/nathantannar4/DormHub", imageUrl: "http://"),
            Project(name: "Safety Beacon", caption: "Term Project", highlights: ["ARKit and NodeJS Backend"], language: "Swift", version: "1.0.0", category: "School", description: "Alzheimer’s is a disease that effects not only the patient but everyone who is close to them. You may find yourself worried that your family members might one day forget where they live and wonder off. In fact, 6/10 people will wonder off and get lost! Or maybe you are worried that they are taking too many trips to the pharmacy buying over the counter drugs or the casino spending their money and not remembering how much they lost. While you may not always be able to be by their side, with Safety Beacon you can rest easy knowing you have a direct link to their current and previous whereabouts.", url: "https://github.com/nathantannar4/Safety-Beacon", imageUrl: "https://github.com/nathantannar4/Safety-Beacon/raw/master/SafetyBeacon/Assets/Logo.png"),
            Project(name: "NTComponents", caption: "A framework build to explore UIKit", highlights: [], language: "Swift 4", version: "1.0.0", category: "Framework", description: "For the better part of two years I have been learning Swift. During this time I used a lot of 3rd party dependencies to build out my apps. While they were useful for getting started, I wanted to dive deeper and create my own set of components that would have the essentials I would need to develop apps moving forward.", url: "https://github.com/nathantannar4/NTComponents", imageUrl: "https://raw.githubusercontent.com/nathantannar4/NTComponents/master/NTComponents/Assets/NT%20Components%20Banner.jpg"),
            Project(name: "Engage", caption: "Slack + Facebook", highlights: [], language: "Swift 3.2", version: "1.2.0", category: "App", description: "A dynamic group based social networking application with role based permissions Implemented private and group messaging with push notifications. I started developing this app while learning to work with popular open-source libraries. It was the first app I published on the Apple App Store", url: "https://github.com/nathantannar4/Engage", imageUrl: "https://github.com/nathantannar4/Engage/raw/master/Engage/Engage-Wide.jpg")
        ]
        return Resume(title: "Nathan Tannar", education: education, hobbies: hobbies, jobs: jobs, volunteerJobs: volunteerJobs, languages: languages, skills: skills, projects: projects)
    }
    
}


