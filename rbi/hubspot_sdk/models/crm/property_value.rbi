# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PropertyValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::CRM::PropertyValue, HubspotSDK::Internal::AnyHash)
          end

        # The sensitivity level of the property, such as "non_sensitive", "sensitive", and
        # "highly_sensitive".
        sig do
          returns(HubspotSDK::CRM::PropertyValue::DataSensitivity::OrSymbol)
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
        sig { returns(HubspotSDK::CRM::PropertyValue::Source::OrSymbol) }
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
              HubspotSDK::CRM::PropertyValue::DataSensitivity::OrSymbol,
            is_encrypted: T::Boolean,
            is_large_value: T::Boolean,
            name: String,
            persistence_timestamp: Integer,
            request_id: String,
            selected_by_user: T::Boolean,
            selected_by_user_timestamp: Integer,
            source: HubspotSDK::CRM::PropertyValue::Source::OrSymbol,
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
                HubspotSDK::CRM::PropertyValue::DataSensitivity::OrSymbol,
              is_encrypted: T::Boolean,
              is_large_value: T::Boolean,
              name: String,
              persistence_timestamp: Integer,
              request_id: String,
              selected_by_user: T::Boolean,
              selected_by_user_timestamp: Integer,
              source: HubspotSDK::CRM::PropertyValue::Source::OrSymbol,
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
              T.all(Symbol, HubspotSDK::CRM::PropertyValue::DataSensitivity)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              HubspotSDK::CRM::PropertyValue::DataSensitivity::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              HubspotSDK::CRM::PropertyValue::DataSensitivity::TaggedSymbol
            )
          HIGH =
            T.let(
              :high,
              HubspotSDK::CRM::PropertyValue::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PropertyValue::DataSensitivity::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::CRM::PropertyValue::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          IMPORT =
            T.let(:IMPORT, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          API =
            T.let(:API, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          FORM =
            T.let(:FORM, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          ANALYTICS =
            T.let(
              :ANALYTICS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          MIGRATION =
            T.let(
              :MIGRATION,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          SALESFORCE =
            T.let(
              :SALESFORCE,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          INTEGRATION =
            T.let(
              :INTEGRATION,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          CONTACTS_WEB =
            T.let(
              :CONTACTS_WEB,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          WAL_INCREMENTAL =
            T.let(
              :WAL_INCREMENTAL,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          TASK =
            T.let(:TASK, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          EMAIL =
            T.let(:EMAIL, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          WORKFLOWS =
            T.let(
              :WORKFLOWS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          CALCULATED =
            T.let(
              :CALCULATED,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          SOCIAL =
            T.let(:SOCIAL, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          BATCH_UPDATE =
            T.let(
              :BATCH_UPDATE,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          SIGNALS =
            T.let(
              :SIGNALS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          BIDEN =
            T.let(:BIDEN, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          DEFAULT =
            T.let(
              :DEFAULT,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          COMPANIES =
            T.let(
              :COMPANIES,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          DEALS =
            T.let(:DEALS, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          ASSISTS =
            T.let(
              :ASSISTS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          PRESENTATIONS =
            T.let(
              :PRESENTATIONS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          TALLY =
            T.let(:TALLY, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          SIDEKICK =
            T.let(
              :SIDEKICK,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          CRM_UI =
            T.let(:CRM_UI, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          MERGE_CONTACTS =
            T.let(
              :MERGE_CONTACTS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          PORTAL_USER_ASSOCIATOR =
            T.let(
              :PORTAL_USER_ASSOCIATOR,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          INTEGRATIONS_PLATFORM =
            T.let(
              :INTEGRATIONS_PLATFORM,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          BCC_TO_CRM =
            T.let(
              :BCC_TO_CRM,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          FORWARD_TO_CRM =
            T.let(
              :FORWARD_TO_CRM,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          ENGAGEMENTS =
            T.let(
              :ENGAGEMENTS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          SALES =
            T.let(:SALES, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          HEISENBERG =
            T.let(
              :HEISENBERG,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          LEADIN =
            T.let(:LEADIN, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          GMAIL_INTEGRATION =
            T.let(
              :GMAIL_INTEGRATION,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          ACADEMY =
            T.let(
              :ACADEMY,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          SALES_MESSAGES =
            T.let(
              :SALES_MESSAGES,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          AVATARS_SERVICE =
            T.let(
              :AVATARS_SERVICE,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          MERGE_COMPANIES =
            T.let(
              :MERGE_COMPANIES,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          SEQUENCES =
            T.let(
              :SEQUENCES,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          COMPANY_FAMILIES =
            T.let(
              :COMPANY_FAMILIES,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          MOBILE_IOS =
            T.let(
              :MOBILE_IOS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          MOBILE_ANDROID =
            T.let(
              :MOBILE_ANDROID,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          CONTACTS =
            T.let(
              :CONTACTS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          ASSOCIATIONS =
            T.let(
              :ASSOCIATIONS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          EXTENSION =
            T.let(
              :EXTENSION,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :SUCCESS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          BOT =
            T.let(:BOT, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          INTEGRATIONS_SYNC =
            T.let(
              :INTEGRATIONS_SYNC,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          AUTOMATION_PLATFORM =
            T.let(
              :AUTOMATION_PLATFORM,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          CONVERSATIONS =
            T.let(
              :CONVERSATIONS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          EMAIL_INTEGRATION =
            T.let(
              :EMAIL_INTEGRATION,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          CONTENT_MEMBERSHIP =
            T.let(
              :CONTENT_MEMBERSHIP,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          QUOTES =
            T.let(:QUOTES, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          BET_ASSIGNMENT =
            T.let(
              :BET_ASSIGNMENT,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          QUOTAS =
            T.let(:QUOTAS, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          BET_CRM_CONNECTOR =
            T.let(
              :BET_CRM_CONNECTOR,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          MEETINGS =
            T.let(
              :MEETINGS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          MERGE_OBJECTS =
            T.let(
              :MERGE_OBJECTS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          RECYCLING_BIN =
            T.let(
              :RECYCLING_BIN,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          ADS =
            T.let(:ADS, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          AI_GROUP =
            T.let(
              :AI_GROUP,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          COMMUNICATOR =
            T.let(
              :COMMUNICATOR,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          SETTINGS =
            T.let(
              :SETTINGS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          PROPERTY_SETTINGS =
            T.let(
              :PROPERTY_SETTINGS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          PIPELINE_SETTINGS =
            T.let(
              :PIPELINE_SETTINGS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          COMPANY_INSIGHTS =
            T.let(
              :COMPANY_INSIGHTS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          BEHAVIORAL_EVENTS =
            T.let(
              :BEHAVIORAL_EVENTS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          PAYMENTS =
            T.let(
              :PAYMENTS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          GOALS =
            T.let(:GOALS, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          PORTAL_OBJECT_SYNC =
            T.let(
              :PORTAL_OBJECT_SYNC,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          APPROVALS =
            T.let(
              :APPROVALS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          FILE_MANAGER =
            T.let(
              :FILE_MANAGER,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          MARKETPLACE =
            T.let(
              :MARKETPLACE,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          INTERNAL_PROCESSING =
            T.let(
              :INTERNAL_PROCESSING,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          FORECASTING =
            T.let(
              :FORECASTING,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          SLACK_INTEGRATION =
            T.let(
              :SLACK_INTEGRATION,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          CRM_UI_BULK_ACTION =
            T.let(
              :CRM_UI_BULK_ACTION,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          WORKFLOW_CONTACT_DELETE_ACTION =
            T.let(
              :WORKFLOW_CONTACT_DELETE_ACTION,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          PLAYBOOKS =
            T.let(
              :PLAYBOOKS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          CHATSPOT =
            T.let(
              :CHATSPOT,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          FLYWHEEL_PRODUCT_DATA_SYNC =
            T.let(
              :FLYWHEEL_PRODUCT_DATA_SYNC,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          HELP_DESK =
            T.let(
              :HELP_DESK,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          BILLING =
            T.let(
              :BILLING,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          DATA_ENRICHMENT =
            T.let(
              :DATA_ENRICHMENT,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          MICROAPPS =
            T.let(
              :MICROAPPS,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )
          INTENT =
            T.let(:INTENT, HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol)
          PROSPECTING_AGENT =
            T.let(
              :PROSPECTING_AGENT,
              HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::CRM::PropertyValue::Source::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
