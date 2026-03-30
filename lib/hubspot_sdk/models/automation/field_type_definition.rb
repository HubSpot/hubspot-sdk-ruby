# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class FieldTypeDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute external_options
        #   Indicates whether the field's options are sourced externally.
        #
        #   @return [Boolean]
        required :external_options, HubspotSDK::Internal::Type::Boolean, api_name: :externalOptions

        # @!attribute name
        #   The unique identifier for the field.
        #
        #   @return [String]
        required :name, String

        # @!attribute options
        #
        #   @return [Array<HubspotSDK::Models::AutomationActionsOption>]
        required :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AutomationActionsOption] }

        # @!attribute schema
        #   Defines the structure and constraints of the field.
        #
        #   @return [HubspotSDK::Models::Automation::IntegerFieldSchema, HubspotSDK::Models::Automation::LongFieldSchema, HubspotSDK::Models::Automation::DoubleFieldSchema, HubspotSDK::Models::Automation::StringFieldSchema, HubspotSDK::Models::Automation::BooleanFieldSchema, HubspotSDK::Models::Automation::ArrayFieldSchema, HubspotSDK::Models::Automation::ObjectFieldSchema]
        required :schema, union: -> { HubspotSDK::Automation::FieldTypeDefinition::Schema }

        # @!attribute type
        #   Specifies the data type of the field, with accepted values like bool, date,
        #   datetime, enumeration, json, number, object_coordinates, phone_number, string.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::FieldTypeDefinition::Type]
        required :type, enum: -> { HubspotSDK::Automation::FieldTypeDefinition::Type }

        # @!attribute use_chirp
        #   Specifies whether the field uses the Chirp feature.
        #
        #   @return [Boolean]
        required :use_chirp, HubspotSDK::Internal::Type::Boolean, api_name: :useChirp

        # @!attribute description
        #   A detailed explanation of the field's purpose and usage.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute external_options_reference_type
        #   Specifies the type of external reference for options.
        #
        #   @return [String, nil]
        optional :external_options_reference_type, String, api_name: :externalOptionsReferenceType

        # @!attribute field_type
        #   Describes the field's type in the UI, with accepted values like booleancheckbox,
        #   calculation_equation, checkbox, date, file, html, number, phonenumber, radio,
        #   select, text, textarea, unknown.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::FieldTypeDefinition::FieldType, nil]
        optional :field_type,
                 enum: -> { HubspotSDK::Automation::FieldTypeDefinition::FieldType },
                 api_name: :fieldType

        # @!attribute help_text
        #   Additional information or guidance about the field.
        #
        #   @return [String, nil]
        optional :help_text, String, api_name: :helpText

        # @!attribute label
        #   The user-friendly label for the field.
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute options_url
        #   A URL that provides options for the field.
        #
        #   @return [String, nil]
        optional :options_url, String, api_name: :optionsUrl

        # @!attribute referenced_object_type
        #   Indicates the type of object that the field references, with accepted values
        #   like OWNER.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::FieldTypeDefinition::ReferencedObjectType, nil]
        optional :referenced_object_type,
                 enum: -> { HubspotSDK::Automation::FieldTypeDefinition::ReferencedObjectType },
                 api_name: :referencedObjectType

        # @!method initialize(external_options:, name:, options:, schema:, type:, use_chirp:, description: nil, external_options_reference_type: nil, field_type: nil, help_text: nil, label: nil, options_url: nil, referenced_object_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::FieldTypeDefinition} for more details.
        #
        #   @param external_options [Boolean] Indicates whether the field's options are sourced externally.
        #
        #   @param name [String] The unique identifier for the field.
        #
        #   @param options [Array<HubspotSDK::Models::AutomationActionsOption>]
        #
        #   @param schema [HubspotSDK::Models::Automation::IntegerFieldSchema, HubspotSDK::Models::Automation::LongFieldSchema, HubspotSDK::Models::Automation::DoubleFieldSchema, HubspotSDK::Models::Automation::StringFieldSchema, HubspotSDK::Models::Automation::BooleanFieldSchema, HubspotSDK::Models::Automation::ArrayFieldSchema, HubspotSDK::Models::Automation::ObjectFieldSchema] Defines the structure and constraints of the field.
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::FieldTypeDefinition::Type] Specifies the data type of the field, with accepted values like bool, date, date
        #
        #   @param use_chirp [Boolean] Specifies whether the field uses the Chirp feature.
        #
        #   @param description [String] A detailed explanation of the field's purpose and usage.
        #
        #   @param external_options_reference_type [String] Specifies the type of external reference for options.
        #
        #   @param field_type [Symbol, HubspotSDK::Models::Automation::FieldTypeDefinition::FieldType] Describes the field's type in the UI, with accepted values like booleancheckbox,
        #
        #   @param help_text [String] Additional information or guidance about the field.
        #
        #   @param label [String] The user-friendly label for the field.
        #
        #   @param options_url [String] A URL that provides options for the field.
        #
        #   @param referenced_object_type [Symbol, HubspotSDK::Models::Automation::FieldTypeDefinition::ReferencedObjectType] Indicates the type of object that the field references, with accepted values lik

        # Defines the structure and constraints of the field.
        #
        # @see HubspotSDK::Models::Automation::FieldTypeDefinition#schema
        module Schema
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Automation::IntegerFieldSchema }

          variant -> { HubspotSDK::Automation::LongFieldSchema }

          variant -> { HubspotSDK::Automation::DoubleFieldSchema }

          variant -> { HubspotSDK::Automation::StringFieldSchema }

          variant -> { HubspotSDK::Automation::BooleanFieldSchema }

          variant -> { HubspotSDK::Automation::ArrayFieldSchema }

          variant -> { HubspotSDK::Automation::ObjectFieldSchema }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Automation::IntegerFieldSchema, HubspotSDK::Models::Automation::LongFieldSchema, HubspotSDK::Models::Automation::DoubleFieldSchema, HubspotSDK::Models::Automation::StringFieldSchema, HubspotSDK::Models::Automation::BooleanFieldSchema, HubspotSDK::Models::Automation::ArrayFieldSchema, HubspotSDK::Models::Automation::ObjectFieldSchema)]
        end

        # Specifies the data type of the field, with accepted values like bool, date,
        # datetime, enumeration, json, number, object_coordinates, phone_number, string.
        #
        # @see HubspotSDK::Models::Automation::FieldTypeDefinition#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          BOOL = :bool
          CURRENCY_NUMBER = :currency_number
          DATE = :date
          DATETIME = :datetime
          ENUMERATION = :enumeration
          JSON = :json
          NUMBER = :number
          OBJECT_COORDINATES = :object_coordinates
          PHONE_NUMBER = :phone_number
          STRING = :string

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Describes the field's type in the UI, with accepted values like booleancheckbox,
        # calculation_equation, checkbox, date, file, html, number, phonenumber, radio,
        # select, text, textarea, unknown.
        #
        # @see HubspotSDK::Models::Automation::FieldTypeDefinition#field_type
        module FieldType
          extend HubspotSDK::Internal::Type::Enum

          BOOLEANCHECKBOX = :booleancheckbox
          CALCULATION_EQUATION = :calculation_equation
          CALCULATION_READ_TIME = :calculation_read_time
          CALCULATION_ROLLUP = :calculation_rollup
          CALCULATION_SCORE = :calculation_score
          CHECKBOX = :checkbox
          DATE = :date
          FILE = :file
          HTML = :html
          NUMBER = :number
          PHONENUMBER = :phonenumber
          RADIO = :radio
          SELECT = :select
          TEXT = :text
          TEXTAREA = :textarea
          UNKNOWN = :unknown

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Indicates the type of object that the field references, with accepted values
        # like OWNER.
        #
        # @see HubspotSDK::Models::Automation::FieldTypeDefinition#referenced_object_type
        module ReferencedObjectType
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
