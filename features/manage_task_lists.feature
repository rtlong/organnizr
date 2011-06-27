# Generated by cucumber_scaffold - http://github.com/andyw8/cucumber_scaffold

Feature: Manage task lists
  In order to [goal]
  [stakeholder]
  wants [behaviour]

    Scenario: List all task lists
      Given the following task lists:
        | name | description | default priority | color |
        | name 1 | description 1 | 11 | 11 |
        | name 2 | description 2 | 12 | 12 |
        | name 3 | description 3 | 13 | 13 |
      When I go to the task lists page
      Then I should see the following task lists:
        | Name | Description | Default priority | Color |
        | name 1 | description 1 | 11 | 11 |
        | name 2 | description 2 | 12 | 12 |
        | name 3 | description 3 | 13 | 13 |
      And the heading should be "Listing task_lists"


    Scenario: View a task list
      Given the following task lists:
        | name | description | default priority | color |
        | name 1 | description 1 | 11 | 11 |
        | name 2 | description 2 | 12 | 12 |
        | name 3 | description 3 | 13 | 13 |
      When I go to the task lists page
      And I click "Show" in the 2nd row
      Then I should see the following task list:
        | Name: | name 2 |
        | Description: | description 2 |
        | Default priority: | 12 |
        | Color: | 12 |

      When I follow "Back"

      Then I should be on the task lists page

    Scenario: Edit a task list
      Given the following task list:
        | name | name 10 |
        | description | description 10 |
        | default_priority | 20 |
        | color | 20 |
      When I go to the page for that task list
      And I follow "Edit"
      Then I should see the following form field values:
        | Name | name 10 |
        | Description | description 10 |
        | Default priority | 20 |
        | Color | 20 |
      Then the heading should be "Editing task_list"

      When I follow "Show"
      Then I should be on the page for that task list

    Scenario: Delete a task list via the index page
      Given the following task lists:
        | name | description | default priority | color |
        | name 1 | description 1 | 11 | 11 |
        | name 2 | description 2 | 12 | 12 |
        | name 3 | description 3 | 13 | 13 |
      When I go to the task lists page
      And I click "Destroy" in the 2nd row
      Then I should see the following task lists:
        | Name | Description | Default priority | Color |
        | name 1 | description 1 | 11 | 11 |
        | name 3 | description 3 | 13 | 13 |
      And I should be on the task lists page


    Scenario: New task list page
      Given I am on the task lists page
      When I follow "New Task list"
      Then I should be on the new task list page

      When I follow "Back"
      Then I should be on the task lists page

    Scenario: Create a new task list
      Pending
      # Given I am on the new task list page
      # When I fill in the form with:
      #   | Name | name 10 |
        # | Description | description 10 |
        # | Default priority | 20 |
        # | Color | 20 |
      # And I press "Create"
      # Then I should see "Task list was successfully created."
      # And I should see the following task list:
      #   | Name: | name 10 |
        # | Description: | description 10 |
        # | Default priority: | 20 |
        # | Color: | 20 |

    Scenario: Attempt to create a new task list with invalid input
      Pending
      # You should use this scenario as the basis for scenarios involving ActiveRecord validations, or delete it if it's not required
      # Given I am on the new task list page
      # When I fill in the form with:
      #   | Name | name 10 |
        # | Description | description 10 |
        # | Default priority | 20 |
        # | Color | 20 |
      # And I press "Create"
      # Then I should see "1 error prohibited this task_list from being saved:"
      #
      # [You should add checks for specific errors here. It may be appropriate to add extra scenarios.]
      #
      # And I should see the following form field values:
      #   | Name | name 10 |
        # | Description | description 10 |
        # | Default priority | 20 |
        # | Color | 20 |

    Scenario: Attempt to update a task list with invalid input
      Pending
      # You should use this scenario as the basis for scenarios involving ActiveRecord validations, or delete it if it's not required
      # Given a task list exists
      # When I go to the edit page for that task list
      # And I fill in the form with:
      #   | Name | name 10 |
        # | Description | description 10 |
        # | Default priority | 20 |
        # | Color | 20 |
      # And I press "Update"
      # Then I should see "1 error prohibited this task_list from being saved:"
      #
      # [You should add checks for specific errors here. It may be appropriate to add extra scenarios.]
      #
      # And I should see the following form field values:
      #   | Name | name 10 |
        # | Description | description 10 |
        # | Default priority | 20 |
        # | Color | 20 |

    Scenario: Update a task list
      Given the following task list:
        | name | name 10 |
        | description | description 10 |
        | default_priority | 20 |
        | color | 20 |
      When I go to the edit page for that task list
      And I fill in the form with:
        | Name | name 10 updated |
        | Description | description 10 updated |
        | Default priority | -20 |
        | Color | -20 |
      And I press "Update"
      Then I should be on the page for that task list
      And I should see "Task list was successfully updated."
      And I should see the following task list:
        | Name: | name 10 updated |
        | Description: | description 10 updated |
        | Default priority: | -20 |
        | Color: | -20 |

    Scenario: Navigate from task lists page to the edit task list page
      Given the following task lists:
        | name | description | default priority | color |
        | name 1 | description 1 | 11 | 11 |
        | name 2 | description 2 | 12 | 12 |
        | name 3 | description 3 | 13 | 13 |
      When I go to the task lists page
      And I click "Edit" in the 2nd row
      Then I should be on the edit page for the 2nd task list

    Scenario: Navigate from edit task list page to the task lists page
      Given a task list exists
      When I go to the edit page for that task list
      And I follow "Back"
      Then I should be on the task lists page