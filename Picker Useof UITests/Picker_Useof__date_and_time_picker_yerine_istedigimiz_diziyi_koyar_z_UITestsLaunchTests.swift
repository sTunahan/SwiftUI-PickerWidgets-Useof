//
//  Picker_Useof__date_and_time_picker_yerine_istedigimiz_diziyi_koyar_z_UITestsLaunchTests.swift
//  Picker Useof (date and time picker yerine istedigimiz diziyi koyarız)UITests
//
//  Created by asuftech on 22.02.2022.
//

import XCTest

class Picker_Useof__date_and_time_picker_yerine_istedigimiz_diziyi_koyar_z_UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
