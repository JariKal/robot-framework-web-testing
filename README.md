# Robot Framework Web Testing – ALT Zone

Web UI test automation practice using **Robot Framework**, **SeleniumLibrary**, and **Microsoft Edge**.

This project demonstrates my practical experience in executing automated browser tests, validating navigation, investigating failures, and troubleshooting test scripts.

The tests are performed against the ALT Zone development website.

## Tools & Technologies

- **Robot Framework** – Test automation framework
- **SeleniumLibrary** – Browser automation
- **Microsoft Edge** – Test browser
- **Python** – Running Robot Framework tests
- **PowerShell** – Command-line test execution
- **AI assistance** – Test script improvements and troubleshooting

## What the Test Covers

The `altzone_news.robot` test:

1. Opens the ALT Zone development website in Microsoft Edge.
2. Maximizes the browser window.
3. Declines the cookie consent request.
4. Navigates to the news page.
5. Verifies that the news page contains news articles.
6. Checks that at least three news articles are available.
7. Opens the first three articles individually.
8. Verifies that each article opens at the expected article URL.
9. Returns to the news listing between articles.
10. Closes browser windows automatically after execution.

The test uses reusable Robot Framework keywords and a `FOR` loop to check multiple articles.

## Test Results

**Last verified:** October 18, 2026

| Metric | Result |
|---|---|
| Test cases | 1 |
| Passed | 1 |
| Failed | 0 |
| Browser | Microsoft Edge |
| Framework | Robot Framework with SeleniumLibrary |

The test successfully verified navigation to three news articles.

Results may change as the development website is updated.

## How to Run

### Requirements

Install Python and Microsoft Edge.

Install Robot Framework and SeleniumLibrary:

```powershell
python -m pip install robotframework robotframework-seleniumlibrary
```

### Run the Test

Open PowerShell in the directory containing `altzone_news.robot` and execute:

```powershell
python -m robot altzone_news.robot
```

The test opens Microsoft Edge, performs the browser interactions, verifies the expected navigation, and closes the browser after execution.

Robot Framework generates local execution reports such as `log.html`, `report.html`, and `output.xml`.

## AI-Assisted Test Automation

I used AI assistance while developing and improving this test.

AI assisted with:

- Improving the Robot Framework test structure.
- Troubleshooting Selenium element click errors.
- Investigating navigation and URL validation failures.
- Replacing outdated text-based checks with more reliable URL validation.
- Improving waits and browser cleanup.

I executed the tests myself, examined the failures, verified browser behavior, and confirmed the final passing result.

My primary background is in manual software testing. I am developing my test automation skills through practical exercises and AI-assisted learning.

## Project Context

ALT Zone is a multiplayer mobile game developed by Psyche's Royale Gaming ry.

This repository is a personal testing portfolio example focused on web UI automation using Robot Framework and SeleniumLibrary.

## Related Testing Projects

- [Manual Software Testing Portfolio](https://github.com/JariKal/manual-testing-portfolio)
- [Postman & Newman API Testing](https://github.com/JariKal/postman-newman-api-testing)
- [ALT Zone API Testing with Robot Framework](https://github.com/JariKal/altzone-api-testing)
- [Robot Framework API Testing Practice](https://github.com/JariKal/robot-framework-api-testing)
