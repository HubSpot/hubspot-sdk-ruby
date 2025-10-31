# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PropertyValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PropertyValue,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Name of custom property
        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :source_upstream_deployable

        # Custom property value
        sig { returns(String) }
        attr_accessor :value

        # The sensitivity level of the property, such as "non_sensitive", "sensitive", and
        # "highly_sensitive".
        sig do
          returns(
            T.nilable(
              HubspotSDK::Marketing::PropertyValue::DataSensitivity::OrSymbol
            )
          )
        end
        attr_reader :data_sensitivity

        sig do
          params(
            data_sensitivity:
              HubspotSDK::Marketing::PropertyValue::DataSensitivity::OrSymbol
          ).void
        end
        attr_writer :data_sensitivity

        # Whether the property value is encrypted.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_encrypted

        sig { params(is_encrypted: T::Boolean).void }
        attr_writer :is_encrypted

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_large_value

        sig { params(is_large_value: T::Boolean).void }
        attr_writer :is_large_value

        sig { returns(T.nilable(Integer)) }
        attr_reader :persistence_timestamp

        sig { params(persistence_timestamp: Integer).void }
        attr_writer :persistence_timestamp

        # A unique ID associated with this request.
        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        # Whether the value was selected by a user.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :selected_by_user

        sig { params(selected_by_user: T::Boolean).void }
        attr_writer :selected_by_user

        # The timestamp when the value was selected by a user, if applicable.
        sig { returns(T.nilable(Integer)) }
        attr_reader :selected_by_user_timestamp

        sig { params(selected_by_user_timestamp: Integer).void }
        attr_writer :selected_by_user_timestamp

        # The origin of the property value, such as "IMPORT" or "API".
        sig do
          returns(
            T.nilable(HubspotSDK::Marketing::PropertyValue::Source::OrSymbol)
          )
        end
        attr_reader :source

        sig do
          params(
            source: HubspotSDK::Marketing::PropertyValue::Source::OrSymbol
          ).void
        end
        attr_writer :source

        # The ID of the property source indicating where it was created.
        sig { returns(T.nilable(String)) }
        attr_reader :source_id

        sig { params(source_id: String).void }
        attr_writer :source_id

        # A human-readable label.
        sig { returns(T.nilable(String)) }
        attr_reader :source_label

        sig { params(source_label: String).void }
        attr_writer :source_label

        # Source metadata encoded as a base64 string. For example: `ZXhhbXBsZSBzdHJpbmc=`
        sig { returns(T.nilable(String)) }
        attr_reader :source_metadata

        sig { params(source_metadata: String).void }
        attr_writer :source_metadata

        # The unique identifier associated with the source.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :source_vid

        sig { params(source_vid: T::Array[Integer]).void }
        attr_writer :source_vid

        # When the value was set, as a 64-bit integer.
        sig { returns(T.nilable(Integer)) }
        attr_reader :timestamp

        sig { params(timestamp: Integer).void }
        attr_writer :timestamp

        # The unit of measurement or context for the value.
        sig { returns(T.nilable(String)) }
        attr_reader :unit

        sig { params(unit: String).void }
        attr_writer :unit

        # The ID of the user who updated the property.
        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_by_user_id

        sig { params(updated_by_user_id: Integer).void }
        attr_writer :updated_by_user_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :use_timestamp_as_persistence_timestamp

        sig { params(use_timestamp_as_persistence_timestamp: T::Boolean).void }
        attr_writer :use_timestamp_as_persistence_timestamp

        # Represents a single custom property of a marketing event, storing its name,
        # value, metadata (like source, timestamp, and sensitivity), and related audit
        # information for tracking changes.
        sig do
          params(
            name: String,
            source_upstream_deployable: String,
            value: String,
            data_sensitivity:
              HubspotSDK::Marketing::PropertyValue::DataSensitivity::OrSymbol,
            is_encrypted: T::Boolean,
            is_large_value: T::Boolean,
            persistence_timestamp: Integer,
            request_id: String,
            selected_by_user: T::Boolean,
            selected_by_user_timestamp: Integer,
            source: HubspotSDK::Marketing::PropertyValue::Source::OrSymbol,
            source_id: String,
            source_label: String,
            source_metadata: String,
            source_vid: T::Array[Integer],
            timestamp: Integer,
            unit: String,
            updated_by_user_id: Integer,
            use_timestamp_as_persistence_timestamp: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Name of custom property
          name:,
          source_upstream_deployable:,
          # Custom property value
          value:,
          # The sensitivity level of the property, such as "non_sensitive", "sensitive", and
          # "highly_sensitive".
          data_sensitivity: nil,
          # Whether the property value is encrypted.
          is_encrypted: nil,
          is_large_value: nil,
          persistence_timestamp: nil,
          # A unique ID associated with this request.
          request_id: nil,
          # Whether the value was selected by a user.
          selected_by_user: nil,
          # The timestamp when the value was selected by a user, if applicable.
          selected_by_user_timestamp: nil,
          # The origin of the property value, such as "IMPORT" or "API".
          source: nil,
          # The ID of the property source indicating where it was created.
          source_id: nil,
          # A human-readable label.
          source_label: nil,
          # Source metadata encoded as a base64 string. For example: `ZXhhbXBsZSBzdHJpbmc=`
          source_metadata: nil,
          # The unique identifier associated with the source.
          source_vid: nil,
          # When the value was set, as a 64-bit integer.
          timestamp: nil,
          # The unit of measurement or context for the value.
          unit: nil,
          # The ID of the user who updated the property.
          updated_by_user_id: nil,
          use_timestamp_as_persistence_timestamp: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              source_upstream_deployable: String,
              value: String,
              data_sensitivity:
                HubspotSDK::Marketing::PropertyValue::DataSensitivity::OrSymbol,
              is_encrypted: T::Boolean,
              is_large_value: T::Boolean,
              persistence_timestamp: Integer,
              request_id: String,
              selected_by_user: T::Boolean,
              selected_by_user_timestamp: Integer,
              source: HubspotSDK::Marketing::PropertyValue::Source::OrSymbol,
              source_id: String,
              source_label: String,
              source_metadata: String,
              source_vid: T::Array[Integer],
              timestamp: Integer,
              unit: String,
              updated_by_user_id: Integer,
              use_timestamp_as_persistence_timestamp: T::Boolean
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
              T.all(
                Symbol,
                HubspotSDK::Marketing::PropertyValue::DataSensitivity
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              HubspotSDK::Marketing::PropertyValue::DataSensitivity::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              HubspotSDK::Marketing::PropertyValue::DataSensitivity::TaggedSymbol
            )
          HIGH =
            T.let(
              :high,
              HubspotSDK::Marketing::PropertyValue::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PropertyValue::DataSensitivity::TaggedSymbol
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
              T.all(Symbol, HubspotSDK::Marketing::PropertyValue::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          API =
            T.let(
              :API,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          FORM =
            T.let(
              :FORM,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          ANALYTICS =
            T.let(
              :ANALYTICS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          MIGRATION =
            T.let(
              :MIGRATION,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          SALESFORCE =
            T.let(
              :SALESFORCE,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          INTEGRATION =
            T.let(
              :INTEGRATION,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          CONTACTS_WEB =
            T.let(
              :CONTACTS_WEB,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          WAL_INCREMENTAL =
            T.let(
              :WAL_INCREMENTAL,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          TASK =
            T.let(
              :TASK,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          WORKFLOWS =
            T.let(
              :WORKFLOWS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          CALCULATED =
            T.let(
              :CALCULATED,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          SOCIAL =
            T.let(
              :SOCIAL,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          BATCH_UPDATE =
            T.let(
              :BATCH_UPDATE,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          SIGNALS =
            T.let(
              :SIGNALS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          BIDEN =
            T.let(
              :BIDEN,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          DEFAULT =
            T.let(
              :DEFAULT,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          COMPANIES =
            T.let(
              :COMPANIES,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          DEALS =
            T.let(
              :DEALS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          ASSISTS =
            T.let(
              :ASSISTS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          PRESENTATIONS =
            T.let(
              :PRESENTATIONS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          TALLY =
            T.let(
              :TALLY,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          SIDEKICK =
            T.let(
              :SIDEKICK,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          CRM_UI =
            T.let(
              :CRM_UI,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          MERGE_CONTACTS =
            T.let(
              :MERGE_CONTACTS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          PORTAL_USER_ASSOCIATOR =
            T.let(
              :PORTAL_USER_ASSOCIATOR,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          INTEGRATIONS_PLATFORM =
            T.let(
              :INTEGRATIONS_PLATFORM,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          BCC_TO_CRM =
            T.let(
              :BCC_TO_CRM,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          FORWARD_TO_CRM =
            T.let(
              :FORWARD_TO_CRM,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          ENGAGEMENTS =
            T.let(
              :ENGAGEMENTS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          SALES =
            T.let(
              :SALES,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          HEISENBERG =
            T.let(
              :HEISENBERG,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          LEADIN =
            T.let(
              :LEADIN,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          GMAIL_INTEGRATION =
            T.let(
              :GMAIL_INTEGRATION,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          ACADEMY =
            T.let(
              :ACADEMY,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          SALES_MESSAGES =
            T.let(
              :SALES_MESSAGES,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          AVATARS_SERVICE =
            T.let(
              :AVATARS_SERVICE,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          MERGE_COMPANIES =
            T.let(
              :MERGE_COMPANIES,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          SEQUENCES =
            T.let(
              :SEQUENCES,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          COMPANY_FAMILIES =
            T.let(
              :COMPANY_FAMILIES,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          MOBILE_IOS =
            T.let(
              :MOBILE_IOS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          MOBILE_ANDROID =
            T.let(
              :MOBILE_ANDROID,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          CONTACTS =
            T.let(
              :CONTACTS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          ASSOCIATIONS =
            T.let(
              :ASSOCIATIONS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          EXTENSION =
            T.let(
              :EXTENSION,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :SUCCESS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          BOT =
            T.let(
              :BOT,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          INTEGRATIONS_SYNC =
            T.let(
              :INTEGRATIONS_SYNC,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          AUTOMATION_PLATFORM =
            T.let(
              :AUTOMATION_PLATFORM,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          CONVERSATIONS =
            T.let(
              :CONVERSATIONS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          EMAIL_INTEGRATION =
            T.let(
              :EMAIL_INTEGRATION,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          CONTENT_MEMBERSHIP =
            T.let(
              :CONTENT_MEMBERSHIP,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          QUOTES =
            T.let(
              :QUOTES,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          BET_ASSIGNMENT =
            T.let(
              :BET_ASSIGNMENT,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          QUOTAS =
            T.let(
              :QUOTAS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          BET_CRM_CONNECTOR =
            T.let(
              :BET_CRM_CONNECTOR,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          MEETINGS =
            T.let(
              :MEETINGS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          MERGE_OBJECTS =
            T.let(
              :MERGE_OBJECTS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          RECYCLING_BIN =
            T.let(
              :RECYCLING_BIN,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          ADS =
            T.let(
              :ADS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          AI_GROUP =
            T.let(
              :AI_GROUP,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          COMMUNICATOR =
            T.let(
              :COMMUNICATOR,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          SETTINGS =
            T.let(
              :SETTINGS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          PROPERTY_SETTINGS =
            T.let(
              :PROPERTY_SETTINGS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          PIPELINE_SETTINGS =
            T.let(
              :PIPELINE_SETTINGS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          COMPANY_INSIGHTS =
            T.let(
              :COMPANY_INSIGHTS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          BEHAVIORAL_EVENTS =
            T.let(
              :BEHAVIORAL_EVENTS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          PAYMENTS =
            T.let(
              :PAYMENTS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          GOALS =
            T.let(
              :GOALS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          PORTAL_OBJECT_SYNC =
            T.let(
              :PORTAL_OBJECT_SYNC,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          APPROVALS =
            T.let(
              :APPROVALS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          FILE_MANAGER =
            T.let(
              :FILE_MANAGER,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          MARKETPLACE =
            T.let(
              :MARKETPLACE,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          INTERNAL_PROCESSING =
            T.let(
              :INTERNAL_PROCESSING,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          FORECASTING =
            T.let(
              :FORECASTING,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          SLACK_INTEGRATION =
            T.let(
              :SLACK_INTEGRATION,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          CRM_UI_BULK_ACTION =
            T.let(
              :CRM_UI_BULK_ACTION,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          WORKFLOW_CONTACT_DELETE_ACTION =
            T.let(
              :WORKFLOW_CONTACT_DELETE_ACTION,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          PLAYBOOKS =
            T.let(
              :PLAYBOOKS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          CHATSPOT =
            T.let(
              :CHATSPOT,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          FLYWHEEL_PRODUCT_DATA_SYNC =
            T.let(
              :FLYWHEEL_PRODUCT_DATA_SYNC,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          HELP_DESK =
            T.let(
              :HELP_DESK,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          BILLING =
            T.let(
              :BILLING,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          DATA_ENRICHMENT =
            T.let(
              :DATA_ENRICHMENT,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          MICROAPPS =
            T.let(
              :MICROAPPS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          INTENT =
            T.let(
              :INTENT,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          PROSPECTING_AGENT =
            T.let(
              :PROSPECTING_AGENT,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          CENTRAL_EXCHANGE_RATES =
            T.let(
              :CENTRAL_EXCHANGE_RATES,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          HELP_DESK_AI =
            T.let(
              :HELP_DESK_AI,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          CONVERSATIONAL_ENRICHMENT =
            T.let(
              :CONVERSATIONAL_ENRICHMENT,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          CRM_PROCESSES_PLATFORM =
            T.let(
              :CRM_PROCESSES_PLATFORM,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          CLONE_OBJECTS =
            T.let(
              :CLONE_OBJECTS,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          MARKET_SOURCING =
            T.let(
              :MARKET_SOURCING,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          DATASET =
            T.let(
              :DATASET,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )
          PROPERTY_RESTORE =
            T.let(
              :PROPERTY_RESTORE,
              HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::PropertyValue::Source::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
