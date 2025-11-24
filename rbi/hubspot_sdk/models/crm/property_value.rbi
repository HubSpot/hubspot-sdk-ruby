# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PropertyValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Crm::PropertyValue, HubspotSDK::Internal::AnyHash)
          end

        # The sensitivity level of the property, such as "non_sensitive", "sensitive", and
        # "highly_sensitive".
        sig do
          returns(HubspotSDK::Crm::PropertyValue::DataSensitivity::OrSymbol)
        end
        attr_accessor :data_sensitivity

        # Whether the property value is encrypted.
        sig { returns(T::Boolean) }
        attr_accessor :is_encrypted

        sig { returns(T::Boolean) }
        attr_accessor :is_large_value

        # The unique property name.
        sig { returns(String) }
        attr_accessor :name

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
        sig { returns(HubspotSDK::Crm::PropertyValue::Source::OrSymbol) }
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
              HubspotSDK::Crm::PropertyValue::DataSensitivity::OrSymbol,
            is_encrypted: T::Boolean,
            is_large_value: T::Boolean,
            name: String,
            persistence_timestamp: Integer,
            request_id: String,
            selected_by_user: T::Boolean,
            selected_by_user_timestamp: Integer,
            source: HubspotSDK::Crm::PropertyValue::Source::OrSymbol,
            source_id: String,
            source_label: String,
            source_metadata: String,
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
          is_large_value:,
          # The unique property name.
          name:,
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
          # The unique identifier associated with the source.
          source_vid:,
          # When the value was set, as a 64-bit integer.
          timestamp:,
          # The unit of measurement or context for the value.
          unit:,
          # The ID of the user who updated the property.
          updated_by_user_id:,
          use_timestamp_as_persistence_timestamp:,
          # The property value.
          value:
        )
        end

        sig do
          override.returns(
            {
              data_sensitivity:
                HubspotSDK::Crm::PropertyValue::DataSensitivity::OrSymbol,
              is_encrypted: T::Boolean,
              is_large_value: T::Boolean,
              name: String,
              persistence_timestamp: Integer,
              request_id: String,
              selected_by_user: T::Boolean,
              selected_by_user_timestamp: Integer,
              source: HubspotSDK::Crm::PropertyValue::Source::OrSymbol,
              source_id: String,
              source_label: String,
              source_metadata: String,
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
              T.all(Symbol, HubspotSDK::Crm::PropertyValue::DataSensitivity)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIGH =
            T.let(
              :high,
              HubspotSDK::Crm::PropertyValue::DataSensitivity::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              HubspotSDK::Crm::PropertyValue::DataSensitivity::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              HubspotSDK::Crm::PropertyValue::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PropertyValue::DataSensitivity::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The origin of the property value, such as "IMPORT" or "API".
        module Source
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PropertyValue::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACADEMY =
            T.let(
              :ACADEMY,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          ADS =
            T.let(:ADS, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          AI_GROUP =
            T.let(
              :AI_GROUP,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          ANALYTICS =
            T.let(
              :ANALYTICS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          API =
            T.let(:API, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          APPROVALS =
            T.let(
              :APPROVALS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          ASSISTS =
            T.let(
              :ASSISTS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          ASSOCIATIONS =
            T.let(
              :ASSOCIATIONS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          AUTOMATION_PLATFORM =
            T.let(
              :AUTOMATION_PLATFORM,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          AVATARS_SERVICE =
            T.let(
              :AVATARS_SERVICE,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          BATCH_UPDATE =
            T.let(
              :BATCH_UPDATE,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          BCC_TO_CRM =
            T.let(
              :BCC_TO_CRM,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          BEHAVIORAL_EVENTS =
            T.let(
              :BEHAVIORAL_EVENTS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          BET_ASSIGNMENT =
            T.let(
              :BET_ASSIGNMENT,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          BET_CRM_CONNECTOR =
            T.let(
              :BET_CRM_CONNECTOR,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          BIDEN =
            T.let(:BIDEN, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          BILLING =
            T.let(
              :BILLING,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          BOT =
            T.let(:BOT, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          CALCULATED =
            T.let(
              :CALCULATED,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          CHATSPOT =
            T.let(
              :CHATSPOT,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          COMMUNICATOR =
            T.let(
              :COMMUNICATOR,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          COMPANIES =
            T.let(
              :COMPANIES,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          COMPANY_FAMILIES =
            T.let(
              :COMPANY_FAMILIES,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          COMPANY_INSIGHTS =
            T.let(
              :COMPANY_INSIGHTS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          CONTACTS =
            T.let(
              :CONTACTS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          CONTACTS_WEB =
            T.let(
              :CONTACTS_WEB,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          CONTENT_MEMBERSHIP =
            T.let(
              :CONTENT_MEMBERSHIP,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          CONVERSATIONS =
            T.let(
              :CONVERSATIONS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          CRM_UI =
            T.let(:CRM_UI, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          CRM_UI_BULK_ACTION =
            T.let(
              :CRM_UI_BULK_ACTION,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          DATA_ENRICHMENT =
            T.let(
              :DATA_ENRICHMENT,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          DEALS =
            T.let(:DEALS, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          DEFAULT =
            T.let(
              :DEFAULT,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          EMAIL =
            T.let(:EMAIL, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          EMAIL_INTEGRATION =
            T.let(
              :EMAIL_INTEGRATION,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          ENGAGEMENTS =
            T.let(
              :ENGAGEMENTS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          EXTENSION =
            T.let(
              :EXTENSION,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          FILE_MANAGER =
            T.let(
              :FILE_MANAGER,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          FLYWHEEL_PRODUCT_DATA_SYNC =
            T.let(
              :FLYWHEEL_PRODUCT_DATA_SYNC,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          FORECASTING =
            T.let(
              :FORECASTING,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          FORM =
            T.let(:FORM, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          FORWARD_TO_CRM =
            T.let(
              :FORWARD_TO_CRM,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          GMAIL_INTEGRATION =
            T.let(
              :GMAIL_INTEGRATION,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          GOALS =
            T.let(:GOALS, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          HEISENBERG =
            T.let(
              :HEISENBERG,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          HELP_DESK =
            T.let(
              :HELP_DESK,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          IMPORT =
            T.let(:IMPORT, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          INTEGRATION =
            T.let(
              :INTEGRATION,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          INTEGRATIONS_PLATFORM =
            T.let(
              :INTEGRATIONS_PLATFORM,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          INTEGRATIONS_SYNC =
            T.let(
              :INTEGRATIONS_SYNC,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          INTENT =
            T.let(:INTENT, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          INTERNAL_PROCESSING =
            T.let(
              :INTERNAL_PROCESSING,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          LEADIN =
            T.let(:LEADIN, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          MARKETPLACE =
            T.let(
              :MARKETPLACE,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          MEETINGS =
            T.let(
              :MEETINGS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          MERGE_COMPANIES =
            T.let(
              :MERGE_COMPANIES,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          MERGE_CONTACTS =
            T.let(
              :MERGE_CONTACTS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          MERGE_OBJECTS =
            T.let(
              :MERGE_OBJECTS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          MICROAPPS =
            T.let(
              :MICROAPPS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          MIGRATION =
            T.let(
              :MIGRATION,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          MOBILE_ANDROID =
            T.let(
              :MOBILE_ANDROID,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          MOBILE_IOS =
            T.let(
              :MOBILE_IOS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          PAYMENTS =
            T.let(
              :PAYMENTS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          PIPELINE_SETTINGS =
            T.let(
              :PIPELINE_SETTINGS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          PLAYBOOKS =
            T.let(
              :PLAYBOOKS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          PORTAL_OBJECT_SYNC =
            T.let(
              :PORTAL_OBJECT_SYNC,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          PORTAL_USER_ASSOCIATOR =
            T.let(
              :PORTAL_USER_ASSOCIATOR,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          PRESENTATIONS =
            T.let(
              :PRESENTATIONS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          PROPERTY_SETTINGS =
            T.let(
              :PROPERTY_SETTINGS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          PROSPECTING_AGENT =
            T.let(
              :PROSPECTING_AGENT,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          QUOTAS =
            T.let(:QUOTAS, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          QUOTES =
            T.let(:QUOTES, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          RECYCLING_BIN =
            T.let(
              :RECYCLING_BIN,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          SALES =
            T.let(:SALES, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          SALES_MESSAGES =
            T.let(
              :SALES_MESSAGES,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          SALESFORCE =
            T.let(
              :SALESFORCE,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          SEQUENCES =
            T.let(
              :SEQUENCES,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          SETTINGS =
            T.let(
              :SETTINGS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          SIDEKICK =
            T.let(
              :SIDEKICK,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          SIGNALS =
            T.let(
              :SIGNALS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          SLACK_INTEGRATION =
            T.let(
              :SLACK_INTEGRATION,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          SOCIAL =
            T.let(:SOCIAL, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          SUCCESS =
            T.let(
              :SUCCESS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          TALLY =
            T.let(:TALLY, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          TASK =
            T.let(:TASK, HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol)
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          WAL_INCREMENTAL =
            T.let(
              :WAL_INCREMENTAL,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          WORKFLOW_CONTACT_DELETE_ACTION =
            T.let(
              :WORKFLOW_CONTACT_DELETE_ACTION,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )
          WORKFLOWS =
            T.let(
              :WORKFLOWS,
              HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Crm::PropertyValue::Source::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
