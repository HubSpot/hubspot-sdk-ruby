# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class AssociationDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the associated object (e.g., a contact ID).
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute allows_custom_labels
        #   Whether custom labels can be used in the association.
        #
        #   @return [Boolean]
        required :allows_custom_labels, HubspotSDK::Internal::Type::Boolean, api_name: :allowsCustomLabels

        # @!attribute cardinality
        #   The cardinality from the source object's perspective, either "ONE_TO_ONE" or
        #   "ONE_TO_MANY".
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AssociationDefinition::Cardinality]
        required :cardinality, enum: -> { HubspotSDK::Events::AssociationDefinition::Cardinality }

        # @!attribute category
        #   The error category
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AssociationDefinition::Category]
        required :category, enum: -> { HubspotSDK::Events::AssociationDefinition::Category }

        # @!attribute from_object_type_id
        #   The ID of the source object type (e.g., 0-1 for contacts).
        #
        #   @return [String]
        required :from_object_type_id, String, api_name: :fromObjectTypeId

        # @!attribute has_all_associated_objects
        #   Whether all potential linked objects are included in the association
        #
        #   @return [Boolean]
        required :has_all_associated_objects,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :hasAllAssociatedObjects

        # @!attribute has_cascading_deletes
        #   Whether deletions in the association should cause cascading deletes to linked
        #   objects.
        #
        #   @return [Boolean]
        required :has_cascading_deletes, HubspotSDK::Internal::Type::Boolean, api_name: :hasCascadingDeletes

        # @!attribute has_user_enforced_max_from_object_ids
        #   Whether a user has set a limit for the number of source objects.
        #
        #   @return [Boolean]
        required :has_user_enforced_max_from_object_ids,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :hasUserEnforcedMaxFromObjectIds

        # @!attribute has_user_enforced_max_to_object_ids
        #   Whether a user has set a limit for the number of destination objects.
        #
        #   @return [Boolean]
        required :has_user_enforced_max_to_object_ids,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :hasUserEnforcedMaxToObjectIds

        # @!attribute hidden
        #   Whether the association is hidden or not.
        #
        #   @return [Boolean]
        required :hidden, HubspotSDK::Internal::Type::Boolean

        # @!attribute inverse_allows_custom_labels
        #   Whether the reverse association can also support custom labels.
        #
        #   @return [Boolean]
        required :inverse_allows_custom_labels,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :inverseAllowsCustomLabels

        # @!attribute inverse_cardinality
        #   The cardinality from the destination object's perspective, either "ONE_TO_ONE"
        #   or "ONE_TO_MANY".
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AssociationDefinition::InverseCardinality]
        required :inverse_cardinality,
                 enum: -> { HubspotSDK::Events::AssociationDefinition::InverseCardinality },
                 api_name: :inverseCardinality

        # @!attribute inverse_has_all_associated_objects
        #   Whether all potential reverse linked objects are included in the association.
        #
        #   @return [Boolean]
        required :inverse_has_all_associated_objects,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :inverseHasAllAssociatedObjects

        # @!attribute inverse_id
        #   The unique ID for the inverse side of the association.
        #
        #   @return [Integer]
        required :inverse_id, Integer, api_name: :inverseId

        # @!attribute inverse_name
        #   The name used to describe the inverse relationship in this association
        #
        #   @return [String]
        required :inverse_name, String, api_name: :inverseName

        # @!attribute is_default
        #
        #   @return [Boolean]
        required :is_default, HubspotSDK::Internal::Type::Boolean, api_name: :isDefault

        # @!attribute is_inverse_primary
        #   Whether the inverse association is considered primary.
        #
        #   @return [Boolean]
        required :is_inverse_primary, HubspotSDK::Internal::Type::Boolean, api_name: :isInversePrimary

        # @!attribute is_primary
        #   Whether the association is the primary link between the entities involved.
        #
        #   @return [Boolean]
        required :is_primary, HubspotSDK::Internal::Type::Boolean, api_name: :isPrimary

        # @!attribute max_from_object_ids
        #   The maximum number of source object IDs allowed in the association.
        #
        #   @return [Integer]
        required :max_from_object_ids, Integer, api_name: :maxFromObjectIds

        # @!attribute max_to_object_ids
        #   The maximum number of destination object IDs allowed in the association.
        #
        #   @return [Integer]
        required :max_to_object_ids, Integer, api_name: :maxToObjectIds

        # @!attribute name
        #   For labeled association types, the internal name of the association.
        #
        #   @return [String]
        required :name, String

        # @!attribute portal_unique_identifier
        #   A unique across-portal ID applied to the association.
        #
        #   @return [String]
        required :portal_unique_identifier, String, api_name: :portalUniqueIdentifier

        # @!attribute read_only
        #
        #   @return [Boolean]
        required :read_only, HubspotSDK::Internal::Type::Boolean, api_name: :readOnly

        # @!attribute to_object_type_id
        #   The ID of the destination object type (e.g., 0-3 for deals).
        #
        #   @return [String]
        required :to_object_type_id, String, api_name: :toObjectTypeId

        # @!attribute from_object_type
        #   The name of the source object type (e.g,. "DEAL" or "QUOTE").
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AssociationDefinition::FromObjectType, nil]
        optional :from_object_type,
                 enum: -> { HubspotSDK::Events::AssociationDefinition::FromObjectType },
                 api_name: :fromObjectType

        # @!attribute hidden_reason
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AssociationDefinition::HiddenReason, nil]
        optional :hidden_reason,
                 enum: -> { HubspotSDK::Events::AssociationDefinition::HiddenReason },
                 api_name: :hiddenReason

        # @!attribute inverse_label
        #   The label used to describe the reverse relationship in an association.
        #
        #   @return [String, nil]
        optional :inverse_label, String, api_name: :inverseLabel

        # @!attribute label
        #   The label given to an association.
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute to_object_type
        #   The name of the destination object type (e.g,. "DEAL" or "QUOTE").
        #
        #   @return [Symbol, HubspotSDK::Models::Events::AssociationDefinition::ToObjectType, nil]
        optional :to_object_type,
                 enum: -> { HubspotSDK::Events::AssociationDefinition::ToObjectType },
                 api_name: :toObjectType

        # @!method initialize(id:, allows_custom_labels:, cardinality:, category:, from_object_type_id:, has_all_associated_objects:, has_cascading_deletes:, has_user_enforced_max_from_object_ids:, has_user_enforced_max_to_object_ids:, hidden:, inverse_allows_custom_labels:, inverse_cardinality:, inverse_has_all_associated_objects:, inverse_id:, inverse_name:, is_default:, is_inverse_primary:, is_primary:, max_from_object_ids:, max_to_object_ids:, name:, portal_unique_identifier:, read_only:, to_object_type_id:, from_object_type: nil, hidden_reason: nil, inverse_label: nil, label: nil, to_object_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Events::AssociationDefinition} for more details.
        #
        #   The definition of an association
        #
        #   @param id [Integer] The unique ID of the associated object (e.g., a contact ID).
        #
        #   @param allows_custom_labels [Boolean] Whether custom labels can be used in the association.
        #
        #   @param cardinality [Symbol, HubspotSDK::Models::Events::AssociationDefinition::Cardinality] The cardinality from the source object's perspective, either "ONE_TO_ONE" or "ON
        #
        #   @param category [Symbol, HubspotSDK::Models::Events::AssociationDefinition::Category] The error category
        #
        #   @param from_object_type_id [String] The ID of the source object type (e.g., 0-1 for contacts).
        #
        #   @param has_all_associated_objects [Boolean] Whether all potential linked objects are included in the association
        #
        #   @param has_cascading_deletes [Boolean] Whether deletions in the association should cause cascading deletes to linked ob
        #
        #   @param has_user_enforced_max_from_object_ids [Boolean] Whether a user has set a limit for the number of source objects.
        #
        #   @param has_user_enforced_max_to_object_ids [Boolean] Whether a user has set a limit for the number of destination objects.
        #
        #   @param hidden [Boolean] Whether the association is hidden or not.
        #
        #   @param inverse_allows_custom_labels [Boolean] Whether the reverse association can also support custom labels.
        #
        #   @param inverse_cardinality [Symbol, HubspotSDK::Models::Events::AssociationDefinition::InverseCardinality] The cardinality from the destination object's perspective, either "ONE_TO_ONE" o
        #
        #   @param inverse_has_all_associated_objects [Boolean] Whether all potential reverse linked objects are included in the association.
        #
        #   @param inverse_id [Integer] The unique ID for the inverse side of the association.
        #
        #   @param inverse_name [String] The name used to describe the inverse relationship in this association
        #
        #   @param is_default [Boolean]
        #
        #   @param is_inverse_primary [Boolean] Whether the inverse association is considered primary.
        #
        #   @param is_primary [Boolean] Whether the association is the primary link between the entities involved.
        #
        #   @param max_from_object_ids [Integer] The maximum number of source object IDs allowed in the association.
        #
        #   @param max_to_object_ids [Integer] The maximum number of destination object IDs allowed in the association.
        #
        #   @param name [String] For labeled association types, the internal name of the association.
        #
        #   @param portal_unique_identifier [String] A unique across-portal ID applied to the association.
        #
        #   @param read_only [Boolean]
        #
        #   @param to_object_type_id [String] The ID of the destination object type (e.g., 0-3 for deals).
        #
        #   @param from_object_type [Symbol, HubspotSDK::Models::Events::AssociationDefinition::FromObjectType] The name of the source object type (e.g,. "DEAL" or "QUOTE").
        #
        #   @param hidden_reason [Symbol, HubspotSDK::Models::Events::AssociationDefinition::HiddenReason]
        #
        #   @param inverse_label [String] The label used to describe the reverse relationship in an association.
        #
        #   @param label [String] The label given to an association.
        #
        #   @param to_object_type [Symbol, HubspotSDK::Models::Events::AssociationDefinition::ToObjectType] The name of the destination object type (e.g,. "DEAL" or "QUOTE").

        # The cardinality from the source object's perspective, either "ONE_TO_ONE" or
        # "ONE_TO_MANY".
        #
        # @see HubspotSDK::Models::Events::AssociationDefinition#cardinality
        module Cardinality
          extend HubspotSDK::Internal::Type::Enum

          ONE_TO_MANY = :ONE_TO_MANY
          ONE_TO_ONE = :ONE_TO_ONE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The error category
        #
        # @see HubspotSDK::Models::Events::AssociationDefinition#category
        module Category
          extend HubspotSDK::Internal::Type::Enum

          HUBSPOT_DEFINED = :HUBSPOT_DEFINED
          INTEGRATOR_DEFINED = :INTEGRATOR_DEFINED
          USER_DEFINED = :USER_DEFINED
          WORK = :WORK

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The cardinality from the destination object's perspective, either "ONE_TO_ONE"
        # or "ONE_TO_MANY".
        #
        # @see HubspotSDK::Models::Events::AssociationDefinition#inverse_cardinality
        module InverseCardinality
          extend HubspotSDK::Internal::Type::Enum

          ONE_TO_MANY = :ONE_TO_MANY
          ONE_TO_ONE = :ONE_TO_ONE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The name of the source object type (e.g,. "DEAL" or "QUOTE").
        #
        # @see HubspotSDK::Models::Events::AssociationDefinition#from_object_type
        module FromObjectType
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

        # @see HubspotSDK::Models::Events::AssociationDefinition#hidden_reason
        module HiddenReason
          extend HubspotSDK::Internal::Type::Enum

          DEFAULT = :DEFAULT
          INTERNAL = :INTERNAL
          USER_CONFIGURED = :USER_CONFIGURED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The name of the destination object type (e.g,. "DEAL" or "QUOTE").
        #
        # @see HubspotSDK::Models::Events::AssociationDefinition#to_object_type
        module ToObjectType
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
