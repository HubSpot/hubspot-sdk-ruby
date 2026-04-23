# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalCalendarMeetingEventResponseProperties < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute hs_engagement_source
        #   The source of the engagement, will always be `MEETINGS`.
        #
        #   @return [Symbol, HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource]
        required :hs_engagement_source,
                 enum: -> { HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource }

        # @!attribute hs_engagement_source_id
        #   The ID associated with the process created the engagement. Should always be
        #   empty when creating meeting events through this API.
        #
        #   @return [String]
        required :hs_engagement_source_id, String

        # @!attribute hs_meeting_end_time
        #   The end time of the meeting in ISO 8601 format.
        #
        #   @return [Time]
        required :hs_meeting_end_time, Time

        # @!attribute hs_meeting_outcome
        #   The outcome of the meeting. Acceptable default values are: SCHEDULED, COMPLETED,
        #   RESCHEDULED, NO_SHOW, CANCELED. This property can be changed to include
        #   additional custom values.
        #
        #   @return [String]
        required :hs_meeting_outcome, String

        # @!attribute hs_meeting_start_time
        #   The start time of the meeting in ISO 8601 format.
        #
        #   @return [Time]
        required :hs_meeting_start_time, Time

        # @!attribute hs_meeting_title
        #   The title of the meeting and calendar event.
        #
        #   @return [String]
        required :hs_meeting_title, String

        # @!attribute hs_timestamp
        #   The time that the meeting should start in ISO 8601 format. This value should be
        #   the same as `hs_meeting_start_time`.
        #
        #   @return [Time]
        required :hs_timestamp, Time

        # @!attribute hs_activity_type
        #   The activity type of the meeting. Acceptable values are based on portal defined
        #   call and meeting types.
        #
        #   @return [String, nil]
        optional :hs_activity_type, String

        # @!attribute hs_attachment_ids
        #
        #   @return [Array<String>, nil]
        optional :hs_attachment_ids, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute hs_attendee_owner_ids
        #
        #   @return [Array<String>, nil]
        optional :hs_attendee_owner_ids, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute hs_include_description_in_reminder
        #   Whether to include the meeting description in the reminder.
        #
        #   @return [String, nil]
        optional :hs_include_description_in_reminder, String

        # @!attribute hs_internal_meeting_notes
        #   Internal notes related to the meeting.
        #
        #   @return [String, nil]
        optional :hs_internal_meeting_notes, String

        # @!attribute hs_meeting_body
        #   The description of the meeting and calendar event.
        #
        #   @return [String, nil]
        optional :hs_meeting_body, String

        # @!attribute hs_meeting_external_url
        #   The calendar event URL for the meeting.
        #
        #   @return [String, nil]
        optional :hs_meeting_external_url, String

        # @!attribute hs_meeting_location
        #   The physical address, virtual location, or phone number where the meeting will
        #   take place.
        #
        #   @return [String, nil]
        optional :hs_meeting_location, String

        # @!attribute hs_meeting_location_type
        #   The type of location for the meeting. Acceptable values are: ADDRESS, CUSTOM,
        #   PHONE.
        #
        #   @return [Symbol, HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType, nil]
        optional :hs_meeting_location_type,
                 enum: -> { HubSpotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType }

        # @!attribute hs_unique_id
        #   The unique ID of the created calendar event.
        #
        #   @return [String, nil]
        optional :hs_unique_id, String

        # @!attribute hubspot_owner_id
        #   The owner ID of the HubSpot user hosting the meeting.
        #
        #   @return [String, nil]
        optional :hubspot_owner_id, String

        # @!method initialize(hs_engagement_source:, hs_engagement_source_id:, hs_meeting_end_time:, hs_meeting_outcome:, hs_meeting_start_time:, hs_meeting_title:, hs_timestamp:, hs_activity_type: nil, hs_attachment_ids: nil, hs_attendee_owner_ids: nil, hs_include_description_in_reminder: nil, hs_internal_meeting_notes: nil, hs_meeting_body: nil, hs_meeting_external_url: nil, hs_meeting_location: nil, hs_meeting_location_type: nil, hs_unique_id: nil, hubspot_owner_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties}
        #   for more details.
        #
        #   @param hs_engagement_source [Symbol, HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource] The source of the engagement, will always be `MEETINGS`.
        #
        #   @param hs_engagement_source_id [String] The ID associated with the process created the engagement. Should always be empt
        #
        #   @param hs_meeting_end_time [Time] The end time of the meeting in ISO 8601 format.
        #
        #   @param hs_meeting_outcome [String] The outcome of the meeting. Acceptable default values are: SCHEDULED, COMPLETED,
        #
        #   @param hs_meeting_start_time [Time] The start time of the meeting in ISO 8601 format.
        #
        #   @param hs_meeting_title [String] The title of the meeting and calendar event.
        #
        #   @param hs_timestamp [Time] The time that the meeting should start in ISO 8601 format. This value should be
        #
        #   @param hs_activity_type [String] The activity type of the meeting. Acceptable values are based on portal defined
        #
        #   @param hs_attachment_ids [Array<String>]
        #
        #   @param hs_attendee_owner_ids [Array<String>]
        #
        #   @param hs_include_description_in_reminder [String] Whether to include the meeting description in the reminder.
        #
        #   @param hs_internal_meeting_notes [String] Internal notes related to the meeting.
        #
        #   @param hs_meeting_body [String] The description of the meeting and calendar event.
        #
        #   @param hs_meeting_external_url [String] The calendar event URL for the meeting.
        #
        #   @param hs_meeting_location [String] The physical address, virtual location, or phone number where the meeting will t
        #
        #   @param hs_meeting_location_type [Symbol, HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType] The type of location for the meeting. Acceptable values are: ADDRESS, CUSTOM, PH
        #
        #   @param hs_unique_id [String] The unique ID of the created calendar event.
        #
        #   @param hubspot_owner_id [String] The owner ID of the HubSpot user hosting the meeting.

        # The source of the engagement, will always be `MEETINGS`.
        #
        # @see HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties#hs_engagement_source
        module HsEngagementSource
          extend HubSpotSDK::Internal::Type::Enum

          ACADEMY = :ACADEMY
          ACCEPTANCE_TEST = :ACCEPTANCE_TEST
          ACTIVITY_AUTO_ASSOCIATE = :ACTIVITY_AUTO_ASSOCIATE
          ACTIVITY_LOG_REVERT = :ACTIVITY_LOG_REVERT
          ADS = :ADS
          AI_GROUP = :AI_GROUP
          ANALYTICS = :ANALYTICS
          API = :API
          APPROVALS = :APPROVALS
          ASSISTS = :ASSISTS
          ASSOCIATIONS = :ASSOCIATIONS
          AUTO_ASSOCIATE_BY_DOMAIN = :AUTO_ASSOCIATE_BY_DOMAIN
          AUTOMATION_JOURNEY = :AUTOMATION_JOURNEY
          AUTOMATION_PLATFORM = :AUTOMATION_PLATFORM
          AVATARS_SERVICE = :AVATARS_SERVICE
          BATCH_UPDATE = :BATCH_UPDATE
          BCC_TO_CRM = :BCC_TO_CRM
          BEHAVIORAL_EVENTS = :BEHAVIORAL_EVENTS
          BET_ASSIGNMENT = :BET_ASSIGNMENT
          BET_CRM_CONNECTOR = :BET_CRM_CONNECTOR
          BIDEN = :BIDEN
          BILLING = :BILLING
          BOT = :BOT
          CALCULATED = :CALCULATED
          CENTRAL_EXCHANGE_RATES = :CENTRAL_EXCHANGE_RATES
          CHATSPOT = :CHATSPOT
          CLONE_OBJECTS = :CLONE_OBJECTS
          COMMUNICATOR = :COMMUNICATOR
          COMPANIES = :COMPANIES
          COMPANY_FAMILIES = :COMPANY_FAMILIES
          COMPANY_INSIGHTS = :COMPANY_INSIGHTS
          CONNECTED_ACCOUNT = :CONNECTED_ACCOUNT
          CONTACTS = :CONTACTS
          CONTACTS_WEB = :CONTACTS_WEB
          CONTENT_MEMBERSHIP = :CONTENT_MEMBERSHIP
          CONVERSATIONAL_ENRICHMENT = :CONVERSATIONAL_ENRICHMENT
          CONVERSATIONS = :CONVERSATIONS
          CRM_PROCESSES_PLATFORM = :CRM_PROCESSES_PLATFORM
          CRM_UI = :CRM_UI
          CRM_UI_BULK_ACTION = :CRM_UI_BULK_ACTION
          CUSTOMER_AGENT = :CUSTOMER_AGENT
          DATA_ENRICHMENT = :DATA_ENRICHMENT
          DATA_QUALITY = :DATA_QUALITY
          DATASET = :DATASET
          DEALS = :DEALS
          DEFAULT = :DEFAULT
          DELETE_OBJECTS = :DELETE_OBJECTS
          EMAIL = :EMAIL
          EMAIL_INBOX_IMPORT = :EMAIL_INBOX_IMPORT
          EMAIL_INTEGRATION = :EMAIL_INTEGRATION
          ENGAGEMENTS = :ENGAGEMENTS
          EXTENSION = :EXTENSION
          FILE_MANAGER = :FILE_MANAGER
          FLYWHEEL_PRODUCT_DATA_SYNC = :FLYWHEEL_PRODUCT_DATA_SYNC
          FORECASTING = :FORECASTING
          FORM = :FORM
          FORWARD_TO_CRM = :FORWARD_TO_CRM
          GMAIL_INTEGRATION = :GMAIL_INTEGRATION
          GOALS = :GOALS
          HEISENBERG = :HEISENBERG
          HELP_DESK = :HELP_DESK
          HELP_DESK_AI = :HELP_DESK_AI
          IMPORT = :IMPORT
          INTEGRATION = :INTEGRATION
          INTEGRATIONS_PLATFORM = :INTEGRATIONS_PLATFORM
          INTEGRATIONS_SYNC = :INTEGRATIONS_SYNC
          INTENT = :INTENT
          INTERNAL_PROCESSING = :INTERNAL_PROCESSING
          LEADIN = :LEADIN
          LEGAL_BASIS_REMEDIATION = :LEGAL_BASIS_REMEDIATION
          MARKET_SOURCING = :MARKET_SOURCING
          MARKETPLACE = :MARKETPLACE
          MARKETS = :MARKETS
          MEETINGS = :MEETINGS
          MERGE_COMPANIES = :MERGE_COMPANIES
          MERGE_CONTACTS = :MERGE_CONTACTS
          MERGE_OBJECTS = :MERGE_OBJECTS
          MERGE_REVERT_OBJECTS = :MERGE_REVERT_OBJECTS
          MICROAPPS = :MICROAPPS
          MIGRATION = :MIGRATION
          MOBILE_ANDROID = :MOBILE_ANDROID
          MOBILE_IOS = :MOBILE_IOS
          PAYMENTS = :PAYMENTS
          PIPELINE_SETTINGS = :PIPELINE_SETTINGS
          PLAYBOOKS = :PLAYBOOKS
          PORTAL_OBJECT_SYNC = :PORTAL_OBJECT_SYNC
          PORTAL_USER_ASSOCIATOR = :PORTAL_USER_ASSOCIATOR
          PRESENTATIONS = :PRESENTATIONS
          PRIMARY_AUTOMATION = :PRIMARY_AUTOMATION
          PROPERTY_DEFAULT_VALUE = :PROPERTY_DEFAULT_VALUE
          PROPERTY_RESTORE = :PROPERTY_RESTORE
          PROPERTY_SETTINGS = :PROPERTY_SETTINGS
          PROSPECTING_AGENT = :PROSPECTING_AGENT
          QUOTAS = :QUOTAS
          QUOTES = :QUOTES
          RECYCLING_BIN = :RECYCLING_BIN
          RESTORE_OBJECTS = :RESTORE_OBJECTS
          REVENUE_PLATFORM = :REVENUE_PLATFORM
          SALES = :SALES
          SALES_MESSAGES = :SALES_MESSAGES
          SALESFORCE = :SALESFORCE
          SEQUENCES = :SEQUENCES
          SETTINGS = :SETTINGS
          SIDEKICK = :SIDEKICK
          SIGNALS = :SIGNALS
          SLACK_INTEGRATION = :SLACK_INTEGRATION
          SMART_DATA_CAPTURE = :SMART_DATA_CAPTURE
          SOCIAL = :SOCIAL
          SUCCESS = :SUCCESS
          TALLY = :TALLY
          TASK = :TASK
          UNKNOWN = :UNKNOWN
          WAL_INCREMENTAL = :WAL_INCREMENTAL
          WORK_UI = :WORK_UI
          WORKFLOW_CONTACT_DELETE_ACTION = :WORKFLOW_CONTACT_DELETE_ACTION
          WORKFLOWS = :WORKFLOWS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of location for the meeting. Acceptable values are: ADDRESS, CUSTOM,
        # PHONE.
        #
        # @see HubSpotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties#hs_meeting_location_type
        module HsMeetingLocationType
          extend HubSpotSDK::Internal::Type::Enum

          ADDRESS = :ADDRESS
          CUSTOM = :CUSTOM
          PHONE = :PHONE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
