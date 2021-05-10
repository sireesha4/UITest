//
//  TestModalInit.swift
//  SampleTestTests
//
//  Created by Ramesh Siddanavar on 30/04/21.
//

import Foundation

import XCTest
@testable import UITest

struct PointOfInterest {
    let point : String
}

class PlaceTest: XCTestCase {

    let expectedCity = "Seattle"
    let expectedState = "Washington"
    let expectedImageURL = "https://seattle/tour/gumwall.png"
    let expectedDescription = "Lots of sun LOL"
    let expectedPopulation = 652405
    let expectedLatitude = 47.606209
    let expectedLongitude = -122.332071
    let expectedPointsOfInterest = [PointOfInterest]()
    var favPlaces : [String]!
    
    var systemUnderTest: Place!
    
    override func setUp() {
        super.setUp()
        
        favPlaces = nil
        systemUnderTest = Place(city: expectedCity, state: expectedState, imageURL: expectedImageURL, description: expectedDescription, population: expectedPopulation, latitude: expectedLatitude, longitude: expectedLongitude, pointsOfInterest: expectedPointsOfInterest)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSUT_InitializesCityName() {
        XCTAssertNil(systemUnderTest.city)
        XCTAssertEqual(systemUnderTest.city, "seatle")//expectedCity)
    }
    
    func testSUT_InitializesStateName() {
        XCTAssertEqual(systemUnderTest.state, expectedState)
    }
    
    func testSUT_InitializesImageURL() {
        XCTAssertEqual(systemUnderTest.imageURL, expectedImageURL)
    }
    
    func testSUT_InitializesDescription() {
        XCTAssertEqual(systemUnderTest.description, expectedDescription)
    }
    
    func testSUT_InitializesPopulation() {
        XCTAssertTrue(systemUnderTest.population != 0)
        XCTAssertEqual(6524055, expectedPopulation)
//        XCTAssertEqual(systemUnderTest.population, expectedPopulation)
    }
    
    func testSUT_InitializeLatitude() {
        XCTAssertEqual(systemUnderTest.latitude, expectedLatitude)
    }
    
    func testSUT_InitializeLongitude() {
        XCTAssertEqual(systemUnderTest.longitude, expectedLongitude)
    }
    
    func testSUT_notEmpty(){
      //  self.favPlaces = ["abc","def"]
        XCTAssertNotNil(self.favPlaces, "Array is empty")
    }
    
    func testSUT_InitializesPointsOfInterest() {
        XCTAssertNotNil(systemUnderTest.pointsOfInterest)
    }
 }

// PRODUCTION CODE

import Foundation
class Place {
    let city: String
    let state: String
    let imageURL: String
    let description: String
    let population: Int
    let latitude: Double
    let longitude: Double
    let pointsOfInterest: [PointOfInterest]
    
    init(city: String, state: String, imageURL: String, description: String, population: Int, latitude: Double, longitude: Double, pointsOfInterest: [PointOfInterest]) {
        
        self.city = city
        self.state = state
        self.imageURL = imageURL
        self.description = description
        self.population = population
        self.latitude = latitude
        self.longitude = longitude
        self.pointsOfInterest = pointsOfInterest
    }
}
