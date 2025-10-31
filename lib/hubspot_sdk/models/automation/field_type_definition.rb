# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class FieldTypeDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute external_options
        #
        #   @return [Boolean]
        required :external_options, HubspotSDK::Internal::Type::Boolean, api_name: :externalOptions

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute options
        #
        #   @return [Array<HubspotSDK::Models::Option>]
        required :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Option] }

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::FieldTypeDefinition::Type]
        required :type, enum: -> { HubspotSDK::Automation::FieldTypeDefinition::Type }

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute external_options_reference_type
        #
        #   @return [String, nil]
        optional :external_options_reference_type, String, api_name: :externalOptionsReferenceType

        # @!attribute field_type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::FieldTypeDefinition::FieldType, nil]
        optional :field_type,
                 enum: -> { HubspotSDK::Automation::FieldTypeDefinition::FieldType },
                 api_name: :fieldType

        # @!attribute help_text
        #
        #   @return [String, nil]
        optional :help_text, String, api_name: :helpText

        # @!attribute label
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute options_url
        #
        #   @return [String, nil]
        optional :options_url, String, api_name: :optionsUrl

        # @!attribute referenced_object_type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::FieldTypeDefinition::ReferencedObjectType, nil]
        optional :referenced_object_type,
                 enum: -> { HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType },
                 api_name: :referencedObjectType

        # @!method initialize(external_options:, name:, options:, type:, description: nil, external_options_reference_type: nil, field_type: nil, help_text: nil, label: nil, options_url: nil, referenced_object_type: nil)
        #   @param external_options [Boolean]
        #   @param name [String]
        #   @param options [Array<HubspotSDK::Models::Option>]
        #   @param type [Symbol, HubspotSDK::Models::Automation::FieldTypeDefinition::Type]
        #   @param description [String]
        #   @param external_options_reference_type [String]
        #   @param field_type [Symbol, HubspotSDK::Models::Automation::FieldTypeDefinition::FieldType]
        #   @param help_text [String]
        #   @param label [String]
        #   @param options_url [String]
        #   @param referenced_object_type [Symbol, HubspotSDK::Models::Automation::FieldTypeDefinition::ReferencedObjectType]

        # @see HubspotSDK::Models::Automation::FieldTypeDefinition#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          STRING = :string
          NUMBER = :number
          BOOL = :bool
          DATETIME = :datetime
          ENUMERATION = :enumeration
          DATE = :date
          PHONE_NUMBER = :phone_number
          CURRENCY_NUMBER = :currency_number
          JSON = :json
          OBJECT_COORDINATES = :object_coordinates

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Automation::FieldTypeDefinition#field_type
        module FieldType
          extend HubspotSDK::Internal::Type::Enum

          BOOLEANCHECKBOX = :booleancheckbox
          CHECKBOX = :checkbox
          DATE = :date
          FILE = :file
          NUMBER = :number
          PHONENUMBER = :phonenumber
          RADIO = :radio
          SELECT = :select
          TEXT = :text
          TEXTAREA = :textarea
          CALCULATION_EQUATION = :calculation_equation
          CALCULATION_ROLLUP = :calculation_rollup
          CALCULATION_SCORE = :calculation_score
          CALCULATION_READ_TIME = :calculation_read_time
          UNKNOWN = :unknown
          HTML = :html

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Automation::FieldTypeDefinition#referenced_object_type
        module ReferencedObjectType
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
          UNKNOWN = :UNKNOWN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
