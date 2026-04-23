# typed: strong

module HubSpotSDK
  module Models
    class PropertyValue < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::PropertyValue, HubSpotSDK::Internal::AnyHash)
        end

      # The sensitivity level of the property, such as "non_sensitive", "sensitive", and
      # "highly_sensitive".
      sig { returns(HubSpotSDK::PropertyValue::DataSensitivity::OrSymbol) }
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
      sig { returns(HubSpotSDK::PropertyValue::Source::OrSymbol) }
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
            HubSpotSDK::PropertyValue::DataSensitivity::OrSymbol,
          is_encrypted: T::Boolean,
          is_large_value: T::Boolean,
          name: String,
          persistence_timestamp: Integer,
          request_id: String,
          selected_by_user: T::Boolean,
          selected_by_user_timestamp: Integer,
          source: HubSpotSDK::PropertyValue::Source::OrSymbol,
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
              HubSpotSDK::PropertyValue::DataSensitivity::OrSymbol,
            is_encrypted: T::Boolean,
            is_large_value: T::Boolean,
            name: String,
            persistence_timestamp: Integer,
            request_id: String,
            selected_by_user: T::Boolean,
            selected_by_user_timestamp: Integer,
            source: HubSpotSDK::PropertyValue::Source::OrSymbol,
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
        extend HubSpotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubSpotSDK::PropertyValue::DataSensitivity)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HIGH =
          T.let(:high, HubSpotSDK::PropertyValue::DataSensitivity::TaggedSymbol)
        NONE =
          T.let(:none, HubSpotSDK::PropertyValue::DataSensitivity::TaggedSymbol)
        STANDARD =
          T.let(
            :standard,
            HubSpotSDK::PropertyValue::DataSensitivity::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubSpotSDK::PropertyValue::DataSensitivity::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The origin of the property value, such as "IMPORT" or "API".
      module Source
        extend HubSpotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, HubSpotSDK::PropertyValue::Source) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACADEMY =
          T.let(:ACADEMY, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        ACCEPTANCE_TEST =
          T.let(
            :ACCEPTANCE_TEST,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        ACTIVITY_AUTO_ASSOCIATE =
          T.let(
            :ACTIVITY_AUTO_ASSOCIATE,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        ACTIVITY_LOG_REVERT =
          T.let(
            :ACTIVITY_LOG_REVERT,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        ADS = T.let(:ADS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        AI_GROUP =
          T.let(:AI_GROUP, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        ANALYTICS =
          T.let(:ANALYTICS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        API = T.let(:API, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        APPROVALS =
          T.let(:APPROVALS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        ASSISTS =
          T.let(:ASSISTS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        ASSOCIATIONS =
          T.let(:ASSOCIATIONS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        AUTO_ASSOCIATE_BY_DOMAIN =
          T.let(
            :AUTO_ASSOCIATE_BY_DOMAIN,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        AUTOMATION_JOURNEY =
          T.let(
            :AUTOMATION_JOURNEY,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        AUTOMATION_PLATFORM =
          T.let(
            :AUTOMATION_PLATFORM,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        AVATARS_SERVICE =
          T.let(
            :AVATARS_SERVICE,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        BATCH_UPDATE =
          T.let(:BATCH_UPDATE, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        BCC_TO_CRM =
          T.let(:BCC_TO_CRM, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        BEHAVIORAL_EVENTS =
          T.let(
            :BEHAVIORAL_EVENTS,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        BET_ASSIGNMENT =
          T.let(
            :BET_ASSIGNMENT,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        BET_CRM_CONNECTOR =
          T.let(
            :BET_CRM_CONNECTOR,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        BIDEN = T.let(:BIDEN, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        BILLING =
          T.let(:BILLING, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        BOT = T.let(:BOT, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        CALCULATED =
          T.let(:CALCULATED, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        CENTRAL_EXCHANGE_RATES =
          T.let(
            :CENTRAL_EXCHANGE_RATES,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        CHATSPOT =
          T.let(:CHATSPOT, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        CLONE_OBJECTS =
          T.let(:CLONE_OBJECTS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        COMMUNICATOR =
          T.let(:COMMUNICATOR, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        COMPANIES =
          T.let(:COMPANIES, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        COMPANY_FAMILIES =
          T.let(
            :COMPANY_FAMILIES,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        COMPANY_INSIGHTS =
          T.let(
            :COMPANY_INSIGHTS,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        CONNECTED_ACCOUNT =
          T.let(
            :CONNECTED_ACCOUNT,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        CONTACTS =
          T.let(:CONTACTS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        CONTACTS_WEB =
          T.let(:CONTACTS_WEB, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        CONTENT_MEMBERSHIP =
          T.let(
            :CONTENT_MEMBERSHIP,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        CONVERSATIONAL_ENRICHMENT =
          T.let(
            :CONVERSATIONAL_ENRICHMENT,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        CONVERSATIONS =
          T.let(:CONVERSATIONS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        CRM_PROCESSES_PLATFORM =
          T.let(
            :CRM_PROCESSES_PLATFORM,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        CRM_UI = T.let(:CRM_UI, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        CRM_UI_BULK_ACTION =
          T.let(
            :CRM_UI_BULK_ACTION,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        CUSTOMER_AGENT =
          T.let(
            :CUSTOMER_AGENT,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        DATA_ENRICHMENT =
          T.let(
            :DATA_ENRICHMENT,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        DATA_QUALITY =
          T.let(:DATA_QUALITY, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        DATASET =
          T.let(:DATASET, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        DEALS = T.let(:DEALS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        DEFAULT =
          T.let(:DEFAULT, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        DELETE_OBJECTS =
          T.let(
            :DELETE_OBJECTS,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        EMAIL = T.let(:EMAIL, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        EMAIL_INBOX_IMPORT =
          T.let(
            :EMAIL_INBOX_IMPORT,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        EMAIL_INTEGRATION =
          T.let(
            :EMAIL_INTEGRATION,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        ENGAGEMENTS =
          T.let(:ENGAGEMENTS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        EXTENSION =
          T.let(:EXTENSION, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        FILE_MANAGER =
          T.let(:FILE_MANAGER, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        FLYWHEEL_PRODUCT_DATA_SYNC =
          T.let(
            :FLYWHEEL_PRODUCT_DATA_SYNC,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        FORECASTING =
          T.let(:FORECASTING, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        FORM = T.let(:FORM, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        FORWARD_TO_CRM =
          T.let(
            :FORWARD_TO_CRM,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        GMAIL_INTEGRATION =
          T.let(
            :GMAIL_INTEGRATION,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        GOALS = T.let(:GOALS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        HEISENBERG =
          T.let(:HEISENBERG, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        HELP_DESK =
          T.let(:HELP_DESK, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        HELP_DESK_AI =
          T.let(:HELP_DESK_AI, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        IMPORT = T.let(:IMPORT, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        INTEGRATION =
          T.let(:INTEGRATION, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        INTEGRATIONS_PLATFORM =
          T.let(
            :INTEGRATIONS_PLATFORM,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        INTEGRATIONS_SYNC =
          T.let(
            :INTEGRATIONS_SYNC,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        INTENT = T.let(:INTENT, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        INTERNAL_PROCESSING =
          T.let(
            :INTERNAL_PROCESSING,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        LEADIN = T.let(:LEADIN, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        LEGAL_BASIS_REMEDIATION =
          T.let(
            :LEGAL_BASIS_REMEDIATION,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        MARKET_SOURCING =
          T.let(
            :MARKET_SOURCING,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        MARKETPLACE =
          T.let(:MARKETPLACE, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        MARKETS =
          T.let(:MARKETS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        MEETINGS =
          T.let(:MEETINGS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        MERGE_COMPANIES =
          T.let(
            :MERGE_COMPANIES,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        MERGE_CONTACTS =
          T.let(
            :MERGE_CONTACTS,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        MERGE_OBJECTS =
          T.let(:MERGE_OBJECTS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        MERGE_REVERT_OBJECTS =
          T.let(
            :MERGE_REVERT_OBJECTS,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        MICROAPPS =
          T.let(:MICROAPPS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        MIGRATION =
          T.let(:MIGRATION, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        MOBILE_ANDROID =
          T.let(
            :MOBILE_ANDROID,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        MOBILE_IOS =
          T.let(:MOBILE_IOS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        PAYMENTS =
          T.let(:PAYMENTS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        PIPELINE_SETTINGS =
          T.let(
            :PIPELINE_SETTINGS,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        PLAYBOOKS =
          T.let(:PLAYBOOKS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        PORTAL_OBJECT_SYNC =
          T.let(
            :PORTAL_OBJECT_SYNC,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        PORTAL_USER_ASSOCIATOR =
          T.let(
            :PORTAL_USER_ASSOCIATOR,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        PRESENTATIONS =
          T.let(:PRESENTATIONS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        PRIMARY_AUTOMATION =
          T.let(
            :PRIMARY_AUTOMATION,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        PROPERTY_DEFAULT_VALUE =
          T.let(
            :PROPERTY_DEFAULT_VALUE,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        PROPERTY_RESTORE =
          T.let(
            :PROPERTY_RESTORE,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        PROPERTY_SETTINGS =
          T.let(
            :PROPERTY_SETTINGS,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        PROSPECTING_AGENT =
          T.let(
            :PROSPECTING_AGENT,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        QUOTAS = T.let(:QUOTAS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        QUOTES = T.let(:QUOTES, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        RECYCLING_BIN =
          T.let(:RECYCLING_BIN, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        RESTORE_OBJECTS =
          T.let(
            :RESTORE_OBJECTS,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        REVENUE_PLATFORM =
          T.let(
            :REVENUE_PLATFORM,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        SALES = T.let(:SALES, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        SALES_MESSAGES =
          T.let(
            :SALES_MESSAGES,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        SALESFORCE =
          T.let(:SALESFORCE, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        SEQUENCES =
          T.let(:SEQUENCES, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        SETTINGS =
          T.let(:SETTINGS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        SIDEKICK =
          T.let(:SIDEKICK, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        SIGNALS =
          T.let(:SIGNALS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        SLACK_INTEGRATION =
          T.let(
            :SLACK_INTEGRATION,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        SMART_DATA_CAPTURE =
          T.let(
            :SMART_DATA_CAPTURE,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        SOCIAL = T.let(:SOCIAL, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        SUCCESS =
          T.let(:SUCCESS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        TALLY = T.let(:TALLY, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        TASK = T.let(:TASK, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        UNKNOWN =
          T.let(:UNKNOWN, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        WAL_INCREMENTAL =
          T.let(
            :WAL_INCREMENTAL,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        WORK_UI =
          T.let(:WORK_UI, HubSpotSDK::PropertyValue::Source::TaggedSymbol)
        WORKFLOW_CONTACT_DELETE_ACTION =
          T.let(
            :WORKFLOW_CONTACT_DELETE_ACTION,
            HubSpotSDK::PropertyValue::Source::TaggedSymbol
          )
        WORKFLOWS =
          T.let(:WORKFLOWS, HubSpotSDK::PropertyValue::Source::TaggedSymbol)

        sig do
          override.returns(
            T::Array[HubSpotSDK::PropertyValue::Source::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
