Feature: As a data consumer, I want the user information are stored in mySql DB correctly in users table.
  Background:
    Given Establish the database connection
  @us01 @db
  Scenario: verify users has unique IDs
    When Execute query to get all IDs from users_AS
    Then verify all users has unique ID_AS


  Scenario: verify users table columns
    When Execute query to get all columns_AS
    Then verify the below columns are listed in result_AS

      | id            |
      | full_name     |
      | email         |
      | password      |
      | user_group_id |
      | image         |
      | extra_data    |
      | status        |
      | is_admin      |
      | start_date    |
      | end_date      |
      | address       |
