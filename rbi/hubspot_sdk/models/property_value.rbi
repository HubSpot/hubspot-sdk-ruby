# typed: strong

module HubspotSDK
  module Models
    class PropertyValue < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PropertyValue, HubspotSDK::Internal::AnyHash)
        end

      # The sensitivity level of the property, such as "non_sensitive", "sensitive", and
      # "highly_sensitive".
      sig { returns(HubspotSDK::PropertyValue::DataSensitivity::OrSymbol) }
      attr_accessor :data_sensitivity

      # Whether the property value is encrypted.
      sig { returns(T::Boolean) }
      attr_accessor :is_encrypted

      # Indicates if the value exceeds normal size limits.
      sig { returns(T::Boolean) }
      attr_accessor :is_large_value

      # The unique property name.
      sig { returns(String) }
      attr_accessor :name

      # When the value was persisted to database, in epoch milliseconds.
      sig { returns(Integer) }
      attr_accessor :persistence_timestamp

      # A unique ID associated with this request.
      sig { returns(String) }
      attr_accessor :request_id

      # Whether the value was selected by a user.
      sig { returns(T::Boolean) }
      attr_accessor :selected_by_user

      # The timestamp when the value was selected by a user, if applicable.
      sig { returns(Integer) }
      attr_accessor :selected_by_user_timestamp

      # The origin of the property value, such as "IMPORT" or "API".
      sig { returns(HubspotSDK::PropertyValue::Source::OrSymbol) }
      attr_accessor :source

      # The ID of the property source indicating where it was created.
      sig { returns(String) }
      attr_accessor :source_id

      # A human-readable label.
      sig { returns(String) }
      attr_accessor :source_label

      # Metadata providing additional context about the source.
      sig { returns(String) }
      attr_accessor :source_metadata

      sig { returns(String) }
      attr_accessor :source_upstream_deployable

      # The unique identifier associated with the source.
      sig { returns(T::Array[Integer]) }
      attr_accessor :source_vid

      # When the value was set, as a 64-bit integer.
      sig { returns(Integer) }
      attr_accessor :timestamp

      # The unit of measurement or context for the value.
      sig { returns(String) }
      attr_accessor :unit

      # The ID of the user who updated the property.
      sig { returns(Integer) }
      attr_accessor :updated_by_user_id

      # Flag indicating whether to use the timestamp field as the persistence timestamp.
      sig { returns(T::Boolean) }
      attr_accessor :use_timestamp_as_persistence_timestamp

      # The property value.
      sig { returns(String) }
      attr_accessor :value

      # Represents a single custom property of a marketing event, storing its name,
      # value, metadata (like source, timestamp, and sensitivity), and related audit
      # information for tracking changes.
      sig do
        params(
          data_sensitivity:
            HubspotSDK::PropertyValue::DataSensitivity::OrSymbol,
          is_encrypted: T::Boolean,
          is_large_value: T::Boolean,
          name: String,
          persistence_timestamp: Integer,
          request_id: String,
          selected_by_user: T::Boolean,
          selected_by_user_timestamp: Integer,
          source: HubspotSDK::PropertyValue::Source::OrSymbol,
          source_id: String,
          source_label: String,
          source_metadata: String,
          source_upstream_deployable: String,
          source_vid: T::Array[Integer],
          timestamp: Integer,
          unit: String,
          updated_by_user_id: Integer,
          use_timestamp_as_persistence_timestamp: T::Boolean,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The sensitivity level of the property, such as "non_sensitive", "sensitive", and
        # "highly_sensitive".
        data_sensitivity:,
        # Whether the property value is encrypted.
        is_encrypted:,
        # Indicates if the value exceeds normal size limits.
        is_large_value:,
        # The unique property name.
        name:,
        # When the value was persisted to database, in epoch milliseconds.
        persistence_timestamp:,
        # A unique ID associated with this request.
        request_id:,
        # Whether the value was selected by a user.
        selected_by_user:,
        # The timestamp when the value was selected by a user, if applicable.
        selected_by_user_timestamp:,
        # The origin of the property value, such as "IMPORT" or "API".
        source:,
        # The ID of the property source indicating where it was created.
        source_id:,
        # A human-readable label.
        source_label:,
        # Metadata providing additional context about the source.
        source_metadata:,
        source_upstream_deployable:,
        # The unique identifier associated with the source.
        source_vid:,
        # When the value was set, as a 64-bit integer.
        timestamp:,
        # The unit of measurement or context for the value.
        unit:,
        # The ID of the user who updated the property.
        updated_by_user_id:,
        # Flag indicating whether to use the timestamp field as the persistence timestamp.
        use_timestamp_as_persistence_timestamp:,
        # The property value.
        value:
      )
      end

      sig do
        override.returns(
          {
            data_sensitivity:
              HubspotSDK::PropertyValue::DataSensitivity::OrSymbol,
            is_encrypted: T::Boolean,
            is_large_value: T::Boolean,
            name: String,
            persistence_timestamp: Integer,
            request_id: String,
            selected_by_user: T::Boolean,
            selected_by_user_timestamp: Integer,
            source: HubspotSDK::PropertyValue::Source::OrSymbol,
            source_id: String,
            source_label: String,
            source_metadata: String,
            source_upstream_deployable: String,
            source_vid: T::Array[Integer],
            timestamp: Integer,
            unit: String,
            updated_by_user_id: Integer,
            use_timestamp_as_persistence_timestamp: T::Boolean,
            value: String
          }
        )
      end
      def to_hash
      end

      # The sensitivity level of the property, such as "non_sensitive", "sensitive", and
      # "highly_sensitive".
      module DataSensitivity
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PropertyValue::DataSensitivity)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HIGH =
          T.let(:high, HubspotSDK::PropertyValue::DataSensitivity::TaggedSymbol)
        NONE =
          T.let(:none, HubspotSDK::PropertyValue::DataSensitivity::TaggedSymbol)
        STANDARD =
          T.let(
            :standard,
            HubspotSDK::PropertyValue::DataSensitivity::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubspotSDK::PropertyValue::DataSensitivity::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The origin of the property value, such as "IMPORT" or "API".
      module Source
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, HubspotSDK::PropertyValue::Source) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACADEMY =
          T.let(:ACADEMY, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        ACCEPTANCE_TEST =
          T.let(
            :ACCEPTANCE_TEST,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        ACTIVITY_AUTO_ASSOCIATE =
          T.let(
            :ACTIVITY_AUTO_ASSOCIATE,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        ACTIVITY_LOG_REVERT =
          T.let(
            :ACTIVITY_LOG_REVERT,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        ADS = T.let(:ADS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        AI_GROUP =
          T.let(:AI_GROUP, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        ANALYTICS =
          T.let(:ANALYTICS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        API = T.let(:API, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        APPROVALS =
          T.let(:APPROVALS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        ASSISTS =
          T.let(:ASSISTS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        ASSOCIATIONS =
          T.let(:ASSOCIATIONS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        AUTO_ASSOCIATE_BY_DOMAIN =
          T.let(
            :AUTO_ASSOCIATE_BY_DOMAIN,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        AUTOMATION_JOURNEY =
          T.let(
            :AUTOMATION_JOURNEY,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        AUTOMATION_PLATFORM =
          T.let(
            :AUTOMATION_PLATFORM,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        AVATARS_SERVICE =
          T.let(
            :AVATARS_SERVICE,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        BATCH_UPDATE =
          T.let(:BATCH_UPDATE, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        BCC_TO_CRM =
          T.let(:BCC_TO_CRM, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        BEHAVIORAL_EVENTS =
          T.let(
            :BEHAVIORAL_EVENTS,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        BET_ASSIGNMENT =
          T.let(
            :BET_ASSIGNMENT,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        BET_CRM_CONNECTOR =
          T.let(
            :BET_CRM_CONNECTOR,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        BIDEN = T.let(:BIDEN, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        BILLING =
          T.let(:BILLING, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        BOT = T.let(:BOT, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        CALCULATED =
          T.let(:CALCULATED, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        CENTRAL_EXCHANGE_RATES =
          T.let(
            :CENTRAL_EXCHANGE_RATES,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        CHATSPOT =
          T.let(:CHATSPOT, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        CLONE_OBJECTS =
          T.let(:CLONE_OBJECTS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        COMMUNICATOR =
          T.let(:COMMUNICATOR, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        COMPANIES =
          T.let(:COMPANIES, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        COMPANY_FAMILIES =
          T.let(
            :COMPANY_FAMILIES,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        COMPANY_INSIGHTS =
          T.let(
            :COMPANY_INSIGHTS,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        CONTACTS =
          T.let(:CONTACTS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        CONTACTS_WEB =
          T.let(:CONTACTS_WEB, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        CONTENT_MEMBERSHIP =
          T.let(
            :CONTENT_MEMBERSHIP,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        CONVERSATIONAL_ENRICHMENT =
          T.let(
            :CONVERSATIONAL_ENRICHMENT,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        CONVERSATIONS =
          T.let(:CONVERSATIONS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        CRM_PROCESSES_PLATFORM =
          T.let(
            :CRM_PROCESSES_PLATFORM,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        CRM_UI = T.let(:CRM_UI, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        CRM_UI_BULK_ACTION =
          T.let(
            :CRM_UI_BULK_ACTION,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        CUSTOMER_AGENT =
          T.let(
            :CUSTOMER_AGENT,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        DATA_ENRICHMENT =
          T.let(
            :DATA_ENRICHMENT,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        DATA_QUALITY =
          T.let(:DATA_QUALITY, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        DATASET =
          T.let(:DATASET, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        DEALS = T.let(:DEALS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        DEFAULT =
          T.let(:DEFAULT, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        DELETE_OBJECTS =
          T.let(
            :DELETE_OBJECTS,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        EMAIL = T.let(:EMAIL, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        EMAIL_INBOX_IMPORT =
          T.let(
            :EMAIL_INBOX_IMPORT,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        EMAIL_INTEGRATION =
          T.let(
            :EMAIL_INTEGRATION,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        ENGAGEMENTS =
          T.let(:ENGAGEMENTS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        EXTENSION =
          T.let(:EXTENSION, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        FILE_MANAGER =
          T.let(:FILE_MANAGER, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        FLYWHEEL_PRODUCT_DATA_SYNC =
          T.let(
            :FLYWHEEL_PRODUCT_DATA_SYNC,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        FORECASTING =
          T.let(:FORECASTING, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        FORM = T.let(:FORM, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        FORWARD_TO_CRM =
          T.let(
            :FORWARD_TO_CRM,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        GMAIL_INTEGRATION =
          T.let(
            :GMAIL_INTEGRATION,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        GOALS = T.let(:GOALS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        HEISENBERG =
          T.let(:HEISENBERG, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        HELP_DESK =
          T.let(:HELP_DESK, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        HELP_DESK_AI =
          T.let(:HELP_DESK_AI, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        IMPORT = T.let(:IMPORT, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        INTEGRATION =
          T.let(:INTEGRATION, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        INTEGRATIONS_PLATFORM =
          T.let(
            :INTEGRATIONS_PLATFORM,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        INTEGRATIONS_SYNC =
          T.let(
            :INTEGRATIONS_SYNC,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        INTENT = T.let(:INTENT, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        INTERNAL_PROCESSING =
          T.let(
            :INTERNAL_PROCESSING,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        LEADIN = T.let(:LEADIN, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        LEGAL_BASIS_REMEDIATION =
          T.let(
            :LEGAL_BASIS_REMEDIATION,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        MARKET_SOURCING =
          T.let(
            :MARKET_SOURCING,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        MARKETPLACE =
          T.let(:MARKETPLACE, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        MEETINGS =
          T.let(:MEETINGS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        MERGE_COMPANIES =
          T.let(
            :MERGE_COMPANIES,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        MERGE_CONTACTS =
          T.let(
            :MERGE_CONTACTS,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        MERGE_OBJECTS =
          T.let(:MERGE_OBJECTS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        MERGE_REVERT_OBJECTS =
          T.let(
            :MERGE_REVERT_OBJECTS,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        MICROAPPS =
          T.let(:MICROAPPS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        MIGRATION =
          T.let(:MIGRATION, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        MOBILE_ANDROID =
          T.let(
            :MOBILE_ANDROID,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        MOBILE_IOS =
          T.let(:MOBILE_IOS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        PAYMENTS =
          T.let(:PAYMENTS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        PIPELINE_SETTINGS =
          T.let(
            :PIPELINE_SETTINGS,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        PLAYBOOKS =
          T.let(:PLAYBOOKS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        PORTAL_OBJECT_SYNC =
          T.let(
            :PORTAL_OBJECT_SYNC,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        PORTAL_USER_ASSOCIATOR =
          T.let(
            :PORTAL_USER_ASSOCIATOR,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        PRESENTATIONS =
          T.let(:PRESENTATIONS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        PRIMARY_AUTOMATION =
          T.let(
            :PRIMARY_AUTOMATION,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        PROPERTY_DEFAULT_VALUE =
          T.let(
            :PROPERTY_DEFAULT_VALUE,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        PROPERTY_RESTORE =
          T.let(
            :PROPERTY_RESTORE,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        PROPERTY_SETTINGS =
          T.let(
            :PROPERTY_SETTINGS,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        PROSPECTING_AGENT =
          T.let(
            :PROSPECTING_AGENT,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        QUOTAS = T.let(:QUOTAS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        QUOTES = T.let(:QUOTES, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        RECYCLING_BIN =
          T.let(:RECYCLING_BIN, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        RESTORE_OBJECTS =
          T.let(
            :RESTORE_OBJECTS,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        SALES = T.let(:SALES, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        SALES_MESSAGES =
          T.let(
            :SALES_MESSAGES,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        SALESFORCE =
          T.let(:SALESFORCE, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        SEQUENCES =
          T.let(:SEQUENCES, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        SETTINGS =
          T.let(:SETTINGS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        SIDEKICK =
          T.let(:SIDEKICK, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        SIGNALS =
          T.let(:SIGNALS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        SLACK_INTEGRATION =
          T.let(
            :SLACK_INTEGRATION,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        SMART_DATA_CAPTURE =
          T.let(
            :SMART_DATA_CAPTURE,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        SOCIAL = T.let(:SOCIAL, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        SUCCESS =
          T.let(:SUCCESS, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        TALLY = T.let(:TALLY, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        TASK = T.let(:TASK, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        UNKNOWN =
          T.let(:UNKNOWN, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        WAL_INCREMENTAL =
          T.let(
            :WAL_INCREMENTAL,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        WORK_UI =
          T.let(:WORK_UI, HubspotSDK::PropertyValue::Source::TaggedSymbol)
        WORKFLOW_CONTACT_DELETE_ACTION =
          T.let(
            :WORKFLOW_CONTACT_DELETE_ACTION,
            HubspotSDK::PropertyValue::Source::TaggedSymbol
          )
        WORKFLOWS =
          T.let(:WORKFLOWS, HubspotSDK::PropertyValue::Source::TaggedSymbol)

        sig do
          override.returns(
            T::Array[HubspotSDK::PropertyValue::Source::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
