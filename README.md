# README

## Overtime App

key requirements : company needs documentation that salaried employees did or did not get overtime each week
 
## Models
- X Post -> date:date rationale: text
- X User -> Devise
- X AdminUser -> STI
- X Audit Log

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input -> Integrate with Heroku Scheduler
- X Administrate admin dashboard
- X Block non-admin and guest users
- X Email summary to managers for approval
- X Needs to be documented if employee did not log overtime
- X Create audit log for each text message
- X Need to update end date when confirmed
- X Need to update the audit log status when an overtime request has been rejected
- X Update buttons on employee home page
- X Update buttons sort order on employee homepage
- X Remove unnecessary nav bar buttons for managers 
- X Fix admin dashboard bug
- X Implement honeybadger error reporting
- X Implement new relic for keeping the site alive

## UI:
- X Bootstrap -> formatting
- X Icons from Font Awesome
- X Update the styles for forms


## TODOS:

- Integrate validation for phone attribute in User:
- No spaces or dashes
- Exactly 10 characters have to be a number


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* 2.5.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Refactor user
- Refactor user association integration test in post_spec
- Refator post/_form for admin user list status


Goal of audit log:
Keep track of if a employee had overtime or not

Dependencies: 
- User
Attrs: 
-Status:integer (enum) - > pending, complete
- date:date -> 

Monday
|
|
Sunday

