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

          AMBIGUOUS_ENUMERATION_OPTION = :AMBIGUOUS_ENUMERATION_OPTION
          ASSOCIATION_LABEL_NOT_FOUND = :ASSOCIATION_LABEL_NOT_FOUND
          ASSOCIATION_LIMIT_EXCEEDED = :ASSOCIATION_LIMIT_EXCEEDED
          ASSOCIATION_RECORD_NOT_FOUND = :ASSOCIATION_RECORD_NOT_FOUND
          COLUMN_TOO_LARGE = :COLUMN_TOO_LARGE
          COULD_NOT_FIND_BUSINESS_UNIT = :COULD_NOT_FIND_BUSINESS_UNIT
          COULD_NOT_FIND_OWNER = :COULD_NOT_FIND_OWNER
          COULD_NOT_PARSE_DATE = :COULD_NOT_PARSE_DATE
          COULD_NOT_PARSE_NUMBER = :COULD_NOT_PARSE_NUMBER
          COULD_NOT_PARSE_ROW = :COULD_NOT_PARSE_ROW
          COULD_NOT_PARSE_TERM = :COULD_NOT_PARSE_TERM
          CREATE_ONLY_IMPORT = :CREATE_ONLY_IMPORT
          DUPLICATE_ALTERNATE_ID = :DUPLICATE_ALTERNATE_ID
          DUPLICATE_ASSOCIATION_ID = :DUPLICATE_ASSOCIATION_ID
          DUPLICATE_EVENT = :DUPLICATE_EVENT
          DUPLICATE_OBJECT_ID = :DUPLICATE_OBJECT_ID
          DUPLICATE_RECORD_ID = :DUPLICATE_RECORD_ID
          DUPLICATE_ROW_CONTENT = :DUPLICATE_ROW_CONTENT
          DUPLICATE_UNIQUE_PROPERTY_VALUE = :DUPLICATE_UNIQUE_PROPERTY_VALUE
          FAILED_TO_CREATE_ASSOCIATION = :FAILED_TO_CREATE_ASSOCIATION
          FAILED_TO_OPT_OUT_CONTACT = :FAILED_TO_OPT_OUT_CONTACT
          FAILED_TO_PROCESS_OBJECT_WITH_EMPTY_PROPERTY_VALUES =
            :FAILED_TO_PROCESS_OBJECT_WITH_EMPTY_PROPERTY_VALUES
          FAILED_VALIDATION = :FAILED_VALIDATION
          FILE_NOT_FOUND = :FILE_NOT_FOUND
          GDPR_BLACKLISTED_EMAIL = :GDPR_BLACKLISTED_EMAIL
          INCORRECT_NUMBER_OF_COLUMNS = :INCORRECT_NUMBER_OF_COLUMNS
          INVALID_ALTERNATE_ID = :INVALID_ALTERNATE_ID
          INVALID_ASSOCIATION_IDENTIFIER = :INVALID_ASSOCIATION_IDENTIFIER
          INVALID_ASSOCIATION_KEY = :INVALID_ASSOCIATION_KEY
          INVALID_COLUMN_CONFIGURATION = :INVALID_COLUMN_CONFIGURATION
          INVALID_CUSTOM_PROPERTY_VALIDATION = :INVALID_CUSTOM_PROPERTY_VALIDATION
          INVALID_DOMAIN = :INVALID_DOMAIN
          INVALID_EMAIL = :INVALID_EMAIL
          INVALID_ENUMERATION_OPTION = :INVALID_ENUMERATION_OPTION
          INVALID_EVENT = :INVALID_EVENT
          INVALID_EVENT_TIMESTAMP = :INVALID_EVENT_TIMESTAMP
          INVALID_FILE_TYPE = :INVALID_FILE_TYPE
          INVALID_NUMBER_SIZE = :INVALID_NUMBER_SIZE
          INVALID_OBJECT_ID = :INVALID_OBJECT_ID
          INVALID_RECORD_ID = :INVALID_RECORD_ID
          INVALID_REQUIRED_PROPERTY = :INVALID_REQUIRED_PROPERTY
          INVALID_SHEET_COUNT = :INVALID_SHEET_COUNT
          INVALID_SPREADSHEET = :INVALID_SPREADSHEET
          LIMIT_EXCEEDED = :LIMIT_EXCEEDED
          MANY_ERRORS_IN_ROW = :MANY_ERRORS_IN_ROW
          MISSING_EVENT_DEFINITION = :MISSING_EVENT_DEFINITION
          MISSING_EVENT_TIMESTAMP = :MISSING_EVENT_TIMESTAMP
          MISSING_OBJECT_DEFINITION = :MISSING_OBJECT_DEFINITION
          MISSING_REQUIRED_PROPERTY = :MISSING_REQUIRED_PROPERTY
          MULTIPLE_COMPANIES_WITH_THIS_DOMAIN = :MULTIPLE_COMPANIES_WITH_THIS_DOMAIN
          MULTIPLE_OWNERS_FOUND = :MULTIPLE_OWNERS_FOUND
          NO_OBJECT_ID_FROM_ASSOCIATION_IDENTIFIER = :NO_OBJECT_ID_FROM_ASSOCIATION_IDENTIFIER
          OUTSIDE_VALID_TERM_RANGE = :OUTSIDE_VALID_TERM_RANGE
          OUTSIDE_VALID_TIME_RANGE = :OUTSIDE_VALID_TIME_RANGE
          PORTAL_WIDE_CUSTOM_OBJECT_LIMIT_EXCEEDED = :PORTAL_WIDE_CUSTOM_OBJECT_LIMIT_EXCEEDED
          PROPERTY_DEFINITION_NOT_FOUND = :PROPERTY_DEFINITION_NOT_FOUND
          PROPERTY_VALUE_NOT_FOUND = :PROPERTY_VALUE_NOT_FOUND
          ROW_DATA_TOO_LARGE = :ROW_DATA_TOO_LARGE
          SECONDARY_EMAIL_WRITE_FAILURE = :SECONDARY_EMAIL_WRITE_FAILURE
          UNKNOWN_ASSOCIATION_RECORD_ID = :UNKNOWN_ASSOCIATION_RECORD_ID
          UNKNOWN_BAD_REQUEST = :UNKNOWN_BAD_REQUEST
          UNKNOWN_ERROR = :UNKNOWN_ERROR
          UPDATE_ONLY_IMPORT = :UPDATE_ONLY_IMPORT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Crm::PublicImportError#object_type
        module ObjectType
          extend HubspotSDK::Internal::Type::Enum

          ABANDONED_CART = :ABANDONED_CART
          ACCEPTANCE_TEST = :ACCEPTANCE_TEST
          AD = :AD
          AD_ACCOUNT = :AD_ACCOUNT
          AD_CAMPAIGN = :AD_CAMPAIGN
          AD_GROUP = :AD_GROUP
          AI_FORECAST = :AI_FORECAST
          ALL_PAGES = :ALL_PAGES
          APPROVAL = :APPROVAL
          APPROVAL_STEP = :APPROVAL_STEP
          ATTRIBUTION = :ATTRIBUTION
          AUDIENCE = :AUDIENCE
          AUTOMATION_JOURNEY = :AUTOMATION_JOURNEY
          AUTOMATION_PLATFORM_FLOW = :AUTOMATION_PLATFORM_FLOW
          AUTOMATION_PLATFORM_FLOW_ACTION = :AUTOMATION_PLATFORM_FLOW_ACTION
          BET_ALERT = :BET_ALERT
          BET_DELIVERABLE_SERVICE = :BET_DELIVERABLE_SERVICE
          BLOG_LISTING_PAGE = :BLOG_LISTING_PAGE
          BLOG_POST = :BLOG_POST
          CALL = :CALL
          CAMPAIGN = :CAMPAIGN
          CAMPAIGN_BUDGET_ITEM = :CAMPAIGN_BUDGET_ITEM
          CAMPAIGN_SPEND_ITEM = :CAMPAIGN_SPEND_ITEM
          CAMPAIGN_STEP = :CAMPAIGN_STEP
          CAMPAIGN_TEMPLATE = :CAMPAIGN_TEMPLATE
          CAMPAIGN_TEMPLATE_STEP = :CAMPAIGN_TEMPLATE_STEP
          CART = :CART
          CASE_STUDY = :CASE_STUDY
          CHATFLOW = :CHATFLOW
          CLIP = :CLIP
          CMS_URL = :CMS_URL
          COMBO_EVENT_CONFIGURATION = :COMBO_EVENT_CONFIGURATION
          COMMERCE_PAYMENT = :COMMERCE_PAYMENT
          COMMUNICATION = :COMMUNICATION
          COMPANY = :COMPANY
          CONTACT = :CONTACT
          CONTACT_CREATE_ATTRIBUTION = :CONTACT_CREATE_ATTRIBUTION
          CONTENT = :CONTENT
          CONTENT_AUDIT = :CONTENT_AUDIT
          CONTENT_AUDIT_PAGE = :CONTENT_AUDIT_PAGE
          CONVERSATION = :CONVERSATION
          CONVERSATION_INBOX = :CONVERSATION_INBOX
          CONVERSATION_SESSION = :CONVERSATION_SESSION
          CRM_OBJECTS_DUMMY_TYPE = :CRM_OBJECTS_DUMMY_TYPE
          CRM_PIPELINES_DUMMY_TYPE = :CRM_PIPELINES_DUMMY_TYPE
          CTA = :CTA
          CTA_VARIANT = :CTA_VARIANT
          DATA_PRIVACY_CONSENT = :DATA_PRIVACY_CONSENT
          DATA_SYNC_STATE = :DATA_SYNC_STATE
          DEAL = :DEAL
          DEAL_CREATE_ATTRIBUTION = :DEAL_CREATE_ATTRIBUTION
          DEAL_REGISTRATION = :DEAL_REGISTRATION
          DEAL_SPLIT = :DEAL_SPLIT
          DISCOUNT = :DISCOUNT
          DISCOUNT_CODE = :DISCOUNT_CODE
          DISCOUNT_TEMPLATE = :DISCOUNT_TEMPLATE
          EMAIL = :EMAIL
          ENGAGEMENT = :ENGAGEMENT
          EXPORT = :EXPORT
          EXTERNAL_WEB_URL = :EXTERNAL_WEB_URL
          FEE = :FEE
          FEEDBACK_SUBMISSION = :FEEDBACK_SUBMISSION
          FEEDBACK_SURVEY = :FEEDBACK_SURVEY
          FILE_MANAGER_FILE = :FILE_MANAGER_FILE
          FILE_MANAGER_FOLDER = :FILE_MANAGER_FOLDER
          FOLDER = :FOLDER
          FORECAST = :FORECAST
          FORM = :FORM
          FORM_SUBMISSION_INBOUNDDB = :FORM_SUBMISSION_INBOUNDDB
          GOAL_TARGET = :GOAL_TARGET
          GOAL_TARGET_GROUP = :GOAL_TARGET_GROUP
          GOAL_TEMPLATE = :GOAL_TEMPLATE
          GSC_PROPERTY = :GSC_PROPERTY
          HUB = :HUB
          IMPORT = :IMPORT
          INVOICE = :INVOICE
          KEYWORD = :KEYWORD
          KNOWLEDGE_ARTICLE = :KNOWLEDGE_ARTICLE
          LANDING_PAGE = :LANDING_PAGE
          LEAD = :LEAD
          LINE_ITEM = :LINE_ITEM
          MARKETING_CALENDAR = :MARKETING_CALENDAR
          MARKETING_CAMPAIGN_UTM = :MARKETING_CAMPAIGN_UTM
          MARKETING_EMAIL = :MARKETING_EMAIL
          MARKETING_EVENT = :MARKETING_EVENT
          MARKETING_EVENT_ATTENDANCE = :MARKETING_EVENT_ATTENDANCE
          MARKETING_SMS = :MARKETING_SMS
          MEDIA_BRIDGE = :MEDIA_BRIDGE
          MEETING_EVENT = :MEETING_EVENT
          MIC = :MIC
          NOTE = :NOTE
          OBJECT_LIST = :OBJECT_LIST
          ORDER = :ORDER
          OWNER = :OWNER
          PARTNER_ACCOUNT = :PARTNER_ACCOUNT
          PARTNER_CLIENT = :PARTNER_CLIENT
          PARTNER_CLIENT_REVENUE = :PARTNER_CLIENT_REVENUE
          PARTNER_SERVICE = :PARTNER_SERVICE
          PAYMENT_LINK = :PAYMENT_LINK
          PAYMENT_SCHEDULE = :PAYMENT_SCHEDULE
          PAYMENT_SCHEDULE_INSTALLMENT = :PAYMENT_SCHEDULE_INSTALLMENT
          PERMISSIONS_TESTING = :PERMISSIONS_TESTING
          PLAYBOOK = :PLAYBOOK
          PLAYBOOK_QUESTION = :PLAYBOOK_QUESTION
          PLAYBOOK_SUBMISSION = :PLAYBOOK_SUBMISSION
          PLAYBOOK_SUBMISSION_ANSWER = :PLAYBOOK_SUBMISSION_ANSWER
          PLAYLIST = :PLAYLIST
          PLAYLIST_FOLDER = :PLAYLIST_FOLDER
          PODCAST_EPISODE = :PODCAST_EPISODE
          PORTAL = :PORTAL
          PORTAL_OBJECT_SYNC_MESSAGE = :PORTAL_OBJECT_SYNC_MESSAGE
          POSTAL_MAIL = :POSTAL_MAIL
          PRIVACY_SCANNER_COOKIE = :PRIVACY_SCANNER_COOKIE
          PRODUCT = :PRODUCT
          PRODUCT_OR_FOLDER = :PRODUCT_OR_FOLDER
          PROPERTY_INFO = :PROPERTY_INFO
          PROSPECTING_AGENT_CONTACT_ASSIGNMENT = :PROSPECTING_AGENT_CONTACT_ASSIGNMENT
          PUBLISHING_TASK = :PUBLISHING_TASK
          QUARANTINED_SUBMISSION = :QUARANTINED_SUBMISSION
          QUOTA = :QUOTA
          QUOTE = :QUOTE
          QUOTE_FIELD = :QUOTE_FIELD
          QUOTE_MODULE = :QUOTE_MODULE
          QUOTE_MODULE_FIELD = :QUOTE_MODULE_FIELD
          QUOTE_TEMPLATE = :QUOTE_TEMPLATE
          RESTORABLE_CRM_OBJECT = :RESTORABLE_CRM_OBJECT
          ROSTER = :ROSTER
          ROSTER_MEMBER = :ROSTER_MEMBER
          SALES_DOCUMENT = :SALES_DOCUMENT
          SALES_TASK = :SALES_TASK
          SALES_WORKLOAD = :SALES_WORKLOAD
          SALESFORCE_SYNC_ERROR = :SALESFORCE_SYNC_ERROR
          SCHEDULING_PAGE = :SCHEDULING_PAGE
          SCHEMAS_BACKEND_TEST = :SCHEMAS_BACKEND_TEST
          SCORE_CONFIGURATION = :SCORE_CONFIGURATION
          SEQUENCE = :SEQUENCE
          SEQUENCE_ENROLLMENT = :SEQUENCE_ENROLLMENT
          SEQUENCE_STEP = :SEQUENCE_STEP
          SEQUENCE_STEP_ENROLLMENT = :SEQUENCE_STEP_ENROLLMENT
          SERVICE = :SERVICE
          SITE_PAGE = :SITE_PAGE
          SNIPPET = :SNIPPET
          SOCIAL_BROADCAST = :SOCIAL_BROADCAST
          SOCIAL_CHANNEL = :SOCIAL_CHANNEL
          SOCIAL_POST = :SOCIAL_POST
          SOCIAL_PROFILE = :SOCIAL_PROFILE
          SOX_PROTECTED_DUMMY_TYPE = :SOX_PROTECTED_DUMMY_TYPE
          SOX_PROTECTED_TEST_TYPE = :SOX_PROTECTED_TEST_TYPE
          SUBMISSION_TAG = :SUBMISSION_TAG
          SUBSCRIPTION = :SUBSCRIPTION
          TASK = :TASK
          TASK_TEMPLATE = :TASK_TEMPLATE
          TAX = :TAX
          TEMPLATE = :TEMPLATE
          TICKET = :TICKET
          UNKNOWN = :UNKNOWN
          UNSUBSCRIBE = :UNSUBSCRIBE
          USER = :USER
          VIEW = :VIEW
          VIEW_BLOCK = :VIEW_BLOCK
          WEB_INTERACTIVE = :WEB_INTERACTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
