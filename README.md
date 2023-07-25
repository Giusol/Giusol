
# Final project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application. 

Application under test: https://opensource-demo.orangehrmlive.com/

API Documentation: https://github.com/vdespa/introduction-to-postman-course/blob/main/simple-books-api.md

**The final project will be split into 2 sections: [Testing section](https://github.com/Giusol/manual_testing_final_project_template/edit/main/README.md) and [SQL section](https://github.com/Giusol/manual_testing_final_project_template/blob/main/SQL_OrangeHRM/SQL_OrangeHRM.sql).**

Tools used: JIRA, Zephyr Squad, Postman, MySQL Workbench. 

# Functional specifications

The Story below was created in JIRA and describes the functional specifications of the Organization module for which the final project is being created. 

<img width="468" alt="Imagine1" src="https://github.com/Giusol/manual_testing_final_project_template/assets/128817422/eecc0428-53b2-43bf-9719-caa056fa5b25">


# 1 Testing section

## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for the Organization module from the OrangeHRM application.
The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan

#### 1.1.1 Roles assigned to the project and persons allocated

* Project manager - Maria Ionescu
* Product owner - Ion Teacu
* Software developer - Gabriela Tomescu
* QA Engineer - Livia Rusu

#### 1.1.2 Entry criteria defined

*	Complete or partially testable code is available.
*	Requirements are defined and approved.
*	Availability of sufficient and desired test data.
*	Test cases are developed and ready.
*	Test environment has been set-up and all other necessary resources such as tools and devices are available.


#### 1.1.3 Exit criteria defined

*	Deadlines meet or budget depleted.
*	Execution and updating of all test cases.
*	Desired and sufficient coverage of the requirements and functionalities under the test.
*	All the identified defects are corrected and closed
*	No high priority or severity or critical bug has been left out.
*	Maintaining defects with their current status.


#### 1.1.4 Test scope

* __Tests in scope:__ All features of the Organization module that have been defined in the software requirements specification must be tested: functional testing, GUI testing and API testing.
* __Tests not in scope:__ performance testing, compatibility testing.

#### 1.1.5 Risks detected

* Project risks: lack of experience of the QA team, short deadline of Zephyr Squad trial, unavailability of test environment
* Product risks: validation constraints on the fields might be too restrictive to the end-user

#### 1.1.6 Evaluating entry criteria

The entry criterias defined in the Test Planning phase have been achieved and the test process can continue. 

## 1.2 Test Monitoring and Control

Periodic reports were generated to reflect the current status of the testing process, in case of major problems, control measures could be taken. The next status report was generated after 50% of the test cases had been executed on 1 June 2023.

![image](<img width="468" alt="Imagine2" src="https://github.com/Giusol/manual_testing_final_project_template/assets/128817422/488e3cd5-587b-469e-a49d-97e42c4717db">)

## 1.3 Test Analysis

The testing process will be executed based on the above requirements for the Organization module. The following test conditions were found:
*	Enter data only for required fields and check if admin-user is created/updated.
*	Enter data for all available fields and check if admin-user is created/updated.
*	Leave required fields empty and check if admin-user cannot be created/updated.
*	View the admin-user details and check if they are correct.
*	Check all validation constraints for fields.


## 1.4 Test Design

Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases.

**Test cases:**
<img width="498" alt="Screenshot 2023-07-24 163218" src="https://github.com/Giusol/manual_testing_final_project_template/assets/128817422/26b3c83b-7d2c-455c-a8a1-a6a346f87c71">


The test cases with steps can be viewed here: [TestCases.pdf](https://github.com/Giusol/manual_testing_final_project_template/blob/main/AdminModule_test_cases.pdf/TestCases.pdf)

For the Simple Books API, the following checklist was generated: [Simple Books.postman_collection.json](https://github.com/Giusol/manual_testing_final_project_template/blob/main/Api_tests/Simple%20Books.postman_collection.json)


## 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

* Testing environment is up and running: https://opensource-demo.orangehrmlive.com/
* Access to the testing environment is given: Username : Admin | Password : admin123
* Cycle summary was created 
* Test cases were added to the cycle summary
* Postman collection with the API methods was created 
* Authorization token was created for accessing the API

## 1.6 Test Execution

* Test cases are executed on the created test Cycle summary: [Summary_Execution.pdf](https://github.com/Giusol/manual_testing_final_project_template/blob/main/AdminModule_Cycle_Summary_Execution/Summary_Execution.pdf)
* Bugs have been created based on the failed tests. The complete bug reports can be found here: [Bugs.pdf](https://github.com/Giusol/manual_testing_final_project_template/blob/main/AdminModule_Created_bugs/Bugs.pdf)
* API tests are executed based on the checklist. The collection used can be found here: [Simple Books.postman_collection.json]
  (https://github.com/Giusol/manual_testing_final_project_template/blob/main/Api_tests/Simple%20Books.postman_collection.json)
  (https://github.com/Giusol/manual_testing_final_project_template/blob/main/Api_tests/Registru1.csv)
* Full regression testing is needed after the bugs are fixed
<img width="468" alt="Imagine2" src="https://github.com/Giusol/manual_testing_final_project_template/assets/128817422/95653f39-aae8-4522-b392-aa10da4c86b4">

## 1.7 Test Completion

* As the Exit criteria were met and satisfied as mentioned in the appropriate section, this feature is suggested to ‘Go Live’ by the Testing team
* The traceability matrix was generated and can be found here: [Traceability.pdf](https://github.com/Giusol/manual_testing_final_project_template/blob/main/Traceabiliy_Matrix/Traceability.pdf)
* Test execution chart was generated, the final report shows that a number 5 tests have failed of a total of 44 
* A number of 44 test cases were planned for execution and all of them were executed
* A number of 5 total bugs were found, from which the priority is: 1 is high, 2 are medium and 2 are low.

<img width="468" alt="Imagine3" src="https://github.com/Giusol/manual_testing_final_project_template/assets/128817422/df920de6-536f-4f2b-a18b-e5bcbce8d089">

# 2 SQL section

Created a database named 'Candidates' and three tables named 'JobTitleList', ‘CandidatesApplication’ and ‘CandidatesList’ with all the columns needed to save data per specifications. Performed different queries inside the sql file:  [SQL_OrangeHRM.sql](https://github.com/Giusol/manual_testing_final_project_template/blob/main/SQL_OrangeHRM/SQL_OrangeHRM.sql)
