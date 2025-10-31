# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PropertyValue < HubspotSDK::Internal::Type::BaseModel
        # @!attribute name
        #   Name of custom property
        #
        #   @return [String]
        required :name, String

        # @!attribute source_upstream_deployable
        #
        #   @return [String]
        required :source_upstream_deployable, String, api_name: :sourceUpstreamDeployable

        # @!attribute value
        #   Custom property value
        #
        #   @return [String]
        required :value, String

        # @!attribute data_sensitivity
        #   The sensitivity level of the property, such as "non_sensitive", "sensitive", and
        #   "highly_sensitive".
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::PropertyValue::DataSensitivity, nil]
        optional :data_sensitivity,
                 enum: -> { HubspotSDK::Marketing::PropertyValue::DataSensitivity },
                 api_name: :dataSensitivity

        # @!attribute is_encrypted
        #   Whether the property value is encrypted.
        #
        #   @return [Boolean, nil]
        optional :is_encrypted, HubspotSDK::Internal::Type::Boolean, api_name: :isEncrypted

        # @!attribute is_large_value
        #
        #   @return [Boolean, nil]
        optional :is_large_value, HubspotSDK::Internal::Type::Boolean, api_name: :isLargeValue

        # @!attribute persistence_timestamp
        #
        #   @return [Integer, nil]
        optional :persistence_timestamp, Integer, api_name: :persistenceTimestamp

        # @!attribute request_id
        #   A unique ID associated with this request.
        #
        #   @return [String, nil]
        optional :request_id, String, api_name: :requestId

        # @!attribute selected_by_user
        #   Whether the value was selected by a user.
        #
        #   @return [Boolean, nil]
        optional :selected_by_user, HubspotSDK::Internal::Type::Boolean, api_name: :selectedByUser

        # @!attribute selected_by_user_timestamp
        #   The timestamp when the value was selected by a user, if applicable.
        #
        #   @return [Integer, nil]
        optional :selected_by_user_timestamp, Integer, api_name: :selectedByUserTimestamp

        # @!attribute source
        #   The origin of the property value, such as "IMPORT" or "API".
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::PropertyValue::Source, nil]
        optional :source, enum: -> { HubspotSDK::Marketing::PropertyValue::Source }

        # @!attribute source_id
        #   The ID of the property source indicating where it was created.
        #
        #   @return [String, nil]
        optional :source_id, String, api_name: :sourceId

        # @!attribute source_label
        #   A human-readable label.
        #
        #   @return [String, nil]
        optional :source_label, String, api_name: :sourceLabel

        # @!attribute source_metadata
        #   Source metadata encoded as a base64 string. For example: `ZXhhbXBsZSBzdHJpbmc=`
        #
        #   @return [String, nil]
        optional :source_metadata, String, api_name: :sourceMetadata

        # @!attribute source_vid
        #   The unique identifier associated with the source.
        #
        #   @return [Array<Integer>, nil]
        optional :source_vid, HubspotSDK::Internal::Type::ArrayOf[Integer], api_name: :sourceVid

        # @!attribute timestamp
        #   When the value was set, as a 64-bit integer.
        #
        #   @return [Integer, nil]
        optional :timestamp, Integer

        # @!attribute unit
        #   The unit of measurement or context for the value.
        #
        #   @return [String, nil]
        optional :unit, String

        # @!attribute updated_by_user_id
        #   The ID of the user who updated the property.
        #
        #   @return [Integer, nil]
        optional :updated_by_user_id, Integer, api_name: :updatedByUserId

        # @!attribute use_timestamp_as_persistence_timestamp
        #
        #   @return [Boolean, nil]
        optional :use_timestamp_as_persistence_timestamp,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :useTimestampAsPersistenceTimestamp

        # @!method initialize(name:, source_upstream_deployable:, value:, data_sensitivity: nil, is_encrypted: nil, is_large_value: nil, persistence_timestamp: nil, request_id: nil, selected_by_user: nil, selected_by_user_timestamp: nil, source: nil, source_id: nil, source_label: nil, source_metadata: nil, source_vid: nil, timestamp: nil, unit: nil, updated_by_user_id: nil, use_timestamp_as_persistence_timestamp: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::PropertyValue} for more details.
        #
        #   Represents a single custom property of a marketing event, storing its name,
        #   value, metadata (like source, timestamp, and sensitivity), and related audit
        #   information for tracking changes.
        #
        #   @param name [String] Name of custom property
        #
        #   @param source_upstream_deployable [String]
        #
        #   @param value [String] Custom property value
        #
        #   @param data_sensitivity [Symbol, HubspotSDK::Models::Marketing::PropertyValue::DataSensitivity] The sensitivity level of the property, such as "non_sensitive", "sensitive", and
        #
        #   @param is_encrypted [Boolean] Whether the property value is encrypted.
        #
        #   @param is_large_value [Boolean]
        #
        #   @param persistence_timestamp [Integer]
        #
        #   @param request_id [String] A unique ID associated with this request.
        #
        #   @param selected_by_user [Boolean] Whether the value was selected by a user.
        #
        #   @param selected_by_user_timestamp [Integer] The timestamp when the value was selected by a user, if applicable.
        #
        #   @param source [Symbol, HubspotSDK::Models::Marketing::PropertyValue::Source] The origin of the property value, such as "IMPORT" or "API".
        #
        #   @param source_id [String] The ID of the property source indicating where it was created.
        #
        #   @param source_label [String] A human-readable label.
        #
        #   @param source_metadata [String] Source metadata encoded as a base64 string. For example: `ZXhhbXBsZSBzdHJpbmc=`
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

        # The sensitivity level of the property, such as "non_sensitive", "sensitive", and
        # "highly_sensitive".
        #
        # @see HubspotSDK::Models::Marketing::PropertyValue#data_sensitivity
        module DataSensitivity
          extend HubspotSDK::Internal::Type::Enum

          NONE = :none
          STANDARD = :standard
          HIGH = :high

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The origin of the property value, such as "IMPORT" or "API".
        #
        # @see HubspotSDK::Models::Marketing::PropertyValue#source
        module Source
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

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
