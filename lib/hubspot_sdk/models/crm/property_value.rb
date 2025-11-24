# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PropertyValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute data_sensitivity
        #   The sensitivity level of the property, such as "non_sensitive", "sensitive", and
        #   "highly_sensitive".
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PropertyValue::DataSensitivity]
        required :data_sensitivity,
                 enum: -> { HubspotSDK::Crm::PropertyValue::DataSensitivity },
                 api_name: :dataSensitivity

        # @!attribute is_encrypted
        #   Whether the property value is encrypted.
        #
        #   @return [Boolean]
        required :is_encrypted, HubspotSDK::Internal::Type::Boolean, api_name: :isEncrypted

        # @!attribute is_large_value
        #
        #   @return [Boolean]
        required :is_large_value, HubspotSDK::Internal::Type::Boolean, api_name: :isLargeValue

        # @!attribute name
        #   The unique property name.
        #
        #   @return [String]
        required :name, String

        # @!attribute persistence_timestamp
        #
        #   @return [Integer]
        required :persistence_timestamp, Integer, api_name: :persistenceTimestamp

        # @!attribute request_id
        #   A unique ID associated with this request.
        #
        #   @return [String]
        required :request_id, String, api_name: :requestId

        # @!attribute selected_by_user
        #   Whether the value was selected by a user.
        #
        #   @return [Boolean]
        required :selected_by_user, HubspotSDK::Internal::Type::Boolean, api_name: :selectedByUser

        # @!attribute selected_by_user_timestamp
        #   The timestamp when the value was selected by a user, if applicable.
        #
        #   @return [Integer]
        required :selected_by_user_timestamp, Integer, api_name: :selectedByUserTimestamp

        # @!attribute source
        #   The origin of the property value, such as "IMPORT" or "API".
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PropertyValue::Source]
        required :source, enum: -> { HubspotSDK::Crm::PropertyValue::Source }

        # @!attribute source_id
        #   The ID of the property source indicating where it was created.
        #
        #   @return [String]
        required :source_id, String, api_name: :sourceId

        # @!attribute source_label
        #   A human-readable label.
        #
        #   @return [String]
        required :source_label, String, api_name: :sourceLabel

        # @!attribute source_metadata
        #   Metadata providing additional context about the source.
        #
        #   @return [String]
        required :source_metadata, String, api_name: :sourceMetadata

        # @!attribute source_vid
        #   The unique identifier associated with the source.
        #
        #   @return [Array<Integer>]
        required :source_vid, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :sourceVid

        # @!attribute timestamp
        #   When the value was set, as a 64-bit integer.
        #
        #   @return [Integer]
        required :timestamp, Integer

        # @!attribute unit
        #   The unit of measurement or context for the value.
        #
        #   @return [String]
        required :unit, String

        # @!attribute updated_by_user_id
        #   The ID of the user who updated the property.
        #
        #   @return [Integer]
        required :updated_by_user_id, Integer, api_name: :updatedByUserId

        # @!attribute use_timestamp_as_persistence_timestamp
        #
        #   @return [Boolean]
        required :use_timestamp_as_persistence_timestamp,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :useTimestampAsPersistenceTimestamp

        # @!attribute value
        #   The property value.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(data_sensitivity:, is_encrypted:, is_large_value:, name:, persistence_timestamp:, request_id:, selected_by_user:, selected_by_user_timestamp:, source:, source_id:, source_label:, source_metadata:, source_vid:, timestamp:, unit:, updated_by_user_id:, use_timestamp_as_persistence_timestamp:, value:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PropertyValue} for more details.
        #
        #   Represents a single custom property of a marketing event, storing its name,
        #   value, metadata (like source, timestamp, and sensitivity), and related audit
        #   information for tracking changes.
        #
        #   @param data_sensitivity [Symbol, HubspotSDK::Models::Crm::PropertyValue::DataSensitivity] The sensitivity level of the property, such as "non_sensitive", "sensitive", and
        #
        #   @param is_encrypted [Boolean] Whether the property value is encrypted.
        #
        #   @param is_large_value [Boolean]
        #
        #   @param name [String] The unique property name.
        #
        #   @param persistence_timestamp [Integer]
        #
        #   @param request_id [String] A unique ID associated with this request.
        #
        #   @param selected_by_user [Boolean] Whether the value was selected by a user.
        #
        #   @param selected_by_user_timestamp [Integer] The timestamp when the value was selected by a user, if applicable.
        #
        #   @param source [Symbol, HubspotSDK::Models::Crm::PropertyValue::Source] The origin of the property value, such as "IMPORT" or "API".
        #
        #   @param source_id [String] The ID of the property source indicating where it was created.
        #
        #   @param source_label [String] A human-readable label.
        #
        #   @param source_metadata [String] Metadata providing additional context about the source.
        #
        #   @param source_vid [Array<Integer>] The unique identifier associated with the source.
        #
        #   @param timestamp [Integer] When the value was set, as a 64-bit integer.
        #
        #   @param unit [String] The unit of measurement or context for the value.
        #
        #   @param updated_by_user_id [Integer] The ID of the user who updated the property.
        #
        #   @param use_timestamp_as_persistence_timestamp [Boolean]
        #
        #   @param value [String] The property value.

        # The sensitivity level of the property, such as "non_sensitive", "sensitive", and
        # "highly_sensitive".
        #
        # @see HubspotSDK::Models::Crm::PropertyValue#data_sensitivity
        module DataSensitivity
          extend HubspotSDK::Internal::Type::Enum

          HIGH = :high
          NONE = :none
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The origin of the property value, such as "IMPORT" or "API".
        #
        # @see HubspotSDK::Models::Crm::PropertyValue#source
        module Source
          extend HubspotSDK::Internal::Type::Enum

          ACADEMY = :ACADEMY
          ACCEPTANCE_TEST = :ACCEPTANCE_TEST
          ADS = :ADS
          AI_GROUP = :AI_GROUP
          ANALYTICS = :ANALYTICS
          API = :API
          APPROVALS = :APPROVALS
          ASSISTS = :ASSISTS
          ASSOCIATIONS = :ASSOCIATIONS
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
          CHATSPOT = :CHATSPOT
          COMMUNICATOR = :COMMUNICATOR
          COMPANIES = :COMPANIES
          COMPANY_FAMILIES = :COMPANY_FAMILIES
          COMPANY_INSIGHTS = :COMPANY_INSIGHTS
          CONTACTS = :CONTACTS
          CONTACTS_WEB = :CONTACTS_WEB
          CONTENT_MEMBERSHIP = :CONTENT_MEMBERSHIP
          CONVERSATIONS = :CONVERSATIONS
          CRM_UI = :CRM_UI
          CRM_UI_BULK_ACTION = :CRM_UI_BULK_ACTION
          DATA_ENRICHMENT = :DATA_ENRICHMENT
          DEALS = :DEALS
          DEFAULT = :DEFAULT
          EMAIL = :EMAIL
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
          IMPORT = :IMPORT
          INTEGRATION = :INTEGRATION
          INTEGRATIONS_PLATFORM = :INTEGRATIONS_PLATFORM
          INTEGRATIONS_SYNC = :INTEGRATIONS_SYNC
          INTENT = :INTENT
          INTERNAL_PROCESSING = :INTERNAL_PROCESSING
          LEADIN = :LEADIN
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
          PROPERTY_SETTINGS = :PROPERTY_SETTINGS
          PROSPECTING_AGENT = :PROSPECTING_AGENT
          QUOTAS = :QUOTAS
          QUOTES = :QUOTES
          RECYCLING_BIN = :RECYCLING_BIN
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
      end
    end
  end
end
