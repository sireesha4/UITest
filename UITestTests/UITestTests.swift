//
//  UITestTests.swift
//  UITestTests
//
//  Created by Ramesh Siddanavar on 06/05/21.
//

import XCTest
@testable import UITest

class UITestTests: XCTestCase {

    var viewControllerUnderTest = ViewController()
    
    override func setUp() {

        super.setUp()

//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        self.viewControllerUnderTest = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
//
//        self.viewControllerUnderTest.loadView()
//        self.viewControllerUnderTest.viewDidLoad()
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
//    func test_userTF_nil(){
//        XCTAssertNil(viewControllerUnderTest.nameTF.text, "User Name is Nil")
//    }
    
//    func test_userTF_Value(){
//        XCTAssert((viewControllerUnderTest.nameTF.text != nil), "m not nil")
//    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
