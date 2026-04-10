# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicImportError < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicImportError,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # A unique, stable identifier for this specific error.
        sig { returns(String) }
        attr_accessor :id

        # The epoch millisecond timestamp when this error was recorded.
        sig { returns(Integer) }
        attr_accessor :created_at

        # The classification of what went wrong during import processing.
        sig do
          returns(HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol)
        end
        attr_accessor :error_type

        sig { returns(HubSpotSDK::Crm::ImportRowCore) }
        attr_reader :source_data

        sig { params(source_data: HubSpotSDK::Crm::ImportRowCore::OrHash).void }
        attr_writer :source_data

        # A human-readable error message.
        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        # Additional human-readable context about the error.
        sig { returns(T.nilable(String)) }
        attr_reader :extra_context

        sig { params(extra_context: String).void }
        attr_writer :extra_context

        # Represents a single custom property of a marketing event, storing its name,
        # value, metadata (like source, timestamp, and sensitivity), and related audit
        # information for tracking changes.
        sig { returns(T.nilable(HubSpotSDK::PropertyValue)) }
        attr_reader :invalid_property_value

        sig do
          params(invalid_property_value: HubSpotSDK::PropertyValue::OrHash).void
        end
        attr_writer :invalid_property_value

        # The raw string value from the import file that caused the validation failure.
        sig { returns(T.nilable(String)) }
        attr_reader :invalid_value

        sig { params(invalid_value: String).void }
        attr_writer :invalid_value

        # A convenience accessor that returns either the value from `invalidPropertyValue`
        # or `invalidValue`, whichever is present (preferring the property value).
        sig { returns(T.nilable(String)) }
        attr_reader :invalid_value_to_display

        sig { params(invalid_value_to_display: String).void }
        attr_writer :invalid_value_to_display

        # The zero-based column index in the import file where the error occurred
        sig { returns(T.nilable(Integer)) }
        attr_reader :known_column_number

        sig { params(known_column_number: Integer).void }
        attr_writer :known_column_number

        # The CRM object type affected by this error.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          )
        end
        attr_reader :object_type

        sig do
          params(
            object_type:
              HubSpotSDK::Crm::PublicImportError::ObjectType::OrSymbol
          ).void
        end
        attr_writer :object_type

        # The modern object type identifier for the CRM object affected by this error.
        sig { returns(T.nilable(String)) }
        attr_reader :object_type_id

        sig { params(object_type_id: String).void }
        attr_writer :object_type_id

        sig do
          params(
            id: String,
            created_at: Integer,
            error_type: HubSpotSDK::Crm::PublicImportError::ErrorType::OrSymbol,
            source_data: HubSpotSDK::Crm::ImportRowCore::OrHash,
            error_message: String,
            extra_context: String,
            invalid_property_value: HubSpotSDK::PropertyValue::OrHash,
            invalid_value: String,
            invalid_value_to_display: String,
            known_column_number: Integer,
            object_type:
              HubSpotSDK::Crm::PublicImportError::ObjectType::OrSymbol,
            object_type_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A unique, stable identifier for this specific error.
          id:,
          # The epoch millisecond timestamp when this error was recorded.
          created_at:,
          # The classification of what went wrong during import processing.
          error_type:,
          source_data:,
          # A human-readable error message.
          error_message: nil,
          # Additional human-readable context about the error.
          extra_context: nil,
          # Represents a single custom property of a marketing event, storing its name,
          # value, metadata (like source, timestamp, and sensitivity), and related audit
          # information for tracking changes.
          invalid_property_value: nil,
          # The raw string value from the import file that caused the validation failure.
          invalid_value: nil,
          # A convenience accessor that returns either the value from `invalidPropertyValue`
          # or `invalidValue`, whichever is present (preferring the property value).
          invalid_value_to_display: nil,
          # The zero-based column index in the import file where the error occurred
          known_column_number: nil,
          # The CRM object type affected by this error.
          object_type: nil,
          # The modern object type identifier for the CRM object affected by this error.
          object_type_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Integer,
              error_type:
                HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol,
              source_data: HubSpotSDK::Crm::ImportRowCore,
              error_message: String,
              extra_context: String,
              invalid_property_value: HubSpotSDK::PropertyValue,
              invalid_value: String,
              invalid_value_to_display: String,
              known_column_number: Integer,
              object_type:
                HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol,
              object_type_id: String
            }
          )
        end
        def to_hash
        end

        # The classification of what went wrong during import processing.
        module ErrorType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicImportError::ErrorType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMBIGUOUS_ENUMERATION_OPTION =
            T.let(
              :AMBIGUOUS_ENUMERATION_OPTION,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          ASSOCIATION_LABEL_NOT_FOUND =
            T.let(
              :ASSOCIATION_LABEL_NOT_FOUND,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          ASSOCIATION_LIMIT_EXCEEDED =
            T.let(
              :ASSOCIATION_LIMIT_EXCEEDED,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          ASSOCIATION_RECORD_NOT_FOUND =
            T.let(
              :ASSOCIATION_RECORD_NOT_FOUND,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          COLUMN_TOO_LARGE =
            T.let(
              :COLUMN_TOO_LARGE,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          COULD_NOT_FIND_BUSINESS_UNIT =
            T.let(
              :COULD_NOT_FIND_BUSINESS_UNIT,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          COULD_NOT_FIND_OWNER =
            T.let(
              :COULD_NOT_FIND_OWNER,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          COULD_NOT_PARSE_DATE =
            T.let(
              :COULD_NOT_PARSE_DATE,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          COULD_NOT_PARSE_NUMBER =
            T.let(
              :COULD_NOT_PARSE_NUMBER,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          COULD_NOT_PARSE_ROW =
            T.let(
              :COULD_NOT_PARSE_ROW,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          COULD_NOT_PARSE_TERM =
            T.let(
              :COULD_NOT_PARSE_TERM,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          CREATE_ONLY_IMPORT =
            T.let(
              :CREATE_ONLY_IMPORT,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_ALTERNATE_ID =
            T.let(
              :DUPLICATE_ALTERNATE_ID,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_ASSOCIATION_ID =
            T.let(
              :DUPLICATE_ASSOCIATION_ID,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_EVENT =
            T.let(
              :DUPLICATE_EVENT,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_OBJECT_ID =
            T.let(
              :DUPLICATE_OBJECT_ID,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_RECORD_ID =
            T.let(
              :DUPLICATE_RECORD_ID,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_ROW_CONTENT =
            T.let(
              :DUPLICATE_ROW_CONTENT,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_UNIQUE_CREATION_KEY =
            T.let(
              :DUPLICATE_UNIQUE_CREATION_KEY,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_UNIQUE_PROPERTY_VALUE =
            T.let(
              :DUPLICATE_UNIQUE_PROPERTY_VALUE,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          FAILED_TO_CREATE_ASSOCIATION =
            T.let(
              :FAILED_TO_CREATE_ASSOCIATION,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          FAILED_TO_FIND_RECORD_FOR_ASSOCIATIONS =
            T.let(
              :FAILED_TO_FIND_RECORD_FOR_ASSOCIATIONS,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          FAILED_TO_OPT_OUT_CONTACT =
            T.let(
              :FAILED_TO_OPT_OUT_CONTACT,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          FAILED_TO_PROCESS_OBJECT_WITH_EMPTY_PROPERTY_VALUES =
            T.let(
              :FAILED_TO_PROCESS_OBJECT_WITH_EMPTY_PROPERTY_VALUES,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          FAILED_VALIDATION =
            T.let(
              :FAILED_VALIDATION,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          FILE_NOT_FOUND =
            T.let(
              :FILE_NOT_FOUND,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          GDPR_BLACKLISTED_EMAIL =
            T.let(
              :GDPR_BLACKLISTED_EMAIL,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INCORRECT_NUMBER_OF_COLUMNS =
            T.let(
              :INCORRECT_NUMBER_OF_COLUMNS,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_ALTERNATE_ID =
            T.let(
              :INVALID_ALTERNATE_ID,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_ASSOCIATION_IDENTIFIER =
            T.let(
              :INVALID_ASSOCIATION_IDENTIFIER,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_ASSOCIATION_KEY =
            T.let(
              :INVALID_ASSOCIATION_KEY,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_COLUMN_CONFIGURATION =
            T.let(
              :INVALID_COLUMN_CONFIGURATION,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_CUSTOM_PROPERTY_VALIDATION =
            T.let(
              :INVALID_CUSTOM_PROPERTY_VALIDATION,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_DOMAIN =
            T.let(
              :INVALID_DOMAIN,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_EMAIL =
            T.let(
              :INVALID_EMAIL,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_ENUM_FILE_ID_OR_URL =
            T.let(
              :INVALID_ENUM_FILE_ID_OR_URL,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_ENUMERATION_OPTION =
            T.let(
              :INVALID_ENUMERATION_OPTION,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_EVENT =
            T.let(
              :INVALID_EVENT,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_EVENT_TIMESTAMP =
            T.let(
              :INVALID_EVENT_TIMESTAMP,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_FILE_TYPE =
            T.let(
              :INVALID_FILE_TYPE,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_NUMBER_SIZE =
            T.let(
              :INVALID_NUMBER_SIZE,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_OBJECT_ID =
            T.let(
              :INVALID_OBJECT_ID,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_PROPERTY_VALUE_FORMAT =
            T.let(
              :INVALID_PROPERTY_VALUE_FORMAT,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_RECORD_ID =
            T.let(
              :INVALID_RECORD_ID,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_REQUIRED_PROPERTY =
            T.let(
              :INVALID_REQUIRED_PROPERTY,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_SHEET_COUNT =
            T.let(
              :INVALID_SHEET_COUNT,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_SPREADSHEET =
            T.let(
              :INVALID_SPREADSHEET,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          LIMIT_EXCEEDED =
            T.let(
              :LIMIT_EXCEEDED,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          MANY_ERRORS_IN_ROW =
            T.let(
              :MANY_ERRORS_IN_ROW,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          MISSING_EVENT_DEFINITION =
            T.let(
              :MISSING_EVENT_DEFINITION,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          MISSING_EVENT_TIMESTAMP =
            T.let(
              :MISSING_EVENT_TIMESTAMP,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          MISSING_OBJECT_DEFINITION =
            T.let(
              :MISSING_OBJECT_DEFINITION,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          MISSING_REQUIRED_PROPERTY =
            T.let(
              :MISSING_REQUIRED_PROPERTY,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          MULTIPLE_COMPANIES_WITH_THIS_DOMAIN =
            T.let(
              :MULTIPLE_COMPANIES_WITH_THIS_DOMAIN,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          MULTIPLE_OWNERS_FOUND =
            T.let(
              :MULTIPLE_OWNERS_FOUND,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          NO_OBJECT_ID_FROM_ASSOCIATION_IDENTIFIER =
            T.let(
              :NO_OBJECT_ID_FROM_ASSOCIATION_IDENTIFIER,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          OUTSIDE_VALID_TERM_RANGE =
            T.let(
              :OUTSIDE_VALID_TERM_RANGE,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          OUTSIDE_VALID_TIME_RANGE =
            T.let(
              :OUTSIDE_VALID_TIME_RANGE,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          PORTAL_WIDE_CUSTOM_OBJECT_LIMIT_EXCEEDED =
            T.let(
              :PORTAL_WIDE_CUSTOM_OBJECT_LIMIT_EXCEEDED,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          PROPERTY_DEFINITION_NOT_FOUND =
            T.let(
              :PROPERTY_DEFINITION_NOT_FOUND,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          PROPERTY_VALUE_NOT_FOUND =
            T.let(
              :PROPERTY_VALUE_NOT_FOUND,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          ROW_DATA_TOO_LARGE =
            T.let(
              :ROW_DATA_TOO_LARGE,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          SECONDARY_EMAIL_WRITE_FAILURE =
            T.let(
              :SECONDARY_EMAIL_WRITE_FAILURE,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          UNKNOWN_ASSOCIATION_RECORD_ID =
            T.let(
              :UNKNOWN_ASSOCIATION_RECORD_ID,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          UNKNOWN_BAD_REQUEST =
            T.let(
              :UNKNOWN_BAD_REQUEST,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          UNKNOWN_ERROR =
            T.let(
              :UNKNOWN_ERROR,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )
          UPDATE_ONLY_IMPORT =
            T.let(
              :UPDATE_ONLY_IMPORT,
              HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicImportError::ErrorType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The CRM object type affected by this error.
        module ObjectType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicImportError::ObjectType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABANDONED_CART =
            T.let(
              :ABANDONED_CART,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          AD =
            T.let(
              :AD,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          AD_ACCOUNT =
            T.let(
              :AD_ACCOUNT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          AD_CAMPAIGN =
            T.let(
              :AD_CAMPAIGN,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          AD_GROUP =
            T.let(
              :AD_GROUP,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          AI_FORECAST =
            T.let(
              :AI_FORECAST,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          ALL_PAGES =
            T.let(
              :ALL_PAGES,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          APPROVAL =
            T.let(
              :APPROVAL,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          APPROVAL_STEP =
            T.let(
              :APPROVAL_STEP,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          ATTRIBUTION =
            T.let(
              :ATTRIBUTION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          AUDIENCE =
            T.let(
              :AUDIENCE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW =
            T.let(
              :AUTOMATION_PLATFORM_FLOW,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW_ACTION =
            T.let(
              :AUTOMATION_PLATFORM_FLOW_ACTION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          BET_ALERT =
            T.let(
              :BET_ALERT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          BET_DELIVERABLE_SERVICE =
            T.let(
              :BET_DELIVERABLE_SERVICE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          BLOG_LISTING_PAGE =
            T.let(
              :BLOG_LISTING_PAGE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CALL =
            T.let(
              :CALL,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CAMPAIGN =
            T.let(
              :CAMPAIGN,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CAMPAIGN_BUDGET_ITEM =
            T.let(
              :CAMPAIGN_BUDGET_ITEM,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CAMPAIGN_SPEND_ITEM =
            T.let(
              :CAMPAIGN_SPEND_ITEM,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CAMPAIGN_STEP =
            T.let(
              :CAMPAIGN_STEP,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE =
            T.let(
              :CAMPAIGN_TEMPLATE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE_STEP =
            T.let(
              :CAMPAIGN_TEMPLATE_STEP,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CART =
            T.let(
              :CART,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CASE_STUDY =
            T.let(
              :CASE_STUDY,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CHATFLOW =
            T.let(
              :CHATFLOW,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CLIP =
            T.let(
              :CLIP,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CMS_URL =
            T.let(
              :CMS_URL,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          COMBO_EVENT_CONFIGURATION =
            T.let(
              :COMBO_EVENT_CONFIGURATION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          COMMERCE_PAYMENT =
            T.let(
              :COMMERCE_PAYMENT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          COMMUNICATION =
            T.let(
              :COMMUNICATION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          COMPANY =
            T.let(
              :COMPANY,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CONTACT =
            T.let(
              :CONTACT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CONTACT_CREATE_ATTRIBUTION =
            T.let(
              :CONTACT_CREATE_ATTRIBUTION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CONTENT =
            T.let(
              :CONTENT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CONTENT_AUDIT =
            T.let(
              :CONTENT_AUDIT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CONTENT_AUDIT_PAGE =
            T.let(
              :CONTENT_AUDIT_PAGE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CONVERSATION =
            T.let(
              :CONVERSATION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CONVERSATION_INBOX =
            T.let(
              :CONVERSATION_INBOX,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CONVERSATION_SESSION =
            T.let(
              :CONVERSATION_SESSION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CRM_OBJECTS_DUMMY_TYPE =
            T.let(
              :CRM_OBJECTS_DUMMY_TYPE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CRM_PIPELINES_DUMMY_TYPE =
            T.let(
              :CRM_PIPELINES_DUMMY_TYPE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CTA =
            T.let(
              :CTA,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          CTA_VARIANT =
            T.let(
              :CTA_VARIANT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          DATA_PRIVACY_CONSENT =
            T.let(
              :DATA_PRIVACY_CONSENT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          DATA_SYNC_STATE =
            T.let(
              :DATA_SYNC_STATE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          DEAL =
            T.let(
              :DEAL,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          DEAL_CREATE_ATTRIBUTION =
            T.let(
              :DEAL_CREATE_ATTRIBUTION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          DEAL_REGISTRATION =
            T.let(
              :DEAL_REGISTRATION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          DEAL_SPLIT =
            T.let(
              :DEAL_SPLIT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          DISCOUNT =
            T.let(
              :DISCOUNT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          DISCOUNT_CODE =
            T.let(
              :DISCOUNT_CODE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          DISCOUNT_TEMPLATE =
            T.let(
              :DISCOUNT_TEMPLATE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :ENGAGEMENT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          EXPORT =
            T.let(
              :EXPORT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          EXTERNAL_WEB_URL =
            T.let(
              :EXTERNAL_WEB_URL,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          FEE =
            T.let(
              :FEE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          FEEDBACK_SUBMISSION =
            T.let(
              :FEEDBACK_SUBMISSION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          FEEDBACK_SURVEY =
            T.let(
              :FEEDBACK_SURVEY,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          FILE_MANAGER_FILE =
            T.let(
              :FILE_MANAGER_FILE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          FILE_MANAGER_FOLDER =
            T.let(
              :FILE_MANAGER_FOLDER,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          FOLDER =
            T.let(
              :FOLDER,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          FORECAST =
            T.let(
              :FORECAST,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          FORM =
            T.let(
              :FORM,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          FORM_SUBMISSION_INBOUNDDB =
            T.let(
              :FORM_SUBMISSION_INBOUNDDB,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          GOAL_TARGET =
            T.let(
              :GOAL_TARGET,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          GOAL_TARGET_GROUP =
            T.let(
              :GOAL_TARGET_GROUP,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          GOAL_TEMPLATE =
            T.let(
              :GOAL_TEMPLATE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          GSC_PROPERTY =
            T.let(
              :GSC_PROPERTY,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          HUB =
            T.let(
              :HUB,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :INVOICE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          KEYWORD =
            T.let(
              :KEYWORD,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          LEAD =
            T.let(
              :LEAD,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          LINE_ITEM =
            T.let(
              :LINE_ITEM,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          MARKETING_CALENDAR =
            T.let(
              :MARKETING_CALENDAR,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          MARKETING_CAMPAIGN_UTM =
            T.let(
              :MARKETING_CAMPAIGN_UTM,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          MARKETING_EMAIL =
            T.let(
              :MARKETING_EMAIL,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          MARKETING_EVENT =
            T.let(
              :MARKETING_EVENT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          MARKETING_EVENT_ATTENDANCE =
            T.let(
              :MARKETING_EVENT_ATTENDANCE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          MARKETING_SMS =
            T.let(
              :MARKETING_SMS,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          MEDIA_BRIDGE =
            T.let(
              :MEDIA_BRIDGE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          MEETING_EVENT =
            T.let(
              :MEETING_EVENT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          MIC =
            T.let(
              :MIC,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          NOTE =
            T.let(
              :NOTE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          OBJECT_LIST =
            T.let(
              :OBJECT_LIST,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          ORDER =
            T.let(
              :ORDER,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          OWNER =
            T.let(
              :OWNER,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PARTNER_ACCOUNT =
            T.let(
              :PARTNER_ACCOUNT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PARTNER_CLIENT =
            T.let(
              :PARTNER_CLIENT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PARTNER_CLIENT_REVENUE =
            T.let(
              :PARTNER_CLIENT_REVENUE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PARTNER_SERVICE =
            T.let(
              :PARTNER_SERVICE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PAYMENT_LINK =
            T.let(
              :PAYMENT_LINK,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE =
            T.let(
              :PAYMENT_SCHEDULE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE_INSTALLMENT =
            T.let(
              :PAYMENT_SCHEDULE_INSTALLMENT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PERMISSIONS_TESTING =
            T.let(
              :PERMISSIONS_TESTING,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PLAYBOOK =
            T.let(
              :PLAYBOOK,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PLAYBOOK_QUESTION =
            T.let(
              :PLAYBOOK_QUESTION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION =
            T.let(
              :PLAYBOOK_SUBMISSION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION_ANSWER =
            T.let(
              :PLAYBOOK_SUBMISSION_ANSWER,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PLAYLIST =
            T.let(
              :PLAYLIST,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PLAYLIST_FOLDER =
            T.let(
              :PLAYLIST_FOLDER,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PODCAST_EPISODE =
            T.let(
              :PODCAST_EPISODE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PORTAL_OBJECT_SYNC_MESSAGE =
            T.let(
              :PORTAL_OBJECT_SYNC_MESSAGE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          POSTAL_MAIL =
            T.let(
              :POSTAL_MAIL,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PRIVACY_SCANNER_COOKIE =
            T.let(
              :PRIVACY_SCANNER_COOKIE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PRODUCT =
            T.let(
              :PRODUCT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PRODUCT_OR_FOLDER =
            T.let(
              :PRODUCT_OR_FOLDER,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PROPERTY_INFO =
            T.let(
              :PROPERTY_INFO,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PROSPECTING_AGENT_CONTACT_ASSIGNMENT =
            T.let(
              :PROSPECTING_AGENT_CONTACT_ASSIGNMENT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          PUBLISHING_TASK =
            T.let(
              :PUBLISHING_TASK,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          QUARANTINED_SUBMISSION =
            T.let(
              :QUARANTINED_SUBMISSION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          QUOTA =
            T.let(
              :QUOTA,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          QUOTE =
            T.let(
              :QUOTE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          QUOTE_FIELD =
            T.let(
              :QUOTE_FIELD,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          QUOTE_MODULE =
            T.let(
              :QUOTE_MODULE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          QUOTE_MODULE_FIELD =
            T.let(
              :QUOTE_MODULE_FIELD,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          QUOTE_TEMPLATE =
            T.let(
              :QUOTE_TEMPLATE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          RESTORABLE_CRM_OBJECT =
            T.let(
              :RESTORABLE_CRM_OBJECT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          ROSTER =
            T.let(
              :ROSTER,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          ROSTER_MEMBER =
            T.let(
              :ROSTER_MEMBER,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SALES_DOCUMENT =
            T.let(
              :SALES_DOCUMENT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SALES_TASK =
            T.let(
              :SALES_TASK,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SALES_WORKLOAD =
            T.let(
              :SALES_WORKLOAD,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SALESFORCE_SYNC_ERROR =
            T.let(
              :SALESFORCE_SYNC_ERROR,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SCHEDULING_PAGE =
            T.let(
              :SCHEDULING_PAGE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SCHEMAS_BACKEND_TEST =
            T.let(
              :SCHEMAS_BACKEND_TEST,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SCORE_CONFIGURATION =
            T.let(
              :SCORE_CONFIGURATION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SEQUENCE =
            T.let(
              :SEQUENCE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SEQUENCE_ENROLLMENT =
            T.let(
              :SEQUENCE_ENROLLMENT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SEQUENCE_STEP =
            T.let(
              :SEQUENCE_STEP,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SEQUENCE_STEP_ENROLLMENT =
            T.let(
              :SEQUENCE_STEP_ENROLLMENT,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SERVICE =
            T.let(
              :SERVICE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SNIPPET =
            T.let(
              :SNIPPET,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SOCIAL_BROADCAST =
            T.let(
              :SOCIAL_BROADCAST,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SOCIAL_CHANNEL =
            T.let(
              :SOCIAL_CHANNEL,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SOCIAL_POST =
            T.let(
              :SOCIAL_POST,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SOCIAL_PROFILE =
            T.let(
              :SOCIAL_PROFILE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SOX_PROTECTED_DUMMY_TYPE =
            T.let(
              :SOX_PROTECTED_DUMMY_TYPE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SOX_PROTECTED_TEST_TYPE =
            T.let(
              :SOX_PROTECTED_TEST_TYPE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SUBMISSION_TAG =
            T.let(
              :SUBMISSION_TAG,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :SUBSCRIPTION,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          TASK =
            T.let(
              :TASK,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          TASK_TEMPLATE =
            T.let(
              :TASK_TEMPLATE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          TAX =
            T.let(
              :TAX,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :TEMPLATE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          TICKET =
            T.let(
              :TICKET,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          UNSUBSCRIBE =
            T.let(
              :UNSUBSCRIBE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          VIEW =
            T.let(
              :VIEW,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          VIEW_BLOCK =
            T.let(
              :VIEW_BLOCK,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )
          WEB_INTERACTIVE =
            T.let(
              :WEB_INTERACTIVE,
              HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicImportError::ObjectType::TaggedSymbol
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
