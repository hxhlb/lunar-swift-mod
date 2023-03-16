import XCTest
@testable import LunarSwift

final class EightCharTests: XCTestCase {
    func test1() throws {
        let solar = Solar.fromYmdHms(year: 2005, month: 12, day: 23, hour: 8, minute: 37)
        let lunar = solar.lunar
        let eightChar = lunar.eightChar
        XCTAssertEqual(eightChar.year, "乙酉")
        XCTAssertEqual(eightChar.month, "戊子")
        XCTAssertEqual(eightChar.day, "辛巳")
        XCTAssertEqual(eightChar.time, "壬辰")
    }

    func test2() throws {
        let solar = Solar.fromYmdHms(year: 1988, month: 2, day: 15, hour: 23, minute: 30)
        let lunar = solar.lunar
        let eightChar = lunar.eightChar
        XCTAssertEqual(eightChar.year, "戊辰")
        XCTAssertEqual(eightChar.month, "甲寅")
        XCTAssertEqual(eightChar.day, "庚子")
        XCTAssertEqual(eightChar.time, "戊子")

        eightChar.sect = 1
        XCTAssertEqual(eightChar.year, "戊辰")
        XCTAssertEqual(eightChar.month, "甲寅")
        XCTAssertEqual(eightChar.day, "辛丑")
        XCTAssertEqual(eightChar.time, "戊子")
    }

}