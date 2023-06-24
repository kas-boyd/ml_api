# README
This project was created with Ruby 3.0.2 and Rails 7.0.5

To run the project locally
1. Git clone or fork
2. Bundle install
3. Run the rails server
4. Run the seed file
5. run rails test to validate DB assertions are passing (API tests could use improvement - see notes)
6. in postman, or something related, Use localhost:3000/api/vi/users with the Request Params within the criteria


Notes
* Most of my project time was dedicated to better learning test driven development, while creating the db schema, models, associations, and validations.
* Improvements I would make with more time would be:
    * Continued work on the controller to refine the methods and logic
    * Additional API endpoints to create exams and windows
    * API logging
    * I would restructure the database to have a UserExam table, rather than the current relationship between Users, Exams, and Exam Windows.
    * Add more data to the seed file
    * Add more conrtoller tests


Challenge Criteria

Create a Ruby on Rails API endpoint that accepts the following User information and abides by the following Acceptance Criteria:

Request parameters:

{
first_name: String,
last_name: String,
phone_number: String,
college_id: Integer,
exam_id: Integer,
start_time: DateTime
}

Acceptance Criteria:
A client can send the above request and expect the following behavior

A successful (200 OK) response if:
* the request data is valid and sanitized
* a college exists in the database
* an exam exists and belongs to the college
* a user is successfully found or created, and assigned to the exam
* the start_time of the request falls within an Exam's time window

A bad request (400) response with appropriate error message if:
* the request data is invalid or not clean
* a college with the given college_id is not found
* an exam with the given exam_id is not found or does not belong to the college
* a user fails to be found or created, or failed to get associated with the exam
* a requested start_time does not fall with in an exam's time window
