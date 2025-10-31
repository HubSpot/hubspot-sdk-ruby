# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicImportError < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicImportError,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :created_at

        sig do
          returns(HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol)
        end
        attr_accessor :error_type

        sig { returns(HubspotSDK::CRM::ImportRowCore) }
        attr_reader :source_data

        sig { params(source_data: HubspotSDK::CRM::ImportRowCore::OrHash).void }
        attr_writer :source_data

        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        sig { returns(T.nilable(String)) }
        attr_reader :extra_context

        sig { params(extra_context: String).void }
        attr_writer :extra_context

        # Represents a single custom property of a marketing event, storing its name,
        # value, metadata (like source, timestamp, and sensitivity), and related audit
        # information for tracking changes.
        sig { returns(T.nilable(HubspotSDK::Marketing::PropertyValue)) }
        attr_reader :invalid_property_value

        sig do
          params(
            invalid_property_value: HubspotSDK::Marketing::PropertyValue::OrHash
          ).void
        end
        attr_writer :invalid_property_value

        sig { returns(T.nilable(String)) }
        attr_reader :invalid_value

        sig { params(invalid_value: String).void }
        attr_writer :invalid_value

        sig { returns(T.nilable(String)) }
        attr_reader :invalid_value_to_display

        sig { params(invalid_value_to_display: String).void }
        attr_writer :invalid_value_to_display

        sig { returns(T.nilable(Integer)) }
        attr_reader :known_column_number

        sig { params(known_column_number: Integer).void }
        attr_writer :known_column_number

        sig do
          returns(
            T.nilable(
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          )
        end
        attr_reader :object_type

        sig do
          params(
            object_type:
              HubspotSDK::CRM::PublicImportError::ObjectType::OrSymbol
          ).void
        end
        attr_writer :object_type

        sig { returns(T.nilable(String)) }
        attr_reader :object_type_id

        sig { params(object_type_id: String).void }
        attr_writer :object_type_id

        sig do
          params(
            id: String,
            created_at: Integer,
            error_type: HubspotSDK::CRM::PublicImportError::ErrorType::OrSymbol,
            source_data: HubspotSDK::CRM::ImportRowCore::OrHash,
            error_message: String,
            extra_context: String,
            invalid_property_value:
              HubspotSDK::Marketing::PropertyValue::OrHash,
            invalid_value: String,
            invalid_value_to_display: String,
            known_column_number: Integer,
            object_type:
              HubspotSDK::CRM::PublicImportError::ObjectType::OrSymbol,
            object_type_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          error_type:,
          source_data:,
          error_message: nil,
          extra_context: nil,
          # Represents a single custom property of a marketing event, storing its name,
          # value, metadata (like source, timestamp, and sensitivity), and related audit
          # information for tracking changes.
          invalid_property_value: nil,
          invalid_value: nil,
          invalid_value_to_display: nil,
          known_column_number: nil,
          object_type: nil,
          object_type_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Integer,
              error_type:
                HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol,
              source_data: HubspotSDK::CRM::ImportRowCore,
              error_message: String,
              extra_context: String,
              invalid_property_value: HubspotSDK::Marketing::PropertyValue,
              invalid_value: String,
              invalid_value_to_display: String,
              known_column_number: Integer,
              object_type:
                HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol,
              object_type_id: String
            }
          )
        end
        def to_hash
        end

        module ErrorType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::CRM::PublicImportError::ErrorType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCORRECT_NUMBER_OF_COLUMNS =
            T.let(
              :INCORRECT_NUMBER_OF_COLUMNS,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_OBJECT_ID =
            T.let(
              :INVALID_OBJECT_ID,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_ASSOCIATION_IDENTIFIER =
            T.let(
              :INVALID_ASSOCIATION_IDENTIFIER,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          NO_OBJECT_ID_FROM_ASSOCIATION_IDENTIFIER =
            T.let(
              :NO_OBJECT_ID_FROM_ASSOCIATION_IDENTIFIER,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          MULTIPLE_COMPANIES_WITH_THIS_DOMAIN =
            T.let(
              :MULTIPLE_COMPANIES_WITH_THIS_DOMAIN,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          PROPERTY_DEFINITION_NOT_FOUND =
            T.let(
              :PROPERTY_DEFINITION_NOT_FOUND,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          PROPERTY_VALUE_NOT_FOUND =
            T.let(
              :PROPERTY_VALUE_NOT_FOUND,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          COULD_NOT_FIND_OWNER =
            T.let(
              :COULD_NOT_FIND_OWNER,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          MULTIPLE_OWNERS_FOUND =
            T.let(
              :MULTIPLE_OWNERS_FOUND,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          COULD_NOT_FIND_BUSINESS_UNIT =
            T.let(
              :COULD_NOT_FIND_BUSINESS_UNIT,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          COULD_NOT_PARSE_NUMBER =
            T.let(
              :COULD_NOT_PARSE_NUMBER,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          COULD_NOT_PARSE_DATE =
            T.let(
              :COULD_NOT_PARSE_DATE,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          COULD_NOT_PARSE_TERM =
            T.let(
              :COULD_NOT_PARSE_TERM,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          OUTSIDE_VALID_TIME_RANGE =
            T.let(
              :OUTSIDE_VALID_TIME_RANGE,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          OUTSIDE_VALID_TERM_RANGE =
            T.let(
              :OUTSIDE_VALID_TERM_RANGE,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          COULD_NOT_PARSE_ROW =
            T.let(
              :COULD_NOT_PARSE_ROW,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_ENUMERATION_OPTION =
            T.let(
              :INVALID_ENUMERATION_OPTION,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          AMBIGUOUS_ENUMERATION_OPTION =
            T.let(
              :AMBIGUOUS_ENUMERATION_OPTION,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          FAILED_VALIDATION =
            T.let(
              :FAILED_VALIDATION,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          FAILED_TO_CREATE_ASSOCIATION =
            T.let(
              :FAILED_TO_CREATE_ASSOCIATION,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          ASSOCIATION_LIMIT_EXCEEDED =
            T.let(
              :ASSOCIATION_LIMIT_EXCEEDED,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          FILE_NOT_FOUND =
            T.let(
              :FILE_NOT_FOUND,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_COLUMN_CONFIGURATION =
            T.let(
              :INVALID_COLUMN_CONFIGURATION,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_FILE_TYPE =
            T.let(
              :INVALID_FILE_TYPE,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_SPREADSHEET =
            T.let(
              :INVALID_SPREADSHEET,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_SHEET_COUNT =
            T.let(
              :INVALID_SHEET_COUNT,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          FAILED_TO_PROCESS_OBJECT_WITH_EMPTY_PROPERTY_VALUES =
            T.let(
              :FAILED_TO_PROCESS_OBJECT_WITH_EMPTY_PROPERTY_VALUES,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          UNKNOWN_BAD_REQUEST =
            T.let(
              :UNKNOWN_BAD_REQUEST,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          GDPR_BLACKLISTED_EMAIL =
            T.let(
              :GDPR_BLACKLISTED_EMAIL,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_ASSOCIATION_ID =
            T.let(
              :DUPLICATE_ASSOCIATION_ID,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          LIMIT_EXCEEDED =
            T.let(
              :LIMIT_EXCEEDED,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          PORTAL_WIDE_CUSTOM_OBJECT_LIMIT_EXCEEDED =
            T.let(
              :PORTAL_WIDE_CUSTOM_OBJECT_LIMIT_EXCEEDED,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_ALTERNATE_ID =
            T.let(
              :INVALID_ALTERNATE_ID,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_EMAIL =
            T.let(
              :INVALID_EMAIL,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          SECONDARY_EMAIL_WRITE_FAILURE =
            T.let(
              :SECONDARY_EMAIL_WRITE_FAILURE,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_DOMAIN =
            T.let(
              :INVALID_DOMAIN,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_ROW_CONTENT =
            T.let(
              :DUPLICATE_ROW_CONTENT,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_NUMBER_SIZE =
            T.let(
              :INVALID_NUMBER_SIZE,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          UNKNOWN_ERROR =
            T.let(
              :UNKNOWN_ERROR,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          FAILED_TO_OPT_OUT_CONTACT =
            T.let(
              :FAILED_TO_OPT_OUT_CONTACT,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_REQUIRED_PROPERTY =
            T.let(
              :INVALID_REQUIRED_PROPERTY,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          MISSING_REQUIRED_PROPERTY =
            T.let(
              :MISSING_REQUIRED_PROPERTY,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_ALTERNATE_ID =
            T.let(
              :DUPLICATE_ALTERNATE_ID,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_OBJECT_ID =
            T.let(
              :DUPLICATE_OBJECT_ID,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_UNIQUE_PROPERTY_VALUE =
            T.let(
              :DUPLICATE_UNIQUE_PROPERTY_VALUE,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          UNKNOWN_ASSOCIATION_RECORD_ID =
            T.let(
              :UNKNOWN_ASSOCIATION_RECORD_ID,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_RECORD_ID =
            T.let(
              :INVALID_RECORD_ID,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_RECORD_ID =
            T.let(
              :DUPLICATE_RECORD_ID,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_CUSTOM_PROPERTY_VALIDATION =
            T.let(
              :INVALID_CUSTOM_PROPERTY_VALIDATION,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          CREATE_ONLY_IMPORT =
            T.let(
              :CREATE_ONLY_IMPORT,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          UPDATE_ONLY_IMPORT =
            T.let(
              :UPDATE_ONLY_IMPORT,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          COLUMN_TOO_LARGE =
            T.let(
              :COLUMN_TOO_LARGE,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          ROW_DATA_TOO_LARGE =
            T.let(
              :ROW_DATA_TOO_LARGE,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          MISSING_EVENT_TIMESTAMP =
            T.let(
              :MISSING_EVENT_TIMESTAMP,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_EVENT_TIMESTAMP =
            T.let(
              :INVALID_EVENT_TIMESTAMP,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_EVENT =
            T.let(
              :INVALID_EVENT,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          DUPLICATE_EVENT =
            T.let(
              :DUPLICATE_EVENT,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          MISSING_EVENT_DEFINITION =
            T.let(
              :MISSING_EVENT_DEFINITION,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          INVALID_ASSOCIATION_KEY =
            T.let(
              :INVALID_ASSOCIATION_KEY,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          ASSOCIATION_RECORD_NOT_FOUND =
            T.let(
              :ASSOCIATION_RECORD_NOT_FOUND,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          MISSING_OBJECT_DEFINITION =
            T.let(
              :MISSING_OBJECT_DEFINITION,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          ASSOCIATION_LABEL_NOT_FOUND =
            T.let(
              :ASSOCIATION_LABEL_NOT_FOUND,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )
          MANY_ERRORS_IN_ROW =
            T.let(
              :MANY_ERRORS_IN_ROW,
              HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicImportError::ErrorType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ObjectType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::CRM::PublicImportError::ObjectType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTACT =
            T.let(
              :CONTACT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          COMPANY =
            T.let(
              :COMPANY,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          DEAL =
            T.let(
              :DEAL,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          ENGAGEMENT =
            T.let(
              :ENGAGEMENT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          TICKET =
            T.let(
              :TICKET,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          OWNER =
            T.let(
              :OWNER,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PRODUCT =
            T.let(
              :PRODUCT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          LINE_ITEM =
            T.let(
              :LINE_ITEM,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          BET_DELIVERABLE_SERVICE =
            T.let(
              :BET_DELIVERABLE_SERVICE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CONTENT =
            T.let(
              :CONTENT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CONVERSATION =
            T.let(
              :CONVERSATION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          BET_ALERT =
            T.let(
              :BET_ALERT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PORTAL =
            T.let(
              :PORTAL,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          QUOTE =
            T.let(
              :QUOTE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          FORM_SUBMISSION_INBOUNDDB =
            T.let(
              :FORM_SUBMISSION_INBOUNDDB,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          QUOTA =
            T.let(
              :QUOTA,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          UNSUBSCRIBE =
            T.let(
              :UNSUBSCRIBE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          COMMUNICATION =
            T.let(
              :COMMUNICATION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          FEEDBACK_SUBMISSION =
            T.let(
              :FEEDBACK_SUBMISSION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          ATTRIBUTION =
            T.let(
              :ATTRIBUTION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SALESFORCE_SYNC_ERROR =
            T.let(
              :SALESFORCE_SYNC_ERROR,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          RESTORABLE_CRM_OBJECT =
            T.let(
              :RESTORABLE_CRM_OBJECT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          HUB =
            T.let(
              :HUB,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PRODUCT_OR_FOLDER =
            T.let(
              :PRODUCT_OR_FOLDER,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          TASK =
            T.let(
              :TASK,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          FORM =
            T.let(
              :FORM,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          MARKETING_EMAIL =
            T.let(
              :MARKETING_EMAIL,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          AD_ACCOUNT =
            T.let(
              :AD_ACCOUNT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          AD_CAMPAIGN =
            T.let(
              :AD_CAMPAIGN,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          AD_GROUP =
            T.let(
              :AD_GROUP,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          AD =
            T.let(
              :AD,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          KEYWORD =
            T.let(
              :KEYWORD,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CAMPAIGN =
            T.let(
              :CAMPAIGN,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SOCIAL_CHANNEL =
            T.let(
              :SOCIAL_CHANNEL,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SOCIAL_POST =
            T.let(
              :SOCIAL_POST,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          IMPORT =
            T.let(
              :IMPORT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          EXPORT =
            T.let(
              :EXPORT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CTA =
            T.let(
              :CTA,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          TASK_TEMPLATE =
            T.let(
              :TASK_TEMPLATE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW =
            T.let(
              :AUTOMATION_PLATFORM_FLOW,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          OBJECT_LIST =
            T.let(
              :OBJECT_LIST,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          NOTE =
            T.let(
              :NOTE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          MEETING_EVENT =
            T.let(
              :MEETING_EVENT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CALL =
            T.let(
              :CALL,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PUBLISHING_TASK =
            T.let(
              :PUBLISHING_TASK,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CONVERSATION_SESSION =
            T.let(
              :CONVERSATION_SESSION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CONTACT_CREATE_ATTRIBUTION =
            T.let(
              :CONTACT_CREATE_ATTRIBUTION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :INVOICE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          MARKETING_EVENT =
            T.let(
              :MARKETING_EVENT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CONVERSATION_INBOX =
            T.let(
              :CONVERSATION_INBOX,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CHATFLOW =
            T.let(
              :CHATFLOW,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          MEDIA_BRIDGE =
            T.let(
              :MEDIA_BRIDGE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SEQUENCE =
            T.let(
              :SEQUENCE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SEQUENCE_STEP =
            T.let(
              :SEQUENCE_STEP,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          FORECAST =
            T.let(
              :FORECAST,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SNIPPET =
            T.let(
              :SNIPPET,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :TEMPLATE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          DEAL_CREATE_ATTRIBUTION =
            T.let(
              :DEAL_CREATE_ATTRIBUTION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          QUOTE_TEMPLATE =
            T.let(
              :QUOTE_TEMPLATE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          QUOTE_MODULE =
            T.let(
              :QUOTE_MODULE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          QUOTE_MODULE_FIELD =
            T.let(
              :QUOTE_MODULE_FIELD,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          QUOTE_FIELD =
            T.let(
              :QUOTE_FIELD,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SEQUENCE_ENROLLMENT =
            T.let(
              :SEQUENCE_ENROLLMENT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :SUBSCRIPTION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          ACCEPTANCE_TEST =
            T.let(
              :ACCEPTANCE_TEST,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SOCIAL_BROADCAST =
            T.let(
              :SOCIAL_BROADCAST,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          DEAL_SPLIT =
            T.let(
              :DEAL_SPLIT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          DEAL_REGISTRATION =
            T.let(
              :DEAL_REGISTRATION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          GOAL_TARGET =
            T.let(
              :GOAL_TARGET,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          GOAL_TARGET_GROUP =
            T.let(
              :GOAL_TARGET_GROUP,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PORTAL_OBJECT_SYNC_MESSAGE =
            T.let(
              :PORTAL_OBJECT_SYNC_MESSAGE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          FILE_MANAGER_FILE =
            T.let(
              :FILE_MANAGER_FILE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          FILE_MANAGER_FOLDER =
            T.let(
              :FILE_MANAGER_FOLDER,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SEQUENCE_STEP_ENROLLMENT =
            T.let(
              :SEQUENCE_STEP_ENROLLMENT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          APPROVAL =
            T.let(
              :APPROVAL,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          APPROVAL_STEP =
            T.let(
              :APPROVAL_STEP,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CTA_VARIANT =
            T.let(
              :CTA_VARIANT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SALES_DOCUMENT =
            T.let(
              :SALES_DOCUMENT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          DISCOUNT =
            T.let(
              :DISCOUNT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          FEE =
            T.let(
              :FEE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          TAX =
            T.let(
              :TAX,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          MARKETING_CALENDAR =
            T.let(
              :MARKETING_CALENDAR,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PERMISSIONS_TESTING =
            T.let(
              :PERMISSIONS_TESTING,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PRIVACY_SCANNER_COOKIE =
            T.let(
              :PRIVACY_SCANNER_COOKIE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          DATA_SYNC_STATE =
            T.let(
              :DATA_SYNC_STATE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          WEB_INTERACTIVE =
            T.let(
              :WEB_INTERACTIVE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PLAYBOOK =
            T.let(
              :PLAYBOOK,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          FOLDER =
            T.let(
              :FOLDER,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PLAYBOOK_QUESTION =
            T.let(
              :PLAYBOOK_QUESTION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION =
            T.let(
              :PLAYBOOK_SUBMISSION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PLAYBOOK_SUBMISSION_ANSWER =
            T.let(
              :PLAYBOOK_SUBMISSION_ANSWER,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          COMMERCE_PAYMENT =
            T.let(
              :COMMERCE_PAYMENT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          GSC_PROPERTY =
            T.let(
              :GSC_PROPERTY,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SOX_PROTECTED_DUMMY_TYPE =
            T.let(
              :SOX_PROTECTED_DUMMY_TYPE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          BLOG_LISTING_PAGE =
            T.let(
              :BLOG_LISTING_PAGE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          QUARANTINED_SUBMISSION =
            T.let(
              :QUARANTINED_SUBMISSION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE =
            T.let(
              :PAYMENT_SCHEDULE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PAYMENT_SCHEDULE_INSTALLMENT =
            T.let(
              :PAYMENT_SCHEDULE_INSTALLMENT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          MARKETING_CAMPAIGN_UTM =
            T.let(
              :MARKETING_CAMPAIGN_UTM,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          DISCOUNT_TEMPLATE =
            T.let(
              :DISCOUNT_TEMPLATE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          DISCOUNT_CODE =
            T.let(
              :DISCOUNT_CODE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          FEEDBACK_SURVEY =
            T.let(
              :FEEDBACK_SURVEY,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CMS_URL =
            T.let(
              :CMS_URL,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SALES_TASK =
            T.let(
              :SALES_TASK,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SALES_WORKLOAD =
            T.let(
              :SALES_WORKLOAD,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          USER =
            T.let(
              :USER,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          POSTAL_MAIL =
            T.let(
              :POSTAL_MAIL,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SCHEMAS_BACKEND_TEST =
            T.let(
              :SCHEMAS_BACKEND_TEST,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PAYMENT_LINK =
            T.let(
              :PAYMENT_LINK,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SUBMISSION_TAG =
            T.let(
              :SUBMISSION_TAG,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CAMPAIGN_STEP =
            T.let(
              :CAMPAIGN_STEP,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SCHEDULING_PAGE =
            T.let(
              :SCHEDULING_PAGE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SOX_PROTECTED_TEST_TYPE =
            T.let(
              :SOX_PROTECTED_TEST_TYPE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          ORDER =
            T.let(
              :ORDER,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          MARKETING_SMS =
            T.let(
              :MARKETING_SMS,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PARTNER_ACCOUNT =
            T.let(
              :PARTNER_ACCOUNT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE =
            T.let(
              :CAMPAIGN_TEMPLATE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CAMPAIGN_TEMPLATE_STEP =
            T.let(
              :CAMPAIGN_TEMPLATE_STEP,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PLAYLIST =
            T.let(
              :PLAYLIST,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CLIP =
            T.let(
              :CLIP,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CAMPAIGN_BUDGET_ITEM =
            T.let(
              :CAMPAIGN_BUDGET_ITEM,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CAMPAIGN_SPEND_ITEM =
            T.let(
              :CAMPAIGN_SPEND_ITEM,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          MIC =
            T.let(
              :MIC,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CONTENT_AUDIT =
            T.let(
              :CONTENT_AUDIT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CONTENT_AUDIT_PAGE =
            T.let(
              :CONTENT_AUDIT_PAGE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PLAYLIST_FOLDER =
            T.let(
              :PLAYLIST_FOLDER,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          LEAD =
            T.let(
              :LEAD,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          ABANDONED_CART =
            T.let(
              :ABANDONED_CART,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          EXTERNAL_WEB_URL =
            T.let(
              :EXTERNAL_WEB_URL,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          VIEW =
            T.let(
              :VIEW,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          VIEW_BLOCK =
            T.let(
              :VIEW_BLOCK,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          ROSTER =
            T.let(
              :ROSTER,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CART =
            T.let(
              :CART,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          AUTOMATION_PLATFORM_FLOW_ACTION =
            T.let(
              :AUTOMATION_PLATFORM_FLOW_ACTION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SOCIAL_PROFILE =
            T.let(
              :SOCIAL_PROFILE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PARTNER_CLIENT =
            T.let(
              :PARTNER_CLIENT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          ROSTER_MEMBER =
            T.let(
              :ROSTER_MEMBER,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          MARKETING_EVENT_ATTENDANCE =
            T.let(
              :MARKETING_EVENT_ATTENDANCE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          ALL_PAGES =
            T.let(
              :ALL_PAGES,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          AI_FORECAST =
            T.let(
              :AI_FORECAST,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CRM_PIPELINES_DUMMY_TYPE =
            T.let(
              :CRM_PIPELINES_DUMMY_TYPE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PROPERTY_INFO =
            T.let(
              :PROPERTY_INFO,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          DATA_PRIVACY_CONSENT =
            T.let(
              :DATA_PRIVACY_CONSENT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          GOAL_TEMPLATE =
            T.let(
              :GOAL_TEMPLATE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SCORE_CONFIGURATION =
            T.let(
              :SCORE_CONFIGURATION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          AUDIENCE =
            T.let(
              :AUDIENCE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PARTNER_CLIENT_REVENUE =
            T.let(
              :PARTNER_CLIENT_REVENUE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          AUTOMATION_JOURNEY =
            T.let(
              :AUTOMATION_JOURNEY,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          COMBO_EVENT_CONFIGURATION =
            T.let(
              :COMBO_EVENT_CONFIGURATION,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CRM_OBJECTS_DUMMY_TYPE =
            T.let(
              :CRM_OBJECTS_DUMMY_TYPE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          CASE_STUDY =
            T.let(
              :CASE_STUDY,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          SERVICE =
            T.let(
              :SERVICE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PODCAST_EPISODE =
            T.let(
              :PODCAST_EPISODE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PARTNER_SERVICE =
            T.let(
              :PARTNER_SERVICE,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          PROSPECTING_AGENT_CONTACT_ASSIGNMENT =
            T.let(
              :PROSPECTING_AGENT_CONTACT_ASSIGNMENT,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::PublicImportError::ObjectType::TaggedSymbol
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
