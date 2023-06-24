# README

Notes
* I spent a good bit of time learning test driven development when creating my models
* If I had been able to dedicate more than 4 hours to the process, I would have been able to continue with my TDD with the controller.
* I learned a lot and had fun! Thanks for giving me the opportunity.


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
