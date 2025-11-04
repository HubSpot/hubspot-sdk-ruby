# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Imports#list_errors
      class PublicImportError < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute error_type
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicImportError::ErrorType]
        required :error_type, enum: -> { HubspotSDK::Crm::PublicImportError::ErrorType }, api_name: :errorType

        # @!attribute source_data
        #
        #   @return [HubspotSDK::Models::Crm::ImportRowCore]
        required :source_data, -> { HubspotSDK::Crm::ImportRowCore }, api_name: :sourceData

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String, api_name: :errorMessage

        # @!attribute extra_context
        #
        #   @return [String, nil]
        optional :extra_context, String, api_name: :extraContext

        # @!attribute invalid_property_value
        #   Represents a single custom property of a marketing event, storing its name,
        #   value, metadata (like source, timestamp, and sensitivity), and related audit
        #   information for tracking changes.
        #
        #   @return [HubspotSDK::Models::Marketing::PropertyValue, nil]
        optional :invalid_property_value,
                 -> { HubspotSDK::Marketing::PropertyValue },
                 api_name: :invalidPropertyValue

        # @!attribute invalid_value
        #
        #   @return [String, nil]
        optional :invalid_value, String, api_name: :invalidValue

        # @!attribute invalid_value_to_display
        #
        #   @return [String, nil]
        optional :invalid_value_to_display, String, api_name: :invalidValueToDisplay

        # @!attribute known_column_number
        #
        #   @return [Integer, nil]
        optional :known_column_number, Integer, api_name: :knownColumnNumber

        # @!attribute object_type
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicImportError::ObjectType, nil]
        optional :object_type,
                 enum: -> {
                   HubspotSDK::Crm::PublicImportError::ObjectType
                 },
                 api_name: :objectType

        # @!attribute object_type_id
        #
        #   @return [String, nil]
        optional :object_type_id, String, api_name: :objectTypeId

        # @!method initialize(id:, created_at:, error_type:, source_data:, error_message: nil, extra_context: nil, invalid_property_value: nil, invalid_value: nil, invalid_value_to_display: nil, known_column_number: nil, object_type: nil, object_type_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicImportError} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Integer]
        #
        #   @param error_type [Symbol, HubspotSDK::Models::Crm::PublicImportError::ErrorType]
        #
        #   @param source_data [HubspotSDK::Models::Crm::ImportRowCore]
        #
        #   @param error_message [String]
        #
        #   @param extra_context [String]
        #
        #   @param invalid_property_value [HubspotSDK::Models::Marketing::PropertyValue] Represents a single custom property of a marketing event, storing its name, valu
        #
        #   @param invalid_value [String]
        #
        #   @param invalid_value_to_display [String]
        #
        #   @param known_column_number [Integer]
        #
        #   @param object_type [Symbol, HubspotSDK::Models::Crm::PublicImportError::ObjectType]
        #
        #   @param object_type_id [String]

        # @see HubspotSDK::Models::Crm::PublicImportError#error_type
        module ErrorType
          extend HubspotSDK::Internal::Type::Enum

          INCORRECT_NUMBER_OF_COLUMNS = :INCORRECT_NUMBER_OF_COLUMNS
          INVALID_OBJECT_ID = :INVALID_OBJECT_ID
          INVALID_ASSOCIATION_IDENTIFIER = :INVALID_ASSOCIATION_IDENTIFIER
          NO_OBJECT_ID_FROM_ASSOCIATION_IDENTIFIER = :NO_OBJECT_ID_FROM_ASSOCIATION_IDENTIFIER
          MULTIPLE_COMPANIES_WITH_THIS_DOMAIN = :MULTIPLE_COMPANIES_WITH_THIS_DOMAIN
          PROPERTY_DEFINITION_NOT_FOUND = :PROPERTY_DEFINITION_NOT_FOUND
          PROPERTY_VALUE_NOT_FOUND = :PROPERTY_VALUE_NOT_FOUND
          COULD_NOT_FIND_OWNER = :COULD_NOT_FIND_OWNER
          MULTIPLE_OWNERS_FOUND = :MULTIPLE_OWNERS_FOUND
          COULD_NOT_FIND_BUSINESS_UNIT = :COULD_NOT_FIND_BUSINESS_UNIT
          COULD_NOT_PARSE_NUMBER = :COULD_NOT_PARSE_NUMBER
          COULD_NOT_PARSE_DATE = :COULD_NOT_PARSE_DATE
          COULD_NOT_PARSE_TERM = :COULD_NOT_PARSE_TERM
          OUTSIDE_VALID_TIME_RANGE = :OUTSIDE_VALID_TIME_RANGE
          OUTSIDE_VALID_TERM_RANGE = :OUTSIDE_VALID_TERM_RANGE
          COULD_NOT_PARSE_ROW = :COULD_NOT_PARSE_ROW
          INVALID_ENUMERATION_OPTION = :INVALID_ENUMERATION_OPTION
          AMBIGUOUS_ENUMERATION_OPTION = :AMBIGUOUS_ENUMERATION_OPTION
          FAILED_VALIDATION = :FAILED_VALIDATION
          FAILED_TO_CREATE_ASSOCIATION = :FAILED_TO_CREATE_ASSOCIATION
          ASSOCIATION_LIMIT_EXCEEDED = :ASSOCIATION_LIMIT_EXCEEDED
          FILE_NOT_FOUND = :FILE_NOT_FOUND
          INVALID_COLUMN_CONFIGURATION = :INVALID_COLUMN_CONFIGURATION
          INVALID_FILE_TYPE = :INVALID_FILE_TYPE
          INVALID_SPREADSHEET = :INVALID_SPREADSHEET
          INVALID_SHEET_COUNT = :INVALID_SHEET_COUNT
          FAILED_TO_PROCESS_OBJECT_WITH_EMPTY_PROPERTY_VALUES =
            :FAILED_TO_PROCESS_OBJECT_WITH_EMPTY_PROPERTY_VALUES
          UNKNOWN_BAD_REQUEST = :UNKNOWN_BAD_REQUEST
          GDPR_BLACKLISTED_EMAIL = :GDPR_BLACKLISTED_EMAIL
          DUPLICATE_ASSOCIATION_ID = :DUPLICATE_ASSOCIATION_ID
          LIMIT_EXCEEDED = :LIMIT_EXCEEDED
          PORTAL_WIDE_CUSTOM_OBJECT_LIMIT_EXCEEDED = :PORTAL_WIDE_CUSTOM_OBJECT_LIMIT_EXCEEDED
          INVALID_ALTERNATE_ID = :INVALID_ALTERNATE_ID
          INVALID_EMAIL = :INVALID_EMAIL
          SECONDARY_EMAIL_WRITE_FAILURE = :SECONDARY_EMAIL_WRITE_FAILURE
          INVALID_DOMAIN = :INVALID_DOMAIN
          DUPLICATE_ROW_CONTENT = :DUPLICATE_ROW_CONTENT
          INVALID_NUMBER_SIZE = :INVALID_NUMBER_SIZE
          UNKNOWN_ERROR = :UNKNOWN_ERROR
          FAILED_TO_OPT_OUT_CONTACT = :FAILED_TO_OPT_OUT_CONTACT
          INVALID_REQUIRED_PROPERTY = :INVALID_REQUIRED_PROPERTY
          MISSING_REQUIRED_PROPERTY = :MISSING_REQUIRED_PROPERTY
          DUPLICATE_ALTERNATE_ID = :DUPLICATE_ALTERNATE_ID
          DUPLICATE_OBJECT_ID = :DUPLICATE_OBJECT_ID
          DUPLICATE_UNIQUE_PROPERTY_VALUE = :DUPLICATE_UNIQUE_PROPERTY_VALUE
          UNKNOWN_ASSOCIATION_RECORD_ID = :UNKNOWN_ASSOCIATION_RECORD_ID
          INVALID_RECORD_ID = :INVALID_RECORD_ID
          DUPLICATE_RECORD_ID = :DUPLICATE_RECORD_ID
          INVALID_CUSTOM_PROPERTY_VALIDATION = :INVALID_CUSTOM_PROPERTY_VALIDATION
          CREATE_ONLY_IMPORT = :CREATE_ONLY_IMPORT
          UPDATE_ONLY_IMPORT = :UPDATE_ONLY_IMPORT
          COLUMN_TOO_LARGE = :COLUMN_TOO_LARGE
          ROW_DATA_TOO_LARGE = :ROW_DATA_TOO_LARGE
          MISSING_EVENT_TIMESTAMP = :MISSING_EVENT_TIMESTAMP
          INVALID_EVENT_TIMESTAMP = :INVALID_EVENT_TIMESTAMP
          INVALID_EVENT = :INVALID_EVENT
          DUPLICATE_EVENT = :DUPLICATE_EVENT
          MISSING_EVENT_DEFINITION = :MISSING_EVENT_DEFINITION
          INVALID_ASSOCIATION_KEY = :INVALID_ASSOCIATION_KEY
          ASSOCIATION_RECORD_NOT_FOUND = :ASSOCIATION_RECORD_NOT_FOUND
          MISSING_OBJECT_DEFINITION = :MISSING_OBJECT_DEFINITION
          ASSOCIATION_LABEL_NOT_FOUND = :ASSOCIATION_LABEL_NOT_FOUND
          MANY_ERRORS_IN_ROW = :MANY_ERRORS_IN_ROW

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Crm::PublicImportError#object_type
        module ObjectType
          extend HubspotSDK::Internal::Type::Enum

          CONTACT = :CONTACT
          COMPANY = :COMPANY
          DEAL = :DEAL
          ENGAGEMENT = :ENGAGEMENT
          TICKET = :TICKET
          OWNER = :OWNER
          PRODUCT = :PRODUCT
          LINE_ITEM = :LINE_ITEM
          BET_DELIVERABLE_SERVICE = :BET_DELIVERABLE_SERVICE
          CONTENT = :CONTENT
          CONVERSATION = :CONVERSATION
          BET_ALERT = :BET_ALERT
          PORTAL = :PORTAL
          QUOTE = :QUOTE
          FORM_SUBMISSION_INBOUNDDB = :FORM_SUBMISSION_INBOUNDDB
          QUOTA = :QUOTA
          UNSUBSCRIBE = :UNSUBSCRIBE
          COMMUNICATION = :COMMUNICATION
          FEEDBACK_SUBMISSION = :FEEDBACK_SUBMISSION
          ATTRIBUTION = :ATTRIBUTION
          SALESFORCE_SYNC_ERROR = :SALESFORCE_SYNC_ERROR
          RESTORABLE_CRM_OBJECT = :RESTORABLE_CRM_OBJECT
          HUB = :HUB
          LANDING_PAGE = :LANDING_PAGE
          PRODUCT_OR_FOLDER = :PRODUCT_OR_FOLDER
          TASK = :TASK
          FORM = :FORM
          MARKETING_EMAIL = :MARKETING_EMAIL
          AD_ACCOUNT = :AD_ACCOUNT
          AD_CAMPAIGN = :AD_CAMPAIGN
          AD_GROUP = :AD_GROUP
          AD = :AD
          KEYWORD = :KEYWORD
          CAMPAIGN = :CAMPAIGN
          SOCIAL_CHANNEL = :SOCIAL_CHANNEL
          SOCIAL_POST = :SOCIAL_POST
          SITE_PAGE = :SITE_PAGE
          BLOG_POST = :BLOG_POST
          IMPORT = :IMPORT
          EXPORT = :EXPORT
          CTA = :CTA
          TASK_TEMPLATE = :TASK_TEMPLATE
          AUTOMATION_PLATFORM_FLOW = :AUTOMATION_PLATFORM_FLOW
          OBJECT_LIST = :OBJECT_LIST
          NOTE = :NOTE
          MEETING_EVENT = :MEETING_EVENT
          CALL = :CALL
          EMAIL = :EMAIL
          PUBLISHING_TASK = :PUBLISHING_TASK
          CONVERSATION_SESSION = :CONVERSATION_SESSION
          CONTACT_CREATE_ATTRIBUTION = :CONTACT_CREATE_ATTRIBUTION
          INVOICE = :INVOICE
          MARKETING_EVENT = :MARKETING_EVENT
          CONVERSATION_INBOX = :CONVERSATION_INBOX
          CHATFLOW = :CHATFLOW
          MEDIA_BRIDGE = :MEDIA_BRIDGE
          SEQUENCE = :SEQUENCE
          SEQUENCE_STEP = :SEQUENCE_STEP
          FORECAST = :FORECAST
          SNIPPET = :SNIPPET
          TEMPLATE = :TEMPLATE
          DEAL_CREATE_ATTRIBUTION = :DEAL_CREATE_ATTRIBUTION
          QUOTE_TEMPLATE = :QUOTE_TEMPLATE
          QUOTE_MODULE = :QUOTE_MODULE
          QUOTE_MODULE_FIELD = :QUOTE_MODULE_FIELD
          QUOTE_FIELD = :QUOTE_FIELD
          SEQUENCE_ENROLLMENT = :SEQUENCE_ENROLLMENT
          SUBSCRIPTION = :SUBSCRIPTION
          ACCEPTANCE_TEST = :ACCEPTANCE_TEST
          SOCIAL_BROADCAST = :SOCIAL_BROADCAST
          DEAL_SPLIT = :DEAL_SPLIT
          DEAL_REGISTRATION = :DEAL_REGISTRATION
          GOAL_TARGET = :GOAL_TARGET
          GOAL_TARGET_GROUP = :GOAL_TARGET_GROUP
          PORTAL_OBJECT_SYNC_MESSAGE = :PORTAL_OBJECT_SYNC_MESSAGE
          FILE_MANAGER_FILE = :FILE_MANAGER_FILE
          FILE_MANAGER_FOLDER = :FILE_MANAGER_FOLDER
          SEQUENCE_STEP_ENROLLMENT = :SEQUENCE_STEP_ENROLLMENT
          APPROVAL = :APPROVAL
          APPROVAL_STEP = :APPROVAL_STEP
          CTA_VARIANT = :CTA_VARIANT
          SALES_DOCUMENT = :SALES_DOCUMENT
          DISCOUNT = :DISCOUNT
          FEE = :FEE
          TAX = :TAX
          MARKETING_CALENDAR = :MARKETING_CALENDAR
          PERMISSIONS_TESTING = :PERMISSIONS_TESTING
          PRIVACY_SCANNER_COOKIE = :PRIVACY_SCANNER_COOKIE
          DATA_SYNC_STATE = :DATA_SYNC_STATE
          WEB_INTERACTIVE = :WEB_INTERACTIVE
          PLAYBOOK = :PLAYBOOK
          FOLDER = :FOLDER
          PLAYBOOK_QUESTION = :PLAYBOOK_QUESTION
          PLAYBOOK_SUBMISSION = :PLAYBOOK_SUBMISSION
          PLAYBOOK_SUBMISSION_ANSWER = :PLAYBOOK_SUBMISSION_ANSWER
          COMMERCE_PAYMENT = :COMMERCE_PAYMENT
          GSC_PROPERTY = :GSC_PROPERTY
          SOX_PROTECTED_DUMMY_TYPE = :SOX_PROTECTED_DUMMY_TYPE
          BLOG_LISTING_PAGE = :BLOG_LISTING_PAGE
          QUARANTINED_SUBMISSION = :QUARANTINED_SUBMISSION
          PAYMENT_SCHEDULE = :PAYMENT_SCHEDULE
          PAYMENT_SCHEDULE_INSTALLMENT = :PAYMENT_SCHEDULE_INSTALLMENT
          MARKETING_CAMPAIGN_UTM = :MARKETING_CAMPAIGN_UTM
          DISCOUNT_TEMPLATE = :DISCOUNT_TEMPLATE
          DISCOUNT_CODE = :DISCOUNT_CODE
          FEEDBACK_SURVEY = :FEEDBACK_SURVEY
          CMS_URL = :CMS_URL
          SALES_TASK = :SALES_TASK
          SALES_WORKLOAD = :SALES_WORKLOAD
          USER = :USER
          POSTAL_MAIL = :POSTAL_MAIL
          SCHEMAS_BACKEND_TEST = :SCHEMAS_BACKEND_TEST
          PAYMENT_LINK = :PAYMENT_LINK
          SUBMISSION_TAG = :SUBMISSION_TAG
          CAMPAIGN_STEP = :CAMPAIGN_STEP
          SCHEDULING_PAGE = :SCHEDULING_PAGE
          SOX_PROTECTED_TEST_TYPE = :SOX_PROTECTED_TEST_TYPE
          ORDER = :ORDER
          MARKETING_SMS = :MARKETING_SMS
          PARTNER_ACCOUNT = :PARTNER_ACCOUNT
          CAMPAIGN_TEMPLATE = :CAMPAIGN_TEMPLATE
          CAMPAIGN_TEMPLATE_STEP = :CAMPAIGN_TEMPLATE_STEP
          PLAYLIST = :PLAYLIST
          CLIP = :CLIP
          CAMPAIGN_BUDGET_ITEM = :CAMPAIGN_BUDGET_ITEM
          CAMPAIGN_SPEND_ITEM = :CAMPAIGN_SPEND_ITEM
          MIC = :MIC
          CONTENT_AUDIT = :CONTENT_AUDIT
          CONTENT_AUDIT_PAGE = :CONTENT_AUDIT_PAGE
          PLAYLIST_FOLDER = :PLAYLIST_FOLDER
          LEAD = :LEAD
          ABANDONED_CART = :ABANDONED_CART
          EXTERNAL_WEB_URL = :EXTERNAL_WEB_URL
          VIEW = :VIEW
          VIEW_BLOCK = :VIEW_BLOCK
          ROSTER = :ROSTER
          CART = :CART
          AUTOMATION_PLATFORM_FLOW_ACTION = :AUTOMATION_PLATFORM_FLOW_ACTION
          SOCIAL_PROFILE = :SOCIAL_PROFILE
          PARTNER_CLIENT = :PARTNER_CLIENT
          ROSTER_MEMBER = :ROSTER_MEMBER
          MARKETING_EVENT_ATTENDANCE = :MARKETING_EVENT_ATTENDANCE
          ALL_PAGES = :ALL_PAGES
          AI_FORECAST = :AI_FORECAST
          CRM_PIPELINES_DUMMY_TYPE = :CRM_PIPELINES_DUMMY_TYPE
          KNOWLEDGE_ARTICLE = :KNOWLEDGE_ARTICLE
          PROPERTY_INFO = :PROPERTY_INFO
          DATA_PRIVACY_CONSENT = :DATA_PRIVACY_CONSENT
          GOAL_TEMPLATE = :GOAL_TEMPLATE
          SCORE_CONFIGURATION = :SCORE_CONFIGURATION
          AUDIENCE = :AUDIENCE
          PARTNER_CLIENT_REVENUE = :PARTNER_CLIENT_REVENUE
          AUTOMATION_JOURNEY = :AUTOMATION_JOURNEY
          COMBO_EVENT_CONFIGURATION = :COMBO_EVENT_CONFIGURATION
          CRM_OBJECTS_DUMMY_TYPE = :CRM_OBJECTS_DUMMY_TYPE
          CASE_STUDY = :CASE_STUDY
          SERVICE = :SERVICE
          PODCAST_EPISODE = :PODCAST_EPISODE
          PARTNER_SERVICE = :PARTNER_SERVICE
          PROSPECTING_AGENT_CONTACT_ASSIGNMENT = :PROSPECTING_AGENT_CONTACT_ASSIGNMENT
          UNKNOWN = :UNKNOWN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
