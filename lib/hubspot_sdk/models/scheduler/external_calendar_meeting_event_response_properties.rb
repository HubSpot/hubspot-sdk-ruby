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

          ACADEMY = :ACADEMY
          ACCEPTANCE_TEST = :ACCEPTANCE_TEST
          ACTIVITY_AUTO_ASSOCIATE = :ACTIVITY_AUTO_ASSOCIATE
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
          MEETINGS = :MEETINGS
          MERGE_COMPANIES = :MERGE_COMPANIES
          MERGE_CONTACTS = :MERGE_CONTACTS
          MERGE_OBJECTS = :MERGE_OBJECTS
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
          PROPERTY_RESTORE = :PROPERTY_RESTORE
          PROPERTY_SETTINGS = :PROPERTY_SETTINGS
          PROSPECTING_AGENT = :PROSPECTING_AGENT
          QUOTAS = :QUOTAS
          QUOTES = :QUOTES
          RECYCLING_BIN = :RECYCLING_BIN
          RESTORE_OBJECTS = :RESTORE_OBJECTS
          SALES = :SALES
          SALES_MESSAGES = :SALES_MESSAGES
          SALESFORCE = :SALESFORCE
          SEQUENCES = :SEQUENCES
          SETTINGS = :SETTINGS
          SIDEKICK = :SIDEKICK
          SIGNALS = :SIGNALS
          SLACK_INTEGRATION = :SLACK_INTEGRATION
          SOCIAL = :SOCIAL
          SUCCESS = :SUCCESS
          TALLY = :TALLY
          TASK = :TASK
          UNKNOWN = :UNKNOWN
          WAL_INCREMENTAL = :WAL_INCREMENTAL
          WORKFLOW_CONTACT_DELETE_ACTION = :WORKFLOW_CONTACT_DELETE_ACTION
          WORKFLOWS = :WORKFLOWS

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Scheduler::ExternalCalendarMeetingEventResponseProperties#hs_meeting_location_type
        module HsMeetingLocationType
          extend HubspotSDK::Internal::Type::Enum

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
