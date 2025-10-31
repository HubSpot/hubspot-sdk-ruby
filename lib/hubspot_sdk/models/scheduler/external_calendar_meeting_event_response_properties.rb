# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalCalendarMeetingEventResponseProperties < HubspotSDK::Internal::Type::BaseModel
        # @!attribute hs_engagement_source
        #
        #   @return [Symbol, HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource]
        required :hs_engagement_source,
                 enum: -> { HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource }

        # @!attribute hs_engagement_source_id
        #
        #   @return [String]
        required :hs_engagement_source_id, String

        # @!attribute hs_meeting_end_time
        #
        #   @return [Time]
        required :hs_meeting_end_time, Time

        # @!attribute hs_meeting_outcome
        #
        #   @return [String]
        required :hs_meeting_outcome, String

        # @!attribute hs_meeting_start_time
        #
        #   @return [Time]
        required :hs_meeting_start_time, Time

        # @!attribute hs_meeting_title
        #
        #   @return [String]
        required :hs_meeting_title, String

        # @!attribute hs_timestamp
        #
        #   @return [Time]
        required :hs_timestamp, Time

        # @!attribute hs_activity_type
        #
        #   @return [String, nil]
        optional :hs_activity_type, String

        # @!attribute hs_attachment_ids
        #
        #   @return [Array<String>, nil]
        optional :hs_attachment_ids, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute hs_attendee_owner_ids
        #
        #   @return [Array<String>, nil]
        optional :hs_attendee_owner_ids, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute hs_include_description_in_reminder
        #
        #   @return [String, nil]
        optional :hs_include_description_in_reminder, String

        # @!attribute hs_internal_meeting_notes
        #
        #   @return [String, nil]
        optional :hs_internal_meeting_notes, String

        # @!attribute hs_meeting_body
        #
        #   @return [String, nil]
        optional :hs_meeting_body, String

        # @!attribute hs_meeting_external_url
        #
        #   @return [String, nil]
        optional :hs_meeting_external_url, String

        # @!attribute hs_meeting_location
        #
        #   @return [String, nil]
        optional :hs_meeting_location, String

        # @!attribute hs_meeting_location_type
        #
        #   @return [Symbol, HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType, nil]
        optional :hs_meeting_location_type,
                 enum: -> { HubspotSDK::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType }

        # @!attribute hs_unique_id
        #
        #   @return [String, nil]
        optional :hs_unique_id, String

        # @!attribute hubspot_owner_id
        #
        #   @return [String, nil]
        optional :hubspot_owner_id, String

        # @!method initialize(hs_engagement_source:, hs_engagement_source_id:, hs_meeting_end_time:, hs_meeting_outcome:, hs_meeting_start_time:, hs_meeting_title:, hs_timestamp:, hs_activity_type: nil, hs_attachment_ids: nil, hs_attendee_owner_ids: nil, hs_include_description_in_reminder: nil, hs_internal_meeting_notes: nil, hs_meeting_body: nil, hs_meeting_external_url: nil, hs_meeting_location: nil, hs_meeting_location_type: nil, hs_unique_id: nil, hubspot_owner_id: nil)
        #   @param hs_engagement_source [Symbol, HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsEngagementSource]
        #   @param hs_engagement_source_id [String]
        #   @param hs_meeting_end_time [Time]
        #   @param hs_meeting_outcome [String]
        #   @param hs_meeting_start_time [Time]
        #   @param hs_meeting_title [String]
        #   @param hs_timestamp [Time]
        #   @param hs_activity_type [String]
        #   @param hs_attachment_ids [Array<String>]
        #   @param hs_attendee_owner_ids [Array<String>]
        #   @param hs_include_description_in_reminder [String]
        #   @param hs_internal_meeting_notes [String]
        #   @param hs_meeting_body [String]
        #   @param hs_meeting_external_url [String]
        #   @param hs_meeting_location [String]
        #   @param hs_meeting_location_type [Symbol, HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties::HsMeetingLocationType]
        #   @param hs_unique_id [String]
        #   @param hubspot_owner_id [String]

        # @see HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties#hs_engagement_source
        module HsEngagementSource
          extend HubspotSDK::Internal::Type::Enum

          UNKNOWN = :UNKNOWN
          IMPORT = :IMPORT
          API = :API
          FORM = :FORM
          ANALYTICS = :ANALYTICS
          MIGRATION = :MIGRATION
          SALESFORCE = :SALESFORCE
          INTEGRATION = :INTEGRATION
          CONTACTS_WEB = :CONTACTS_WEB
          WAL_INCREMENTAL = :WAL_INCREMENTAL
          TASK = :TASK
          EMAIL = :EMAIL
          WORKFLOWS = :WORKFLOWS
          CALCULATED = :CALCULATED
          SOCIAL = :SOCIAL
          BATCH_UPDATE = :BATCH_UPDATE
          SIGNALS = :SIGNALS
          BIDEN = :BIDEN
          DEFAULT = :DEFAULT
          COMPANIES = :COMPANIES
          DEALS = :DEALS
          ASSISTS = :ASSISTS
          PRESENTATIONS = :PRESENTATIONS
          TALLY = :TALLY
          SIDEKICK = :SIDEKICK
          CRM_UI = :CRM_UI
          MERGE_CONTACTS = :MERGE_CONTACTS
          PORTAL_USER_ASSOCIATOR = :PORTAL_USER_ASSOCIATOR
          INTEGRATIONS_PLATFORM = :INTEGRATIONS_PLATFORM
          BCC_TO_CRM = :BCC_TO_CRM
          FORWARD_TO_CRM = :FORWARD_TO_CRM
          ENGAGEMENTS = :ENGAGEMENTS
          SALES = :SALES
          HEISENBERG = :HEISENBERG
          LEADIN = :LEADIN
          GMAIL_INTEGRATION = :GMAIL_INTEGRATION
          ACADEMY = :ACADEMY
          SALES_MESSAGES = :SALES_MESSAGES
          AVATARS_SERVICE = :AVATARS_SERVICE
          MERGE_COMPANIES = :MERGE_COMPANIES
          SEQUENCES = :SEQUENCES
          COMPANY_FAMILIES = :COMPANY_FAMILIES
          MOBILE_IOS = :MOBILE_IOS
          MOBILE_ANDROID = :MOBILE_ANDROID
          CONTACTS = :CONTACTS
          ASSOCIATIONS = :ASSOCIATIONS
          EXTENSION = :EXTENSION
          SUCCESS = :SUCCESS
          BOT = :BOT
          INTEGRATIONS_SYNC = :INTEGRATIONS_SYNC
          AUTOMATION_PLATFORM = :AUTOMATION_PLATFORM
          CONVERSATIONS = :CONVERSATIONS
          EMAIL_INTEGRATION = :EMAIL_INTEGRATION
          CONTENT_MEMBERSHIP = :CONTENT_MEMBERSHIP
          QUOTES = :QUOTES
          BET_ASSIGNMENT = :BET_ASSIGNMENT
          QUOTAS = :QUOTAS
          BET_CRM_CONNECTOR = :BET_CRM_CONNECTOR
          MEETINGS = :MEETINGS
          MERGE_OBJECTS = :MERGE_OBJECTS
          RECYCLING_BIN = :RECYCLING_BIN
          ADS = :ADS
          AI_GROUP = :AI_GROUP
          COMMUNICATOR = :COMMUNICATOR
          SETTINGS = :SETTINGS
          PROPERTY_SETTINGS = :PROPERTY_SETTINGS
          PIPELINE_SETTINGS = :PIPELINE_SETTINGS
          COMPANY_INSIGHTS = :COMPANY_INSIGHTS
          BEHAVIORAL_EVENTS = :BEHAVIORAL_EVENTS
          PAYMENTS = :PAYMENTS
          GOALS = :GOALS
          PORTAL_OBJECT_SYNC = :PORTAL_OBJECT_SYNC
          APPROVALS = :APPROVALS
          FILE_MANAGER = :FILE_MANAGER
          MARKETPLACE = :MARKETPLACE
          INTERNAL_PROCESSING = :INTERNAL_PROCESSING
          FORECASTING = :FORECASTING
          SLACK_INTEGRATION = :SLACK_INTEGRATION
          CRM_UI_BULK_ACTION = :CRM_UI_BULK_ACTION
          WORKFLOW_CONTACT_DELETE_ACTION = :WORKFLOW_CONTACT_DELETE_ACTION
          ACCEPTANCE_TEST = :ACCEPTANCE_TEST
          PLAYBOOKS = :PLAYBOOKS
          CHATSPOT = :CHATSPOT
          FLYWHEEL_PRODUCT_DATA_SYNC = :FLYWHEEL_PRODUCT_DATA_SYNC
          HELP_DESK = :HELP_DESK
          BILLING = :BILLING
          DATA_ENRICHMENT = :DATA_ENRICHMENT
          AUTOMATION_JOURNEY = :AUTOMATION_JOURNEY
          MICROAPPS = :MICROAPPS
          INTENT = :INTENT
          PROSPECTING_AGENT = :PROSPECTING_AGENT
          CENTRAL_EXCHANGE_RATES = :CENTRAL_EXCHANGE_RATES
          HELP_DESK_AI = :HELP_DESK_AI
          CONVERSATIONAL_ENRICHMENT = :CONVERSATIONAL_ENRICHMENT
          CRM_PROCESSES_PLATFORM = :CRM_PROCESSES_PLATFORM
          CLONE_OBJECTS = :CLONE_OBJECTS
          MARKET_SOURCING = :MARKET_SOURCING
          DATASET = :DATASET
          PROPERTY_RESTORE = :PROPERTY_RESTORE
          EMAIL_INBOX_IMPORT = :EMAIL_INBOX_IMPORT
          CUSTOMER_AGENT = :CUSTOMER_AGENT
          LEGAL_BASIS_REMEDIATION = :LEGAL_BASIS_REMEDIATION
          AUTO_ASSOCIATE_BY_DOMAIN = :AUTO_ASSOCIATE_BY_DOMAIN
          ACTIVITY_AUTO_ASSOCIATE = :ACTIVITY_AUTO_ASSOCIATE
          PRIMARY_AUTOMATION = :PRIMARY_AUTOMATION
          DELETE_OBJECTS = :DELETE_OBJECTS
          RESTORE_OBJECTS = :RESTORE_OBJECTS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties#hs_meeting_location_type
        module HsMeetingLocationType
          extend HubspotSDK::Internal::Type::Enum

          PHONE = :PHONE
          ADDRESS = :ADDRESS
          CUSTOM = :CUSTOM

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
