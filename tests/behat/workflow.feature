@api
Feature: Workflow
  In order to ensure its readiness and compliance
  As a site owner
  I want my content to go through workflow prior to publication.

  @spec
  Scenario: Workflow
    Then exactly the following workflows should exist
      | Label     | Machine name | Type               |
      | Editorial | editorial    | Content moderation |

  @spec
  Scenario: Workflow states
    Then exactly the following workflow states should exist
      | Workflow  | Label     | Machine name |
      | Editorial | Draft     | draft        |
      | Editorial | In review | review       |
      | Editorial | Published | published    |
      | Editorial | Archived  | archived     |

  @spec
  Scenario: Workflow transitions
    Then exactly the following workflow transitions should exist
      | Workflow  | Label            | Machine name       | From state | To state  |
      | Editorial | Create New Draft | create_new_draft   | Draft      | Draft     |
      | Editorial | Create New Draft | create_new_draft   | In review  | Draft     |
      | Editorial | Create New Draft | create_new_draft   | Published  | Draft     |
      | Editorial | Review           | review             | Draft      | In review |
      | Editorial | Review           | review             | In review  | In review |
      | Editorial | Publish          | publish            | Draft      | Published |
      | Editorial | Publish          | publish            | In review  | Published |
      | Editorial | Publish          | publish            | Published  | Published |
      | Editorial | Archive          | archive            | Published  | Archived  |
      | Editorial | Restore to Draft | archived_draft     | Archived   | Draft     |
      | Editorial | Restore          | archived_published | Archived   | Published |
