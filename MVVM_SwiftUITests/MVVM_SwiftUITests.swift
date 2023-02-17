//
//  MVVM_SwiftUITests.swift
//  MVVM_SwiftUITests
//
//  Created by User on 8/2/2023.
//

import XCTest
@testable import MVVM_SwiftUI

class MockDataService: DataService {
    func getUsers(completion: @escaping ([User]) -> Void) {
        completion([User(id: 1, name: "Test Sample")])
    }
}

class MVVM_SwiftUITests: XCTestCase {
    
    var systemToTest: UsersViewModel!
    
    override func setUpWithError() throws {
        // called before the invocation of each test method in the class.
        systemToTest = UsersViewModel(dataService: MockDataService())
    }

    override func tearDownWithError() throws {
        // called after the invocation of each test method in the class.
        systemToTest = nil
    }

    func test_getUsers() throws {
        XCTAssertTrue(systemToTest.users.isEmpty)
        
        systemToTest.getUsers()
        
        XCTAssertEqual(systemToTest.users.count, 1)
    }
}
