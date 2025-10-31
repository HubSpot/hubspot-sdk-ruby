# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events::EventDefinitions#get
      class EventDefinitionGetResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute associations
        #
        #   @return [Array<HubspotSDK::Models::Events::EventDefinitionGetResponse::Association>]
        required :associations,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::Events::EventDefinitionGetResponse::Association] }

        # @!attribute fully_qualified_name
        #
        #   @return [String]
        required :fully_qualified_name, String, api_name: :fullyQualifiedName

        # @!attribute labels
        #
        #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::Labels]
        required :labels, -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::Labels }

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute properties
        #
        #   @return [Array<HubspotSDK::Models::Property>]
        required :properties, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property] }

        # @!attribute combo_event_rules
        #
        #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules, nil]
        optional :combo_event_rules,
                 -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules },
                 api_name: :comboEventRules

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute created_user_id
        #
        #   @return [Integer, nil]
        optional :created_user_id, Integer, api_name: :createdUserId

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute primary_object
        #
        #   @return [String, nil]
        optional :primary_object, String, api_name: :primaryObject

        # @!attribute primary_object_id
        #
        #   @return [String, nil]
        optional :primary_object_id, String, api_name: :primaryObjectId

        # @!attribute tracking_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::TrackingType, nil]
        optional :tracking_type,
                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::TrackingType },
                 api_name: :trackingType

        # @!method initialize(id:, archived:, associations:, fully_qualified_name:, labels:, name:, object_type_id:, properties:, combo_event_rules: nil, created_at: nil, created_user_id: nil, description: nil, primary_object: nil, primary_object_id: nil, tracking_type: nil)
        #   @param id [String]
        #   @param archived [Boolean]
        #   @param associations [Array<HubspotSDK::Models::Events::EventDefinitionGetResponse::Association>]
        #   @param fully_qualified_name [String]
        #   @param labels [HubspotSDK::Models::Events::EventDefinitionGetResponse::Labels]
        #   @param name [String]
        #   @param object_type_id [String]
        #   @param properties [Array<HubspotSDK::Models::Property>]
        #   @param combo_event_rules [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules]
        #   @param created_at [Time]
        #   @param created_user_id [Integer]
        #   @param description [String]
        #   @param primary_object [String]
        #   @param primary_object_id [String]
        #   @param tracking_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::TrackingType]

        class Association < HubspotSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::Cardinality]
          required :cardinality,
                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::Cardinality }

          # @!attribute category
          #   The category of the association. Can be: "HUBSPOT_DEFINED", "USER_DEFINED", or
          #   "INTEGRATOR_DEFINED"
          #
          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::Category]
          required :category,
                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::Category }

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
          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::InverseCardinality]
          required :inverse_cardinality,
                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::InverseCardinality },
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

          # @!attribute to_object_type_id
          #   The ID of the destination object type (e.g., 0-3 for deals).
          #
          #   @return [String]
          required :to_object_type_id, String, api_name: :toObjectTypeId

          # @!attribute from_object_type
          #   The name of the source object type (e.g,. "DEAL" or "QUOTE").
          #
          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::FromObjectType, nil]
          optional :from_object_type,
                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::FromObjectType },
                   api_name: :fromObjectType

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
          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::ToObjectType, nil]
          optional :to_object_type,
                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::ToObjectType },
                   api_name: :toObjectType

          # @!method initialize(id:, allows_custom_labels:, cardinality:, category:, from_object_type_id:, has_all_associated_objects:, has_cascading_deletes:, has_user_enforced_max_from_object_ids:, has_user_enforced_max_to_object_ids:, hidden:, inverse_allows_custom_labels:, inverse_cardinality:, inverse_has_all_associated_objects:, inverse_id:, inverse_name:, is_inverse_primary:, is_primary:, max_from_object_ids:, max_to_object_ids:, name:, portal_unique_identifier:, to_object_type_id:, from_object_type: nil, inverse_label: nil, label: nil, to_object_type: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Events::EventDefinitionGetResponse::Association} for more
          #   details.
          #
          #   The definition of an association
          #
          #   @param id [Integer] The unique ID of the associated object (e.g., a contact ID).
          #
          #   @param allows_custom_labels [Boolean] Whether custom labels can be used in the association.
          #
          #   @param cardinality [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::Cardinality] The cardinality from the source object's perspective, either "ONE_TO_ONE" or "ON
          #
          #   @param category [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::Category] The category of the association. Can be: "HUBSPOT_DEFINED", "USER_DEFINED", or "
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
          #   @param inverse_cardinality [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::InverseCardinality] The cardinality from the destination object's perspective, either "ONE_TO_ONE" o
          #
          #   @param inverse_has_all_associated_objects [Boolean] Whether all potential reverse linked objects are included in the association.
          #
          #   @param inverse_id [Integer] The unique ID for the inverse side of the association.
          #
          #   @param inverse_name [String] The name used to describe the inverse relationship in this association
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
          #   @param to_object_type_id [String] The ID of the destination object type (e.g., 0-3 for deals).
          #
          #   @param from_object_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::FromObjectType] The name of the source object type (e.g,. "DEAL" or "QUOTE").
          #
          #   @param inverse_label [String] The label used to describe the reverse relationship in an association.
          #
          #   @param label [String] The label given to an association.
          #
          #   @param to_object_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::Association::ToObjectType] The name of the destination object type (e.g,. "DEAL" or "QUOTE").

          # The cardinality from the source object's perspective, either "ONE_TO_ONE" or
          # "ONE_TO_MANY".
          #
          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::Association#cardinality
          module Cardinality
            extend HubspotSDK::Internal::Type::Enum

            ONE_TO_ONE = :ONE_TO_ONE
            ONE_TO_MANY = :ONE_TO_MANY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The category of the association. Can be: "HUBSPOT_DEFINED", "USER_DEFINED", or
          # "INTEGRATOR_DEFINED"
          #
          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::Association#category
          module Category
            extend HubspotSDK::Internal::Type::Enum

            HUBSPOT_DEFINED = :HUBSPOT_DEFINED
            USER_DEFINED = :USER_DEFINED
            INTEGRATOR_DEFINED = :INTEGRATOR_DEFINED

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The cardinality from the destination object's perspective, either "ONE_TO_ONE"
          # or "ONE_TO_MANY".
          #
          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::Association#inverse_cardinality
          module InverseCardinality
            extend HubspotSDK::Internal::Type::Enum

            ONE_TO_ONE = :ONE_TO_ONE
            ONE_TO_MANY = :ONE_TO_MANY

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The name of the source object type (e.g,. "DEAL" or "QUOTE").
          #
          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::Association#from_object_type
          module FromObjectType
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
            UNKNOWN = :UNKNOWN

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The name of the destination object type (e.g,. "DEAL" or "QUOTE").
          #
          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::Association#to_object_type
          module ToObjectType
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
            UNKNOWN = :UNKNOWN

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse#labels
        class Labels < HubspotSDK::Internal::Type::BaseModel
          # @!attribute singular
          #
          #   @return [String]
          required :singular, String

          # @!attribute plural
          #
          #   @return [String, nil]
          optional :plural, String

          # @!method initialize(singular:, plural: nil)
          #   @param singular [String]
          #   @param plural [String]
        end

        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse#combo_event_rules
        class ComboEventRules < HubspotSDK::Internal::Type::BaseModel
          # @!attribute composing_rules
          #
          #   @return [Array<HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule>]
          required :composing_rules,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule] },
                   api_name: :composingRules

          # @!attribute operation_type
          #
          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::OperationType]
          required :operation_type,
                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::OperationType },
                   api_name: :operationType

          # @!attribute rule_branches
          #
          #   @return [Array<Object>]
          required :rule_branches,
                   HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown],
                   api_name: :ruleBranches

          # @!method initialize(composing_rules:, operation_type:, rule_branches:)
          #   @param composing_rules [Array<HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule>]
          #   @param operation_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::OperationType]
          #   @param rule_branches [Array<Object>]

          class ComposingRule < HubspotSDK::Internal::Type::BaseModel
            # @!attribute count
            #
            #   @return [Integer]
            required :count, Integer

            # @!attribute event_type_id
            #
            #   @return [String]
            required :event_type_id, String, api_name: :eventTypeId

            # @!attribute property_filters
            #
            #   @return [Array<HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter>]
            required :property_filters,
                     -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter] },
                     api_name: :propertyFilters

            # @!attribute lookback_window_days
            #
            #   @return [Integer, nil]
            optional :lookback_window_days, Integer, api_name: :lookbackWindowDays

            # @!method initialize(count:, event_type_id:, property_filters:, lookback_window_days: nil)
            #   @param count [Integer]
            #   @param event_type_id [String]
            #   @param property_filters [Array<HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter>]
            #   @param lookback_window_days [Integer]

            class PropertyFilter < HubspotSDK::Internal::Type::BaseModel
              # @!attribute filter_type
              #
              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::FilterType]
              required :filter_type,
                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::FilterType },
                       api_name: :filterType

              # @!attribute operation
              #
              #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsBoolPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsNumberPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsStringPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDateTimePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedDatePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativeDatePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativePropertyUpdatedOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingDateRangePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingPropertyUpdatedOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsEnumerationPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedNumberPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation]
              required :operation,
                       union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation }

              # @!attribute property
              #
              #   @return [String]
              required :property, String

              # @!attribute framework_filter_id
              #
              #   @return [Integer, nil]
              optional :framework_filter_id, Integer, api_name: :frameworkFilterId

              # @!method initialize(filter_type:, operation:, property:, framework_filter_id: nil)
              #   @param filter_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::FilterType]
              #   @param operation [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsBoolPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsNumberPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsStringPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDateTimePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedDatePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativeDatePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativePropertyUpdatedOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingDateRangePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingPropertyUpdatedOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsEnumerationPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedNumberPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation]
              #   @param property [String]
              #   @param framework_filter_id [Integer]

              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter#filter_type
              module FilterType
                extend HubspotSDK::Internal::Type::Enum

                PROPERTY = :PROPERTY

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter#operation
              module Operation
                extend HubspotSDK::Internal::Type::Union

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsBoolPropertyOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsNumberPropertyOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsStringPropertyOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDateTimePropertyOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedDatePropertyOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativeDatePropertyOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativePropertyUpdatedOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingDateRangePropertyOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingPropertyUpdatedOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsEnumerationPropertyOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedNumberPropertyOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation }

                variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation }

                class EventsEventdefinitionsBoolPropertyOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsBoolPropertyOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsBoolPropertyOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsBoolPropertyOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsBoolPropertyOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute value
                  #
                  #   @return [Boolean]
                  required :value, HubspotSDK::Internal::Type::Boolean

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, value:, default_value: nil)
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsBoolPropertyOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsBoolPropertyOperation::PropertyType]
                  #   @param value [Boolean]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsBoolPropertyOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_EQUAL_TO = :IS_EQUAL_TO
                    IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO
                    HAS_EVER_BEEN_EQUAL_TO = :HAS_EVER_BEEN_EQUAL_TO
                    HAS_NEVER_BEEN_EQUAL_TO = :HAS_NEVER_BEEN_EQUAL_TO

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsBoolPropertyOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    BOOL = :bool

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsNumberPropertyOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsNumberPropertyOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsNumberPropertyOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsNumberPropertyOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsNumberPropertyOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute value
                  #
                  #   @return [Float]
                  required :value, Float

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, value:, default_value: nil)
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsNumberPropertyOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsNumberPropertyOperation::PropertyType]
                  #   @param value [Float]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsNumberPropertyOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_EQUAL_TO = :IS_EQUAL_TO
                    IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO
                    IS_GREATER_THAN = :IS_GREATER_THAN
                    IS_GREATER_THAN_OR_EQUAL_TO = :IS_GREATER_THAN_OR_EQUAL_TO
                    IS_LESS_THAN = :IS_LESS_THAN
                    IS_LESS_THAN_OR_EQUAL_TO = :IS_LESS_THAN_OR_EQUAL_TO
                    HAS_EVER_BEEN_EQUAL_TO = :HAS_EVER_BEEN_EQUAL_TO
                    HAS_NEVER_BEEN_EQUAL_TO = :HAS_NEVER_BEEN_EQUAL_TO

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsNumberPropertyOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    NUMBER = :number

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsStringPropertyOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsStringPropertyOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsStringPropertyOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsStringPropertyOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsStringPropertyOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute value
                  #
                  #   @return [String]
                  required :value, String

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, value:, default_value: nil)
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsStringPropertyOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsStringPropertyOperation::PropertyType]
                  #   @param value [String]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsStringPropertyOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_EQUAL_TO = :IS_EQUAL_TO
                    IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO
                    CONTAINS = :CONTAINS
                    DOES_NOT_CONTAIN = :DOES_NOT_CONTAIN
                    STARTS_WITH = :STARTS_WITH
                    ENDS_WITH = :ENDS_WITH
                    HAS_EVER_BEEN_EQUAL_TO = :HAS_EVER_BEEN_EQUAL_TO
                    HAS_NEVER_BEEN_EQUAL_TO = :HAS_NEVER_BEEN_EQUAL_TO
                    HAS_EVER_CONTAINED = :HAS_EVER_CONTAINED
                    HAS_NEVER_CONTAINED = :HAS_NEVER_CONTAINED

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsStringPropertyOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    STRING = :string

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsDateTimePropertyOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDateTimePropertyOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDateTimePropertyOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDateTimePropertyOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDateTimePropertyOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute requires_time_zone_conversion
                  #
                  #   @return [Boolean]
                  required :requires_time_zone_conversion,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :requiresTimeZoneConversion

                  # @!attribute timestamp
                  #
                  #   @return [Integer]
                  required :timestamp, Integer

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, requires_time_zone_conversion:, timestamp:, default_value: nil)
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDateTimePropertyOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDateTimePropertyOperation::PropertyType]
                  #   @param requires_time_zone_conversion [Boolean]
                  #   @param timestamp [Integer]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDateTimePropertyOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_BEFORE = :IS_BEFORE
                    IS_AFTER = :IS_AFTER
                    IS_EQUAL_TO = :IS_EQUAL_TO
                    IS_BEFORE_DATE = :IS_BEFORE_DATE
                    IS_AFTER_DATE = :IS_AFTER_DATE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDateTimePropertyOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    DATETIME = :datetime

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsRangedDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute lower_bound_timestamp
                  #
                  #   @return [Integer]
                  required :lower_bound_timestamp, Integer, api_name: :lowerBoundTimestamp

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedDatePropertyOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedDatePropertyOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedDatePropertyOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedDatePropertyOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute requires_time_zone_conversion
                  #
                  #   @return [Boolean]
                  required :requires_time_zone_conversion,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :requiresTimeZoneConversion

                  # @!attribute upper_bound_timestamp
                  #
                  #   @return [Integer]
                  required :upper_bound_timestamp, Integer, api_name: :upperBoundTimestamp

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(include_objects_with_no_value_set:, lower_bound_timestamp:, operation_type:, operator:, operator_name:, property_type:, requires_time_zone_conversion:, upper_bound_timestamp:, default_value: nil)
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param lower_bound_timestamp [Integer]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedDatePropertyOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedDatePropertyOperation::PropertyType]
                  #   @param requires_time_zone_conversion [Boolean]
                  #   @param upper_bound_timestamp [Integer]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedDatePropertyOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_BETWEEN = :IS_BETWEEN
                    IS_NOT_BETWEEN = :IS_NOT_BETWEEN

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedDatePropertyOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    DATETIME_RANGED = :"datetime-ranged"

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsComparativeDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute comparison_property_name
                  #
                  #   @return [String]
                  required :comparison_property_name, String, api_name: :comparisonPropertyName

                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativeDatePropertyOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativeDatePropertyOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativeDatePropertyOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativeDatePropertyOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute default_comparison_value
                  #
                  #   @return [String, nil]
                  optional :default_comparison_value, String, api_name: :defaultComparisonValue

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(comparison_property_name:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, default_comparison_value: nil, default_value: nil)
                  #   @param comparison_property_name [String]
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativeDatePropertyOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativeDatePropertyOperation::PropertyType]
                  #   @param default_comparison_value [String]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativeDatePropertyOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_BEFORE = :IS_BEFORE
                    IS_AFTER = :IS_AFTER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativeDatePropertyOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    DATETIME_COMPARATIVE = :"datetime-comparative"

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsComparativePropertyUpdatedOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute comparison_property_name
                  #
                  #   @return [String]
                  required :comparison_property_name, String, api_name: :comparisonPropertyName

                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativePropertyUpdatedOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativePropertyUpdatedOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativePropertyUpdatedOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativePropertyUpdatedOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute default_comparison_value
                  #
                  #   @return [String, nil]
                  optional :default_comparison_value, String, api_name: :defaultComparisonValue

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(comparison_property_name:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, default_comparison_value: nil, default_value: nil)
                  #   @param comparison_property_name [String]
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativePropertyUpdatedOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativePropertyUpdatedOperation::PropertyType]
                  #   @param default_comparison_value [String]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativePropertyUpdatedOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_BEFORE = :IS_BEFORE
                    IS_AFTER = :IS_AFTER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativePropertyUpdatedOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    PROPERTY_UPDATED_COMPARATIVE = :"property-updated-comparative"

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsRollingDateRangePropertyOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute number_of_days
                  #
                  #   @return [Integer]
                  required :number_of_days, Integer, api_name: :numberOfDays

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingDateRangePropertyOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingDateRangePropertyOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingDateRangePropertyOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingDateRangePropertyOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute requires_time_zone_conversion
                  #
                  #   @return [Boolean]
                  required :requires_time_zone_conversion,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :requiresTimeZoneConversion

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(include_objects_with_no_value_set:, number_of_days:, operation_type:, operator:, operator_name:, property_type:, requires_time_zone_conversion:, default_value: nil)
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param number_of_days [Integer]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingDateRangePropertyOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingDateRangePropertyOperation::PropertyType]
                  #   @param requires_time_zone_conversion [Boolean]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingDateRangePropertyOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_LESS_THAN_X_DAYS_AGO = :IS_LESS_THAN_X_DAYS_AGO
                    IS_MORE_THAN_X_DAYS_AGO = :IS_MORE_THAN_X_DAYS_AGO
                    IS_LESS_THAN_X_DAYS_FROM_NOW = :IS_LESS_THAN_X_DAYS_FROM_NOW
                    IS_MORE_THAN_X_DAYS_FROM_NOW = :IS_MORE_THAN_X_DAYS_FROM_NOW

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingDateRangePropertyOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    DATETIME_ROLLING = :"datetime-rolling"

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsRollingPropertyUpdatedOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute number_of_days
                  #
                  #   @return [Integer]
                  required :number_of_days, Integer, api_name: :numberOfDays

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingPropertyUpdatedOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingPropertyUpdatedOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingPropertyUpdatedOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingPropertyUpdatedOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(include_objects_with_no_value_set:, number_of_days:, operation_type:, operator:, operator_name:, property_type:, default_value: nil)
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param number_of_days [Integer]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingPropertyUpdatedOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingPropertyUpdatedOperation::PropertyType]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingPropertyUpdatedOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    UPDATED_IN_LAST_X_DAYS = :UPDATED_IN_LAST_X_DAYS
                    NOT_UPDATED_IN_LAST_X_DAYS = :NOT_UPDATED_IN_LAST_X_DAYS

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingPropertyUpdatedOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    ROLLING_PROPERTY_UPDATED = :"rolling-property-updated"

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsEnumerationPropertyOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsEnumerationPropertyOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsEnumerationPropertyOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsEnumerationPropertyOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsEnumerationPropertyOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute values
                  #
                  #   @return [Array<String>]
                  required :values, HubspotSDK::Internal::Type::ArrayOf[String]

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, values:, default_value: nil)
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsEnumerationPropertyOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsEnumerationPropertyOperation::PropertyType]
                  #   @param values [Array<String>]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsEnumerationPropertyOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_ANY_OF = :IS_ANY_OF
                    IS_NONE_OF = :IS_NONE_OF
                    IS_EXACTLY = :IS_EXACTLY
                    IS_NOT_EXACTLY = :IS_NOT_EXACTLY
                    CONTAINS_ALL = :CONTAINS_ALL
                    DOES_NOT_CONTAIN_ALL = :DOES_NOT_CONTAIN_ALL
                    HAS_EVER_BEEN_ANY_OF = :HAS_EVER_BEEN_ANY_OF
                    HAS_NEVER_BEEN_ANY_OF = :HAS_NEVER_BEEN_ANY_OF
                    HAS_EVER_BEEN_EXACTLY = :HAS_EVER_BEEN_EXACTLY
                    HAS_NEVER_BEEN_EXACTLY = :HAS_NEVER_BEEN_EXACTLY
                    HAS_EVER_CONTAINED_ALL = :HAS_EVER_CONTAINED_ALL
                    HAS_NEVER_CONTAINED_ALL = :HAS_NEVER_CONTAINED_ALL

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsEnumerationPropertyOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    ENUMERATION = :enumeration

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsAllPropertyTypesOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute coalescing_refine_by
                  #
                  #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy]
                  required :coalescing_refine_by,
                           union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy },
                           api_name: :coalescingRefineBy

                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!attribute pruning_refine_by
                  #
                  #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation, nil]
                  optional :pruning_refine_by,
                           union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy },
                           api_name: :pruningRefineBy

                  # @!method initialize(coalescing_refine_by:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, default_value: nil, pruning_refine_by: nil)
                  #   @param coalescing_refine_by [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy]
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PropertyType]
                  #   @param default_value [String]
                  #   @param pruning_refine_by [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation#coalescing_refine_by
                  module CoalescingRefineBy
                    extend HubspotSDK::Internal::Type::Union

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy }

                    class EventsEventdefinitionsNumOccurrencesRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy::Type }

                      # @!attribute max_occurrences
                      #
                      #   @return [Integer, nil]
                      optional :max_occurrences, Integer, api_name: :maxOccurrences

                      # @!attribute min_occurrences
                      #
                      #   @return [Integer, nil]
                      optional :min_occurrences, Integer, api_name: :minOccurrences

                      # @!method initialize(type:, max_occurrences: nil, min_occurrences: nil)
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy::Type]
                      #   @param max_occurrences [Integer]
                      #   @param min_occurrences [Integer]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        NUM_OCCURRENCES_REFINE_BY = :NumOccurrencesRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsSetOccurrencesRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute set_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy::SetType]
                      required :set_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy::SetType },
                               api_name: :setType

                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy::Type }

                      # @!method initialize(set_type:, type:)
                      #   @param set_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy::SetType]
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy::Type]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy#set_type
                      module SetType
                        extend HubspotSDK::Internal::Type::Enum

                        ALL = :ALL
                        ALL_INCLUDE_EMPTY = :ALL_INCLUDE_EMPTY
                        ANY = :ANY
                        NONE = :NONE
                        NONE_EXCLUDE_EMPTY = :NONE_EXCLUDE_EMPTY
                        ANY_INCLUDE_EMPTY = :ANY_INCLUDE_EMPTY

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        SET_OCCURRENCES_REFINE_BY = :SetOccurrencesRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    # @!method self.variants
                    #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy)]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_KNOWN = :IS_KNOWN
                    IS_UNKNOWN = :IS_UNKNOWN
                    IS_BLANK = :IS_BLANK
                    IS_NOT_BLANK = :IS_NOT_BLANK

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    ALLTYPES = :alltypes

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation#pruning_refine_by
                  module PruningRefineBy
                    extend HubspotSDK::Internal::Type::Union

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation }

                    class EventsEventdefinitionsRelativeComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute comparison
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::Comparison]
                      required :comparison,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::Comparison }

                      # @!attribute time_offset
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset]
                      required :time_offset,
                               -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset },
                               api_name: :timeOffset

                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::Type }

                      # @!method initialize(comparison:, time_offset:, type:)
                      #   @param comparison [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::Comparison]
                      #   @param time_offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset]
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::Type]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy#comparison
                      module Comparison
                        extend HubspotSDK::Internal::Type::Enum

                        BEFORE = :BEFORE
                        AFTER = :AFTER

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy#time_offset
                      class TimeOffset < HubspotSDK::Internal::Type::BaseModel
                        # @!attribute amount
                        #
                        #   @return [Integer]
                        required :amount, Integer

                        # @!attribute offset_direction
                        #
                        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset::OffsetDirection]
                        required :offset_direction,
                                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset::OffsetDirection },
                                 api_name: :offsetDirection

                        # @!attribute time_unit
                        #
                        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset::TimeUnit]
                        required :time_unit,
                                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset::TimeUnit },
                                 api_name: :timeUnit

                        # @!method initialize(amount:, offset_direction:, time_unit:)
                        #   @param amount [Integer]
                        #   @param offset_direction [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset::OffsetDirection]
                        #   @param time_unit [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset::TimeUnit]

                        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset#offset_direction
                        module OffsetDirection
                          extend HubspotSDK::Internal::Type::Enum

                          PAST = :PAST
                          FUTURE = :FUTURE

                          # @!method self.values
                          #   @return [Array<Symbol>]
                        end

                        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset#time_unit
                        module TimeUnit
                          extend HubspotSDK::Internal::Type::Enum

                          WEEKS = :WEEKS
                          DAYS = :DAYS
                          HOURS = :HOURS
                          MINUTES = :MINUTES

                          # @!method self.values
                          #   @return [Array<Symbol>]
                        end
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        RELATIVE_COMPARATIVE_TIMESTAMP_REFINE_BY = :RelativeComparativeTimestampRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsRelativeRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute lower_bound_offset
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset]
                      required :lower_bound_offset,
                               -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset },
                               api_name: :lowerBoundOffset

                      # @!attribute range_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::RangeType]
                      required :range_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::RangeType },
                               api_name: :rangeType

                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::Type }

                      # @!attribute upper_bound_offset
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset]
                      required :upper_bound_offset,
                               -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset },
                               api_name: :upperBoundOffset

                      # @!method initialize(lower_bound_offset:, range_type:, type:, upper_bound_offset:)
                      #   @param lower_bound_offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset]
                      #   @param range_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::RangeType]
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::Type]
                      #   @param upper_bound_offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy#lower_bound_offset
                      class LowerBoundOffset < HubspotSDK::Internal::Type::BaseModel
                        # @!attribute amount
                        #
                        #   @return [Integer]
                        required :amount, Integer

                        # @!attribute offset_direction
                        #
                        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset::OffsetDirection]
                        required :offset_direction,
                                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset::OffsetDirection },
                                 api_name: :offsetDirection

                        # @!attribute time_unit
                        #
                        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset::TimeUnit]
                        required :time_unit,
                                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset::TimeUnit },
                                 api_name: :timeUnit

                        # @!method initialize(amount:, offset_direction:, time_unit:)
                        #   @param amount [Integer]
                        #   @param offset_direction [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset::OffsetDirection]
                        #   @param time_unit [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset::TimeUnit]

                        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset#offset_direction
                        module OffsetDirection
                          extend HubspotSDK::Internal::Type::Enum

                          PAST = :PAST
                          FUTURE = :FUTURE

                          # @!method self.values
                          #   @return [Array<Symbol>]
                        end

                        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset#time_unit
                        module TimeUnit
                          extend HubspotSDK::Internal::Type::Enum

                          WEEKS = :WEEKS
                          DAYS = :DAYS
                          HOURS = :HOURS
                          MINUTES = :MINUTES

                          # @!method self.values
                          #   @return [Array<Symbol>]
                        end
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy#range_type
                      module RangeType
                        extend HubspotSDK::Internal::Type::Enum

                        BETWEEN = :BETWEEN
                        NOT_BETWEEN = :NOT_BETWEEN

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        RELATIVE_RANGED_TIMESTAMP_REFINE_BY = :RelativeRangedTimestampRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy#upper_bound_offset
                      class UpperBoundOffset < HubspotSDK::Internal::Type::BaseModel
                        # @!attribute amount
                        #
                        #   @return [Integer]
                        required :amount, Integer

                        # @!attribute offset_direction
                        #
                        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset::OffsetDirection]
                        required :offset_direction,
                                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset::OffsetDirection },
                                 api_name: :offsetDirection

                        # @!attribute time_unit
                        #
                        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset::TimeUnit]
                        required :time_unit,
                                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset::TimeUnit },
                                 api_name: :timeUnit

                        # @!method initialize(amount:, offset_direction:, time_unit:)
                        #   @param amount [Integer]
                        #   @param offset_direction [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset::OffsetDirection]
                        #   @param time_unit [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset::TimeUnit]

                        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset#offset_direction
                        module OffsetDirection
                          extend HubspotSDK::Internal::Type::Enum

                          PAST = :PAST
                          FUTURE = :FUTURE

                          # @!method self.values
                          #   @return [Array<Symbol>]
                        end

                        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset#time_unit
                        module TimeUnit
                          extend HubspotSDK::Internal::Type::Enum

                          WEEKS = :WEEKS
                          DAYS = :DAYS
                          HOURS = :HOURS
                          MINUTES = :MINUTES

                          # @!method self.values
                          #   @return [Array<Symbol>]
                        end
                      end
                    end

                    class EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute comparison
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy::Comparison]
                      required :comparison,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy::Comparison }

                      # @!attribute timestamp
                      #
                      #   @return [Integer]
                      required :timestamp, Integer

                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy::Type }

                      # @!method initialize(comparison:, timestamp:, type:)
                      #   @param comparison [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy::Comparison]
                      #   @param timestamp [Integer]
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy::Type]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy#comparison
                      module Comparison
                        extend HubspotSDK::Internal::Type::Enum

                        BEFORE = :BEFORE
                        AFTER = :AFTER

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        ABSOLUTE_COMPARATIVE_TIMESTAMP_REFINE_BY = :AbsoluteComparativeTimestampRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsAbsoluteRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute lower_timestamp
                      #
                      #   @return [Integer]
                      required :lower_timestamp, Integer, api_name: :lowerTimestamp

                      # @!attribute range_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy::RangeType]
                      required :range_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy::RangeType },
                               api_name: :rangeType

                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy::Type }

                      # @!attribute upper_timestamp
                      #
                      #   @return [Integer]
                      required :upper_timestamp, Integer, api_name: :upperTimestamp

                      # @!method initialize(lower_timestamp:, range_type:, type:, upper_timestamp:)
                      #   @param lower_timestamp [Integer]
                      #   @param range_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy::RangeType]
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy::Type]
                      #   @param upper_timestamp [Integer]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy#range_type
                      module RangeType
                        extend HubspotSDK::Internal::Type::Enum

                        BETWEEN = :BETWEEN
                        NOT_BETWEEN = :NOT_BETWEEN

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        ABSOLUTE_RANGED_TIMESTAMP_REFINE_BY = :AbsoluteRangedTimestampRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsAllHistoryRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy::Type }

                      # @!method initialize(type:)
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy::Type]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        ALL_HISTORY_REFINE_BY = :AllHistoryRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsTimePointOperation < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute endpoint_behavior
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::EndpointBehavior]
                      required :endpoint_behavior,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::EndpointBehavior },
                               api_name: :endpointBehavior

                      # @!attribute include_objects_with_no_value_set
                      #
                      #   @return [Boolean]
                      required :include_objects_with_no_value_set,
                               HubspotSDK::Internal::Type::Boolean,
                               api_name: :includeObjectsWithNoValueSet

                      # @!attribute operation_type
                      #
                      #   @return [String]
                      required :operation_type, String, api_name: :operationType

                      # @!attribute operator
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::Operator]
                      required :operator,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::Operator }

                      # @!attribute operator_name
                      #
                      #   @return [String]
                      required :operator_name, String, api_name: :operatorName

                      # @!attribute property_parser
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::PropertyParser]
                      required :property_parser,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::PropertyParser },
                               api_name: :propertyParser

                      # @!attribute property_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::PropertyType]
                      required :property_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::PropertyType },
                               api_name: :propertyType

                      # @!attribute time_point
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime]
                      required :time_point,
                               union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint },
                               api_name: :timePoint

                      # @!attribute type
                      #
                      #   @return [String]
                      required :type, String

                      # @!attribute default_value
                      #
                      #   @return [String, nil]
                      optional :default_value, String, api_name: :defaultValue

                      # @!method initialize(endpoint_behavior:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_parser:, property_type:, time_point:, type:, default_value: nil)
                      #   @param endpoint_behavior [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::EndpointBehavior]
                      #   @param include_objects_with_no_value_set [Boolean]
                      #   @param operation_type [String]
                      #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::Operator]
                      #   @param operator_name [String]
                      #   @param property_parser [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::PropertyParser]
                      #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::PropertyType]
                      #   @param time_point [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime]
                      #   @param type [String]
                      #   @param default_value [String]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation#endpoint_behavior
                      module EndpointBehavior
                        extend HubspotSDK::Internal::Type::Enum

                        INCLUSIVE = :INCLUSIVE
                        EXCLUSIVE = :EXCLUSIVE

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation#operator
                      module Operator
                        extend HubspotSDK::Internal::Type::Enum

                        IS_BEFORE = :IS_BEFORE
                        IS_AFTER = :IS_AFTER

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation#property_parser
                      module PropertyParser
                        extend HubspotSDK::Internal::Type::Enum

                        VALUE = :VALUE
                        UPDATED_AT = :UPDATED_AT
                        ANNIVERSARY = :ANNIVERSARY
                        VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                        ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation#property_type
                      module PropertyType
                        extend HubspotSDK::Internal::Type::Enum

                        TIMEPOINT = :timepoint

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation#time_point
                      module TimePoint
                        extend HubspotSDK::Internal::Type::Union

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime }

                        class EventsEventdefinitionsDatePoint < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute year
                          #
                          #   @return [Integer]
                          required :year, Integer

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, time_type:, timezone_source:, year:, zone_id:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                          #   @param year [Integer]
                          #   @param zone_id [String]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            DATE = :DATE

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute index_reference
                          #
                          #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                          required :index_reference,
                                   union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference },
                                   api_name: :indexReference

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!attribute offset
                          #
                          #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::Offset, nil]
                          optional :offset,
                                   -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::Offset }

                          # @!method initialize(index_reference:, time_type:, timezone_source:, zone_id:, offset: nil)
                          #   @param index_reference [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                          #   @param zone_id [String]
                          #   @param offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::Offset]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint#index_reference
                          module IndexReference
                            extend HubspotSDK::Internal::Type::Union

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear }

                            class EventsEventdefinitionsNowReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                NOW = :NOW

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsTodayReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                TODAY = :TODAY

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsWeekReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day_of_week
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                              required :day_of_week,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek },
                                       api_name: :dayOfWeek

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day_of_week:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day_of_week [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#day_of_week
                              module DayOfWeek
                                extend HubspotSDK::Internal::Type::Enum

                                MONDAY = :MONDAY
                                TUESDAY = :TUESDAY
                                WEDNESDAY = :WEDNESDAY
                                THURSDAY = :THURSDAY
                                FRIDAY = :FRIDAY
                                SATURDAY = :SATURDAY
                                SUNDAY = :SUNDAY

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                WEEK = :WEEK

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsMonthReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                MONTH = :MONTH

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsQuarterReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                QUARTER = :QUARTER

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsFiscalQuarter < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                FISCAL_QUARTER = :FISCAL_QUARTER

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsYearReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                YEAR = :YEAR

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsFiscalYear < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                FISCAL_YEAR = :FISCAL_YEAR

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            # @!method self.variants
                            #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear)]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            INDEXED = :INDEXED

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint#offset
                          class Offset < HubspotSDK::Internal::Type::BaseModel
                            # @!attribute days
                            #
                            #   @return [Integer, nil]
                            optional :days, Integer

                            # @!attribute hours
                            #
                            #   @return [Integer, nil]
                            optional :hours, Integer

                            # @!attribute milliseconds
                            #
                            #   @return [Integer, nil]
                            optional :milliseconds, Integer

                            # @!attribute minutes
                            #
                            #   @return [Integer, nil]
                            optional :minutes, Integer

                            # @!attribute months
                            #
                            #   @return [Integer, nil]
                            optional :months, Integer

                            # @!attribute quarters
                            #
                            #   @return [Integer, nil]
                            optional :quarters, Integer

                            # @!attribute seconds
                            #
                            #   @return [Integer, nil]
                            optional :seconds, Integer

                            # @!attribute weeks
                            #
                            #   @return [Integer, nil]
                            optional :weeks, Integer

                            # @!attribute years
                            #
                            #   @return [Integer, nil]
                            optional :years, Integer

                            # @!method initialize(days: nil, hours: nil, milliseconds: nil, minutes: nil, months: nil, quarters: nil, seconds: nil, weeks: nil, years: nil)
                            #   @param days [Integer]
                            #   @param hours [Integer]
                            #   @param milliseconds [Integer]
                            #   @param minutes [Integer]
                            #   @param months [Integer]
                            #   @param quarters [Integer]
                            #   @param seconds [Integer]
                            #   @param weeks [Integer]
                            #   @param years [Integer]
                          end
                        end

                        class EventsEventdefinitionsPropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute property
                          #
                          #   @return [String]
                          required :property, String

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!method initialize(property:, reference_type:, time_type:, timezone_source:, zone_id:)
                          #   @param property [String]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                          #   @param zone_id [String]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            VALUE = :VALUE
                            UPDATED_AT = :UPDATED_AT
                            ANNIVERSARY = :ANNIVERSARY
                            VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                            ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            PROPERTY_REFERENCED = :PROPERTY_REFERENCED

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        # @!method self.variants
                        #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime)]
                      end
                    end

                    class EventsEventdefinitionsRangedTimeOperation < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute include_objects_with_no_value_set
                      #
                      #   @return [Boolean]
                      required :include_objects_with_no_value_set,
                               HubspotSDK::Internal::Type::Boolean,
                               api_name: :includeObjectsWithNoValueSet

                      # @!attribute lower_bound_endpoint_behavior
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundEndpointBehavior]
                      required :lower_bound_endpoint_behavior,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundEndpointBehavior },
                               api_name: :lowerBoundEndpointBehavior

                      # @!attribute lower_bound_time_point
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime]
                      required :lower_bound_time_point,
                               union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint },
                               api_name: :lowerBoundTimePoint

                      # @!attribute operation_type
                      #
                      #   @return [String]
                      required :operation_type, String, api_name: :operationType

                      # @!attribute operator
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::Operator]
                      required :operator,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::Operator }

                      # @!attribute operator_name
                      #
                      #   @return [String]
                      required :operator_name, String, api_name: :operatorName

                      # @!attribute property_parser
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::PropertyParser]
                      required :property_parser,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::PropertyParser },
                               api_name: :propertyParser

                      # @!attribute property_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::PropertyType]
                      required :property_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::PropertyType },
                               api_name: :propertyType

                      # @!attribute type
                      #
                      #   @return [String]
                      required :type, String

                      # @!attribute upper_bound_endpoint_behavior
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundEndpointBehavior]
                      required :upper_bound_endpoint_behavior,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundEndpointBehavior },
                               api_name: :upperBoundEndpointBehavior

                      # @!attribute upper_bound_time_point
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime]
                      required :upper_bound_time_point,
                               union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint },
                               api_name: :upperBoundTimePoint

                      # @!attribute default_value
                      #
                      #   @return [String, nil]
                      optional :default_value, String, api_name: :defaultValue

                      # @!method initialize(include_objects_with_no_value_set:, lower_bound_endpoint_behavior:, lower_bound_time_point:, operation_type:, operator:, operator_name:, property_parser:, property_type:, type:, upper_bound_endpoint_behavior:, upper_bound_time_point:, default_value: nil)
                      #   @param include_objects_with_no_value_set [Boolean]
                      #   @param lower_bound_endpoint_behavior [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundEndpointBehavior]
                      #   @param lower_bound_time_point [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime]
                      #   @param operation_type [String]
                      #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::Operator]
                      #   @param operator_name [String]
                      #   @param property_parser [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::PropertyParser]
                      #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::PropertyType]
                      #   @param type [String]
                      #   @param upper_bound_endpoint_behavior [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundEndpointBehavior]
                      #   @param upper_bound_time_point [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime]
                      #   @param default_value [String]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#lower_bound_endpoint_behavior
                      module LowerBoundEndpointBehavior
                        extend HubspotSDK::Internal::Type::Enum

                        INCLUSIVE = :INCLUSIVE
                        EXCLUSIVE = :EXCLUSIVE

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#lower_bound_time_point
                      module LowerBoundTimePoint
                        extend HubspotSDK::Internal::Type::Union

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime }

                        class EventsEventdefinitionsDatePoint < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute year
                          #
                          #   @return [Integer]
                          required :year, Integer

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, time_type:, timezone_source:, year:, zone_id:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                          #   @param year [Integer]
                          #   @param zone_id [String]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            DATE = :DATE

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute index_reference
                          #
                          #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                          required :index_reference,
                                   union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference },
                                   api_name: :indexReference

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!attribute offset
                          #
                          #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset, nil]
                          optional :offset,
                                   -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset }

                          # @!method initialize(index_reference:, time_type:, timezone_source:, zone_id:, offset: nil)
                          #   @param index_reference [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                          #   @param zone_id [String]
                          #   @param offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#index_reference
                          module IndexReference
                            extend HubspotSDK::Internal::Type::Union

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear }

                            class EventsEventdefinitionsNowReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                NOW = :NOW

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsTodayReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                TODAY = :TODAY

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsWeekReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day_of_week
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                              required :day_of_week,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek },
                                       api_name: :dayOfWeek

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day_of_week:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day_of_week [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#day_of_week
                              module DayOfWeek
                                extend HubspotSDK::Internal::Type::Enum

                                MONDAY = :MONDAY
                                TUESDAY = :TUESDAY
                                WEDNESDAY = :WEDNESDAY
                                THURSDAY = :THURSDAY
                                FRIDAY = :FRIDAY
                                SATURDAY = :SATURDAY
                                SUNDAY = :SUNDAY

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                WEEK = :WEEK

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsMonthReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                MONTH = :MONTH

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsQuarterReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                QUARTER = :QUARTER

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsFiscalQuarter < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                FISCAL_QUARTER = :FISCAL_QUARTER

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsYearReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                YEAR = :YEAR

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsFiscalYear < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                FISCAL_YEAR = :FISCAL_YEAR

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            # @!method self.variants
                            #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear)]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            INDEXED = :INDEXED

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#offset
                          class Offset < HubspotSDK::Internal::Type::BaseModel
                            # @!attribute days
                            #
                            #   @return [Integer, nil]
                            optional :days, Integer

                            # @!attribute hours
                            #
                            #   @return [Integer, nil]
                            optional :hours, Integer

                            # @!attribute milliseconds
                            #
                            #   @return [Integer, nil]
                            optional :milliseconds, Integer

                            # @!attribute minutes
                            #
                            #   @return [Integer, nil]
                            optional :minutes, Integer

                            # @!attribute months
                            #
                            #   @return [Integer, nil]
                            optional :months, Integer

                            # @!attribute quarters
                            #
                            #   @return [Integer, nil]
                            optional :quarters, Integer

                            # @!attribute seconds
                            #
                            #   @return [Integer, nil]
                            optional :seconds, Integer

                            # @!attribute weeks
                            #
                            #   @return [Integer, nil]
                            optional :weeks, Integer

                            # @!attribute years
                            #
                            #   @return [Integer, nil]
                            optional :years, Integer

                            # @!method initialize(days: nil, hours: nil, milliseconds: nil, minutes: nil, months: nil, quarters: nil, seconds: nil, weeks: nil, years: nil)
                            #   @param days [Integer]
                            #   @param hours [Integer]
                            #   @param milliseconds [Integer]
                            #   @param minutes [Integer]
                            #   @param months [Integer]
                            #   @param quarters [Integer]
                            #   @param seconds [Integer]
                            #   @param weeks [Integer]
                            #   @param years [Integer]
                          end
                        end

                        class EventsEventdefinitionsPropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute property
                          #
                          #   @return [String]
                          required :property, String

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!method initialize(property:, reference_type:, time_type:, timezone_source:, zone_id:)
                          #   @param property [String]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                          #   @param zone_id [String]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            VALUE = :VALUE
                            UPDATED_AT = :UPDATED_AT
                            ANNIVERSARY = :ANNIVERSARY
                            VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                            ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            PROPERTY_REFERENCED = :PROPERTY_REFERENCED

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        # @!method self.variants
                        #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime)]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#operator
                      module Operator
                        extend HubspotSDK::Internal::Type::Enum

                        IS_BETWEEN = :IS_BETWEEN
                        IS_NOT_BETWEEN = :IS_NOT_BETWEEN

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#property_parser
                      module PropertyParser
                        extend HubspotSDK::Internal::Type::Enum

                        VALUE = :VALUE
                        UPDATED_AT = :UPDATED_AT
                        ANNIVERSARY = :ANNIVERSARY
                        VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                        ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#property_type
                      module PropertyType
                        extend HubspotSDK::Internal::Type::Enum

                        RANGEDTIME = :rangedtime

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#upper_bound_endpoint_behavior
                      module UpperBoundEndpointBehavior
                        extend HubspotSDK::Internal::Type::Enum

                        INCLUSIVE = :INCLUSIVE
                        EXCLUSIVE = :EXCLUSIVE

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#upper_bound_time_point
                      module UpperBoundTimePoint
                        extend HubspotSDK::Internal::Type::Union

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime }

                        class EventsEventdefinitionsDatePoint < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute year
                          #
                          #   @return [Integer]
                          required :year, Integer

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, time_type:, timezone_source:, year:, zone_id:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                          #   @param year [Integer]
                          #   @param zone_id [String]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            DATE = :DATE

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute index_reference
                          #
                          #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                          required :index_reference,
                                   union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference },
                                   api_name: :indexReference

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!attribute offset
                          #
                          #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset, nil]
                          optional :offset,
                                   -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset }

                          # @!method initialize(index_reference:, time_type:, timezone_source:, zone_id:, offset: nil)
                          #   @param index_reference [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                          #   @param zone_id [String]
                          #   @param offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#index_reference
                          module IndexReference
                            extend HubspotSDK::Internal::Type::Union

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear }

                            class EventsEventdefinitionsNowReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                NOW = :NOW

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsTodayReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                TODAY = :TODAY

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsWeekReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day_of_week
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                              required :day_of_week,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek },
                                       api_name: :dayOfWeek

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day_of_week:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day_of_week [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#day_of_week
                              module DayOfWeek
                                extend HubspotSDK::Internal::Type::Enum

                                MONDAY = :MONDAY
                                TUESDAY = :TUESDAY
                                WEDNESDAY = :WEDNESDAY
                                THURSDAY = :THURSDAY
                                FRIDAY = :FRIDAY
                                SATURDAY = :SATURDAY
                                SUNDAY = :SUNDAY

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                WEEK = :WEEK

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsMonthReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                MONTH = :MONTH

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsQuarterReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                QUARTER = :QUARTER

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsFiscalQuarter < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                FISCAL_QUARTER = :FISCAL_QUARTER

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsYearReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                YEAR = :YEAR

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsFiscalYear < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                FISCAL_YEAR = :FISCAL_YEAR

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            # @!method self.variants
                            #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear)]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            INDEXED = :INDEXED

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#offset
                          class Offset < HubspotSDK::Internal::Type::BaseModel
                            # @!attribute days
                            #
                            #   @return [Integer, nil]
                            optional :days, Integer

                            # @!attribute hours
                            #
                            #   @return [Integer, nil]
                            optional :hours, Integer

                            # @!attribute milliseconds
                            #
                            #   @return [Integer, nil]
                            optional :milliseconds, Integer

                            # @!attribute minutes
                            #
                            #   @return [Integer, nil]
                            optional :minutes, Integer

                            # @!attribute months
                            #
                            #   @return [Integer, nil]
                            optional :months, Integer

                            # @!attribute quarters
                            #
                            #   @return [Integer, nil]
                            optional :quarters, Integer

                            # @!attribute seconds
                            #
                            #   @return [Integer, nil]
                            optional :seconds, Integer

                            # @!attribute weeks
                            #
                            #   @return [Integer, nil]
                            optional :weeks, Integer

                            # @!attribute years
                            #
                            #   @return [Integer, nil]
                            optional :years, Integer

                            # @!method initialize(days: nil, hours: nil, milliseconds: nil, minutes: nil, months: nil, quarters: nil, seconds: nil, weeks: nil, years: nil)
                            #   @param days [Integer]
                            #   @param hours [Integer]
                            #   @param milliseconds [Integer]
                            #   @param minutes [Integer]
                            #   @param months [Integer]
                            #   @param quarters [Integer]
                            #   @param seconds [Integer]
                            #   @param weeks [Integer]
                            #   @param years [Integer]
                          end
                        end

                        class EventsEventdefinitionsPropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute property
                          #
                          #   @return [String]
                          required :property, String

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!method initialize(property:, reference_type:, time_type:, timezone_source:, zone_id:)
                          #   @param property [String]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                          #   @param zone_id [String]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            VALUE = :VALUE
                            UPDATED_AT = :UPDATED_AT
                            ANNIVERSARY = :ANNIVERSARY
                            VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                            ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            PROPERTY_REFERENCED = :PROPERTY_REFERENCED

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        # @!method self.variants
                        #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime)]
                      end
                    end

                    # @!method self.variants
                    #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation)]
                  end
                end

                class EventsEventdefinitionsRangedNumberPropertyOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute lower_bound
                  #
                  #   @return [Integer]
                  required :lower_bound, Integer, api_name: :lowerBound

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedNumberPropertyOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedNumberPropertyOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedNumberPropertyOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedNumberPropertyOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute upper_bound
                  #
                  #   @return [Integer]
                  required :upper_bound, Integer, api_name: :upperBound

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(include_objects_with_no_value_set:, lower_bound:, operation_type:, operator:, operator_name:, property_type:, upper_bound:, default_value: nil)
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param lower_bound [Integer]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedNumberPropertyOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedNumberPropertyOperation::PropertyType]
                  #   @param upper_bound [Integer]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedNumberPropertyOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_BETWEEN = :IS_BETWEEN
                    IS_NOT_BETWEEN = :IS_NOT_BETWEEN

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedNumberPropertyOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    NUMBER_RANGED = :"number-ranged"

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsMultiStringPropertyOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute coalescing_refine_by
                  #
                  #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy]
                  required :coalescing_refine_by,
                           union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy },
                           api_name: :coalescingRefineBy

                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute values
                  #
                  #   @return [Array<String>]
                  required :values, HubspotSDK::Internal::Type::ArrayOf[String]

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!attribute pruning_refine_by
                  #
                  #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation, nil]
                  optional :pruning_refine_by,
                           union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy },
                           api_name: :pruningRefineBy

                  # @!method initialize(coalescing_refine_by:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, values:, default_value: nil, pruning_refine_by: nil)
                  #   @param coalescing_refine_by [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy]
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PropertyType]
                  #   @param values [Array<String>]
                  #   @param default_value [String]
                  #   @param pruning_refine_by [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation#coalescing_refine_by
                  module CoalescingRefineBy
                    extend HubspotSDK::Internal::Type::Union

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy }

                    class EventsEventdefinitionsNumOccurrencesRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy::Type }

                      # @!attribute max_occurrences
                      #
                      #   @return [Integer, nil]
                      optional :max_occurrences, Integer, api_name: :maxOccurrences

                      # @!attribute min_occurrences
                      #
                      #   @return [Integer, nil]
                      optional :min_occurrences, Integer, api_name: :minOccurrences

                      # @!method initialize(type:, max_occurrences: nil, min_occurrences: nil)
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy::Type]
                      #   @param max_occurrences [Integer]
                      #   @param min_occurrences [Integer]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        NUM_OCCURRENCES_REFINE_BY = :NumOccurrencesRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsSetOccurrencesRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute set_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy::SetType]
                      required :set_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy::SetType },
                               api_name: :setType

                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy::Type }

                      # @!method initialize(set_type:, type:)
                      #   @param set_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy::SetType]
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy::Type]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy#set_type
                      module SetType
                        extend HubspotSDK::Internal::Type::Enum

                        ALL = :ALL
                        ALL_INCLUDE_EMPTY = :ALL_INCLUDE_EMPTY
                        ANY = :ANY
                        NONE = :NONE
                        NONE_EXCLUDE_EMPTY = :NONE_EXCLUDE_EMPTY
                        ANY_INCLUDE_EMPTY = :ANY_INCLUDE_EMPTY

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        SET_OCCURRENCES_REFINE_BY = :SetOccurrencesRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    # @!method self.variants
                    #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsNumOccurrencesRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::CoalescingRefineBy::EventsEventdefinitionsSetOccurrencesRefineBy)]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_EQUAL_TO = :IS_EQUAL_TO
                    IS_NOT_EQUAL_TO = :IS_NOT_EQUAL_TO
                    CONTAINS = :CONTAINS
                    DOES_NOT_CONTAIN = :DOES_NOT_CONTAIN
                    STARTS_WITH = :STARTS_WITH
                    ENDS_WITH = :ENDS_WITH

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    MULTISTRING = :multistring

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation#pruning_refine_by
                  module PruningRefineBy
                    extend HubspotSDK::Internal::Type::Union

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation }

                    class EventsEventdefinitionsRelativeComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute comparison
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::Comparison]
                      required :comparison,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::Comparison }

                      # @!attribute time_offset
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset]
                      required :time_offset,
                               -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset },
                               api_name: :timeOffset

                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::Type }

                      # @!method initialize(comparison:, time_offset:, type:)
                      #   @param comparison [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::Comparison]
                      #   @param time_offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset]
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::Type]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy#comparison
                      module Comparison
                        extend HubspotSDK::Internal::Type::Enum

                        BEFORE = :BEFORE
                        AFTER = :AFTER

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy#time_offset
                      class TimeOffset < HubspotSDK::Internal::Type::BaseModel
                        # @!attribute amount
                        #
                        #   @return [Integer]
                        required :amount, Integer

                        # @!attribute offset_direction
                        #
                        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset::OffsetDirection]
                        required :offset_direction,
                                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset::OffsetDirection },
                                 api_name: :offsetDirection

                        # @!attribute time_unit
                        #
                        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset::TimeUnit]
                        required :time_unit,
                                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset::TimeUnit },
                                 api_name: :timeUnit

                        # @!method initialize(amount:, offset_direction:, time_unit:)
                        #   @param amount [Integer]
                        #   @param offset_direction [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset::OffsetDirection]
                        #   @param time_unit [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset::TimeUnit]

                        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset#offset_direction
                        module OffsetDirection
                          extend HubspotSDK::Internal::Type::Enum

                          PAST = :PAST
                          FUTURE = :FUTURE

                          # @!method self.values
                          #   @return [Array<Symbol>]
                        end

                        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy::TimeOffset#time_unit
                        module TimeUnit
                          extend HubspotSDK::Internal::Type::Enum

                          WEEKS = :WEEKS
                          DAYS = :DAYS
                          HOURS = :HOURS
                          MINUTES = :MINUTES

                          # @!method self.values
                          #   @return [Array<Symbol>]
                        end
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        RELATIVE_COMPARATIVE_TIMESTAMP_REFINE_BY = :RelativeComparativeTimestampRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsRelativeRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute lower_bound_offset
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset]
                      required :lower_bound_offset,
                               -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset },
                               api_name: :lowerBoundOffset

                      # @!attribute range_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::RangeType]
                      required :range_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::RangeType },
                               api_name: :rangeType

                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::Type }

                      # @!attribute upper_bound_offset
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset]
                      required :upper_bound_offset,
                               -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset },
                               api_name: :upperBoundOffset

                      # @!method initialize(lower_bound_offset:, range_type:, type:, upper_bound_offset:)
                      #   @param lower_bound_offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset]
                      #   @param range_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::RangeType]
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::Type]
                      #   @param upper_bound_offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy#lower_bound_offset
                      class LowerBoundOffset < HubspotSDK::Internal::Type::BaseModel
                        # @!attribute amount
                        #
                        #   @return [Integer]
                        required :amount, Integer

                        # @!attribute offset_direction
                        #
                        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset::OffsetDirection]
                        required :offset_direction,
                                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset::OffsetDirection },
                                 api_name: :offsetDirection

                        # @!attribute time_unit
                        #
                        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset::TimeUnit]
                        required :time_unit,
                                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset::TimeUnit },
                                 api_name: :timeUnit

                        # @!method initialize(amount:, offset_direction:, time_unit:)
                        #   @param amount [Integer]
                        #   @param offset_direction [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset::OffsetDirection]
                        #   @param time_unit [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset::TimeUnit]

                        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset#offset_direction
                        module OffsetDirection
                          extend HubspotSDK::Internal::Type::Enum

                          PAST = :PAST
                          FUTURE = :FUTURE

                          # @!method self.values
                          #   @return [Array<Symbol>]
                        end

                        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::LowerBoundOffset#time_unit
                        module TimeUnit
                          extend HubspotSDK::Internal::Type::Enum

                          WEEKS = :WEEKS
                          DAYS = :DAYS
                          HOURS = :HOURS
                          MINUTES = :MINUTES

                          # @!method self.values
                          #   @return [Array<Symbol>]
                        end
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy#range_type
                      module RangeType
                        extend HubspotSDK::Internal::Type::Enum

                        BETWEEN = :BETWEEN
                        NOT_BETWEEN = :NOT_BETWEEN

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        RELATIVE_RANGED_TIMESTAMP_REFINE_BY = :RelativeRangedTimestampRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy#upper_bound_offset
                      class UpperBoundOffset < HubspotSDK::Internal::Type::BaseModel
                        # @!attribute amount
                        #
                        #   @return [Integer]
                        required :amount, Integer

                        # @!attribute offset_direction
                        #
                        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset::OffsetDirection]
                        required :offset_direction,
                                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset::OffsetDirection },
                                 api_name: :offsetDirection

                        # @!attribute time_unit
                        #
                        #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset::TimeUnit]
                        required :time_unit,
                                 enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset::TimeUnit },
                                 api_name: :timeUnit

                        # @!method initialize(amount:, offset_direction:, time_unit:)
                        #   @param amount [Integer]
                        #   @param offset_direction [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset::OffsetDirection]
                        #   @param time_unit [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset::TimeUnit]

                        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset#offset_direction
                        module OffsetDirection
                          extend HubspotSDK::Internal::Type::Enum

                          PAST = :PAST
                          FUTURE = :FUTURE

                          # @!method self.values
                          #   @return [Array<Symbol>]
                        end

                        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy::UpperBoundOffset#time_unit
                        module TimeUnit
                          extend HubspotSDK::Internal::Type::Enum

                          WEEKS = :WEEKS
                          DAYS = :DAYS
                          HOURS = :HOURS
                          MINUTES = :MINUTES

                          # @!method self.values
                          #   @return [Array<Symbol>]
                        end
                      end
                    end

                    class EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute comparison
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy::Comparison]
                      required :comparison,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy::Comparison }

                      # @!attribute timestamp
                      #
                      #   @return [Integer]
                      required :timestamp, Integer

                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy::Type }

                      # @!method initialize(comparison:, timestamp:, type:)
                      #   @param comparison [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy::Comparison]
                      #   @param timestamp [Integer]
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy::Type]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy#comparison
                      module Comparison
                        extend HubspotSDK::Internal::Type::Enum

                        BEFORE = :BEFORE
                        AFTER = :AFTER

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        ABSOLUTE_COMPARATIVE_TIMESTAMP_REFINE_BY = :AbsoluteComparativeTimestampRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsAbsoluteRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute lower_timestamp
                      #
                      #   @return [Integer]
                      required :lower_timestamp, Integer, api_name: :lowerTimestamp

                      # @!attribute range_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy::RangeType]
                      required :range_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy::RangeType },
                               api_name: :rangeType

                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy::Type }

                      # @!attribute upper_timestamp
                      #
                      #   @return [Integer]
                      required :upper_timestamp, Integer, api_name: :upperTimestamp

                      # @!method initialize(lower_timestamp:, range_type:, type:, upper_timestamp:)
                      #   @param lower_timestamp [Integer]
                      #   @param range_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy::RangeType]
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy::Type]
                      #   @param upper_timestamp [Integer]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy#range_type
                      module RangeType
                        extend HubspotSDK::Internal::Type::Enum

                        BETWEEN = :BETWEEN
                        NOT_BETWEEN = :NOT_BETWEEN

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        ABSOLUTE_RANGED_TIMESTAMP_REFINE_BY = :AbsoluteRangedTimestampRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsAllHistoryRefineBy < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy::Type]
                      required :type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy::Type }

                      # @!method initialize(type:)
                      #   @param type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy::Type]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy#type
                      module Type
                        extend HubspotSDK::Internal::Type::Enum

                        ALL_HISTORY_REFINE_BY = :AllHistoryRefineBy

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsTimePointOperation < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute endpoint_behavior
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::EndpointBehavior]
                      required :endpoint_behavior,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::EndpointBehavior },
                               api_name: :endpointBehavior

                      # @!attribute include_objects_with_no_value_set
                      #
                      #   @return [Boolean]
                      required :include_objects_with_no_value_set,
                               HubspotSDK::Internal::Type::Boolean,
                               api_name: :includeObjectsWithNoValueSet

                      # @!attribute operation_type
                      #
                      #   @return [String]
                      required :operation_type, String, api_name: :operationType

                      # @!attribute operator
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::Operator]
                      required :operator,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::Operator }

                      # @!attribute operator_name
                      #
                      #   @return [String]
                      required :operator_name, String, api_name: :operatorName

                      # @!attribute property_parser
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::PropertyParser]
                      required :property_parser,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::PropertyParser },
                               api_name: :propertyParser

                      # @!attribute property_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::PropertyType]
                      required :property_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::PropertyType },
                               api_name: :propertyType

                      # @!attribute time_point
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime]
                      required :time_point,
                               union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint },
                               api_name: :timePoint

                      # @!attribute type
                      #
                      #   @return [String]
                      required :type, String

                      # @!attribute default_value
                      #
                      #   @return [String, nil]
                      optional :default_value, String, api_name: :defaultValue

                      # @!method initialize(endpoint_behavior:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_parser:, property_type:, time_point:, type:, default_value: nil)
                      #   @param endpoint_behavior [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::EndpointBehavior]
                      #   @param include_objects_with_no_value_set [Boolean]
                      #   @param operation_type [String]
                      #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::Operator]
                      #   @param operator_name [String]
                      #   @param property_parser [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::PropertyParser]
                      #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::PropertyType]
                      #   @param time_point [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime]
                      #   @param type [String]
                      #   @param default_value [String]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation#endpoint_behavior
                      module EndpointBehavior
                        extend HubspotSDK::Internal::Type::Enum

                        INCLUSIVE = :INCLUSIVE
                        EXCLUSIVE = :EXCLUSIVE

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation#operator
                      module Operator
                        extend HubspotSDK::Internal::Type::Enum

                        IS_BEFORE = :IS_BEFORE
                        IS_AFTER = :IS_AFTER

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation#property_parser
                      module PropertyParser
                        extend HubspotSDK::Internal::Type::Enum

                        VALUE = :VALUE
                        UPDATED_AT = :UPDATED_AT
                        ANNIVERSARY = :ANNIVERSARY
                        VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                        ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation#property_type
                      module PropertyType
                        extend HubspotSDK::Internal::Type::Enum

                        TIMEPOINT = :timepoint

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation#time_point
                      module TimePoint
                        extend HubspotSDK::Internal::Type::Union

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime }

                        class EventsEventdefinitionsDatePoint < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute year
                          #
                          #   @return [Integer]
                          required :year, Integer

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, time_type:, timezone_source:, year:, zone_id:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                          #   @param year [Integer]
                          #   @param zone_id [String]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            DATE = :DATE

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute index_reference
                          #
                          #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                          required :index_reference,
                                   union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference },
                                   api_name: :indexReference

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!attribute offset
                          #
                          #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::Offset, nil]
                          optional :offset,
                                   -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::Offset }

                          # @!method initialize(index_reference:, time_type:, timezone_source:, zone_id:, offset: nil)
                          #   @param index_reference [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                          #   @param zone_id [String]
                          #   @param offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::Offset]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint#index_reference
                          module IndexReference
                            extend HubspotSDK::Internal::Type::Union

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear }

                            class EventsEventdefinitionsNowReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                NOW = :NOW

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsTodayReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                TODAY = :TODAY

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsWeekReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day_of_week
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                              required :day_of_week,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek },
                                       api_name: :dayOfWeek

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day_of_week:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day_of_week [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#day_of_week
                              module DayOfWeek
                                extend HubspotSDK::Internal::Type::Enum

                                MONDAY = :MONDAY
                                TUESDAY = :TUESDAY
                                WEDNESDAY = :WEDNESDAY
                                THURSDAY = :THURSDAY
                                FRIDAY = :FRIDAY
                                SATURDAY = :SATURDAY
                                SUNDAY = :SUNDAY

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                WEEK = :WEEK

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsMonthReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                MONTH = :MONTH

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsQuarterReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                QUARTER = :QUARTER

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsFiscalQuarter < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                FISCAL_QUARTER = :FISCAL_QUARTER

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsYearReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                YEAR = :YEAR

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsFiscalYear < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                FISCAL_YEAR = :FISCAL_YEAR

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            # @!method self.variants
                            #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear)]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            INDEXED = :INDEXED

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint#offset
                          class Offset < HubspotSDK::Internal::Type::BaseModel
                            # @!attribute days
                            #
                            #   @return [Integer, nil]
                            optional :days, Integer

                            # @!attribute hours
                            #
                            #   @return [Integer, nil]
                            optional :hours, Integer

                            # @!attribute milliseconds
                            #
                            #   @return [Integer, nil]
                            optional :milliseconds, Integer

                            # @!attribute minutes
                            #
                            #   @return [Integer, nil]
                            optional :minutes, Integer

                            # @!attribute months
                            #
                            #   @return [Integer, nil]
                            optional :months, Integer

                            # @!attribute quarters
                            #
                            #   @return [Integer, nil]
                            optional :quarters, Integer

                            # @!attribute seconds
                            #
                            #   @return [Integer, nil]
                            optional :seconds, Integer

                            # @!attribute weeks
                            #
                            #   @return [Integer, nil]
                            optional :weeks, Integer

                            # @!attribute years
                            #
                            #   @return [Integer, nil]
                            optional :years, Integer

                            # @!method initialize(days: nil, hours: nil, milliseconds: nil, minutes: nil, months: nil, quarters: nil, seconds: nil, weeks: nil, years: nil)
                            #   @param days [Integer]
                            #   @param hours [Integer]
                            #   @param milliseconds [Integer]
                            #   @param minutes [Integer]
                            #   @param months [Integer]
                            #   @param quarters [Integer]
                            #   @param seconds [Integer]
                            #   @param weeks [Integer]
                            #   @param years [Integer]
                          end
                        end

                        class EventsEventdefinitionsPropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute property
                          #
                          #   @return [String]
                          required :property, String

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!method initialize(property:, reference_type:, time_type:, timezone_source:, zone_id:)
                          #   @param property [String]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                          #   @param zone_id [String]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            VALUE = :VALUE
                            UPDATED_AT = :UPDATED_AT
                            ANNIVERSARY = :ANNIVERSARY
                            VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                            ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            PROPERTY_REFERENCED = :PROPERTY_REFERENCED

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        # @!method self.variants
                        #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime)]
                      end
                    end

                    class EventsEventdefinitionsRangedTimeOperation < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute include_objects_with_no_value_set
                      #
                      #   @return [Boolean]
                      required :include_objects_with_no_value_set,
                               HubspotSDK::Internal::Type::Boolean,
                               api_name: :includeObjectsWithNoValueSet

                      # @!attribute lower_bound_endpoint_behavior
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundEndpointBehavior]
                      required :lower_bound_endpoint_behavior,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundEndpointBehavior },
                               api_name: :lowerBoundEndpointBehavior

                      # @!attribute lower_bound_time_point
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime]
                      required :lower_bound_time_point,
                               union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint },
                               api_name: :lowerBoundTimePoint

                      # @!attribute operation_type
                      #
                      #   @return [String]
                      required :operation_type, String, api_name: :operationType

                      # @!attribute operator
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::Operator]
                      required :operator,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::Operator }

                      # @!attribute operator_name
                      #
                      #   @return [String]
                      required :operator_name, String, api_name: :operatorName

                      # @!attribute property_parser
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::PropertyParser]
                      required :property_parser,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::PropertyParser },
                               api_name: :propertyParser

                      # @!attribute property_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::PropertyType]
                      required :property_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::PropertyType },
                               api_name: :propertyType

                      # @!attribute type
                      #
                      #   @return [String]
                      required :type, String

                      # @!attribute upper_bound_endpoint_behavior
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundEndpointBehavior]
                      required :upper_bound_endpoint_behavior,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundEndpointBehavior },
                               api_name: :upperBoundEndpointBehavior

                      # @!attribute upper_bound_time_point
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime]
                      required :upper_bound_time_point,
                               union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint },
                               api_name: :upperBoundTimePoint

                      # @!attribute default_value
                      #
                      #   @return [String, nil]
                      optional :default_value, String, api_name: :defaultValue

                      # @!method initialize(include_objects_with_no_value_set:, lower_bound_endpoint_behavior:, lower_bound_time_point:, operation_type:, operator:, operator_name:, property_parser:, property_type:, type:, upper_bound_endpoint_behavior:, upper_bound_time_point:, default_value: nil)
                      #   @param include_objects_with_no_value_set [Boolean]
                      #   @param lower_bound_endpoint_behavior [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundEndpointBehavior]
                      #   @param lower_bound_time_point [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime]
                      #   @param operation_type [String]
                      #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::Operator]
                      #   @param operator_name [String]
                      #   @param property_parser [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::PropertyParser]
                      #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::PropertyType]
                      #   @param type [String]
                      #   @param upper_bound_endpoint_behavior [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundEndpointBehavior]
                      #   @param upper_bound_time_point [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime]
                      #   @param default_value [String]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#lower_bound_endpoint_behavior
                      module LowerBoundEndpointBehavior
                        extend HubspotSDK::Internal::Type::Enum

                        INCLUSIVE = :INCLUSIVE
                        EXCLUSIVE = :EXCLUSIVE

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#lower_bound_time_point
                      module LowerBoundTimePoint
                        extend HubspotSDK::Internal::Type::Union

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime }

                        class EventsEventdefinitionsDatePoint < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute year
                          #
                          #   @return [Integer]
                          required :year, Integer

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, time_type:, timezone_source:, year:, zone_id:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                          #   @param year [Integer]
                          #   @param zone_id [String]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            DATE = :DATE

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute index_reference
                          #
                          #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                          required :index_reference,
                                   union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference },
                                   api_name: :indexReference

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!attribute offset
                          #
                          #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset, nil]
                          optional :offset,
                                   -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset }

                          # @!method initialize(index_reference:, time_type:, timezone_source:, zone_id:, offset: nil)
                          #   @param index_reference [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                          #   @param zone_id [String]
                          #   @param offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#index_reference
                          module IndexReference
                            extend HubspotSDK::Internal::Type::Union

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear }

                            class EventsEventdefinitionsNowReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                NOW = :NOW

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsTodayReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                TODAY = :TODAY

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsWeekReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day_of_week
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                              required :day_of_week,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek },
                                       api_name: :dayOfWeek

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day_of_week:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day_of_week [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#day_of_week
                              module DayOfWeek
                                extend HubspotSDK::Internal::Type::Enum

                                MONDAY = :MONDAY
                                TUESDAY = :TUESDAY
                                WEDNESDAY = :WEDNESDAY
                                THURSDAY = :THURSDAY
                                FRIDAY = :FRIDAY
                                SATURDAY = :SATURDAY
                                SUNDAY = :SUNDAY

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                WEEK = :WEEK

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsMonthReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                MONTH = :MONTH

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsQuarterReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                QUARTER = :QUARTER

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsFiscalQuarter < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                FISCAL_QUARTER = :FISCAL_QUARTER

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsYearReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                YEAR = :YEAR

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsFiscalYear < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                FISCAL_YEAR = :FISCAL_YEAR

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            # @!method self.variants
                            #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear)]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            INDEXED = :INDEXED

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#offset
                          class Offset < HubspotSDK::Internal::Type::BaseModel
                            # @!attribute days
                            #
                            #   @return [Integer, nil]
                            optional :days, Integer

                            # @!attribute hours
                            #
                            #   @return [Integer, nil]
                            optional :hours, Integer

                            # @!attribute milliseconds
                            #
                            #   @return [Integer, nil]
                            optional :milliseconds, Integer

                            # @!attribute minutes
                            #
                            #   @return [Integer, nil]
                            optional :minutes, Integer

                            # @!attribute months
                            #
                            #   @return [Integer, nil]
                            optional :months, Integer

                            # @!attribute quarters
                            #
                            #   @return [Integer, nil]
                            optional :quarters, Integer

                            # @!attribute seconds
                            #
                            #   @return [Integer, nil]
                            optional :seconds, Integer

                            # @!attribute weeks
                            #
                            #   @return [Integer, nil]
                            optional :weeks, Integer

                            # @!attribute years
                            #
                            #   @return [Integer, nil]
                            optional :years, Integer

                            # @!method initialize(days: nil, hours: nil, milliseconds: nil, minutes: nil, months: nil, quarters: nil, seconds: nil, weeks: nil, years: nil)
                            #   @param days [Integer]
                            #   @param hours [Integer]
                            #   @param milliseconds [Integer]
                            #   @param minutes [Integer]
                            #   @param months [Integer]
                            #   @param quarters [Integer]
                            #   @param seconds [Integer]
                            #   @param weeks [Integer]
                            #   @param years [Integer]
                          end
                        end

                        class EventsEventdefinitionsPropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute property
                          #
                          #   @return [String]
                          required :property, String

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!method initialize(property:, reference_type:, time_type:, timezone_source:, zone_id:)
                          #   @param property [String]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                          #   @param zone_id [String]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            VALUE = :VALUE
                            UPDATED_AT = :UPDATED_AT
                            ANNIVERSARY = :ANNIVERSARY
                            VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                            ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            PROPERTY_REFERENCED = :PROPERTY_REFERENCED

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        # @!method self.variants
                        #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime)]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#operator
                      module Operator
                        extend HubspotSDK::Internal::Type::Enum

                        IS_BETWEEN = :IS_BETWEEN
                        IS_NOT_BETWEEN = :IS_NOT_BETWEEN

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#property_parser
                      module PropertyParser
                        extend HubspotSDK::Internal::Type::Enum

                        VALUE = :VALUE
                        UPDATED_AT = :UPDATED_AT
                        ANNIVERSARY = :ANNIVERSARY
                        VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                        ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#property_type
                      module PropertyType
                        extend HubspotSDK::Internal::Type::Enum

                        RANGEDTIME = :rangedtime

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#upper_bound_endpoint_behavior
                      module UpperBoundEndpointBehavior
                        extend HubspotSDK::Internal::Type::Enum

                        INCLUSIVE = :INCLUSIVE
                        EXCLUSIVE = :EXCLUSIVE

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation#upper_bound_time_point
                      module UpperBoundTimePoint
                        extend HubspotSDK::Internal::Type::Union

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime }

                        class EventsEventdefinitionsDatePoint < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute year
                          #
                          #   @return [Integer]
                          required :year, Integer

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, time_type:, timezone_source:, year:, zone_id:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                          #   @param year [Integer]
                          #   @param zone_id [String]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            DATE = :DATE

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute index_reference
                          #
                          #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                          required :index_reference,
                                   union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference },
                                   api_name: :indexReference

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!attribute offset
                          #
                          #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset, nil]
                          optional :offset,
                                   -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset }

                          # @!method initialize(index_reference:, time_type:, timezone_source:, zone_id:, offset: nil)
                          #   @param index_reference [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                          #   @param zone_id [String]
                          #   @param offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#index_reference
                          module IndexReference
                            extend HubspotSDK::Internal::Type::Union

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference }

                            variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear }

                            class EventsEventdefinitionsNowReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                NOW = :NOW

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsTodayReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                TODAY = :TODAY

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsWeekReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day_of_week
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                              required :day_of_week,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek },
                                       api_name: :dayOfWeek

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day_of_week:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day_of_week [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#day_of_week
                              module DayOfWeek
                                extend HubspotSDK::Internal::Type::Enum

                                MONDAY = :MONDAY
                                TUESDAY = :TUESDAY
                                WEDNESDAY = :WEDNESDAY
                                THURSDAY = :THURSDAY
                                FRIDAY = :FRIDAY
                                SATURDAY = :SATURDAY
                                SUNDAY = :SUNDAY

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                WEEK = :WEEK

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsMonthReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                MONTH = :MONTH

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsQuarterReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                QUARTER = :QUARTER

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsFiscalQuarter < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                FISCAL_QUARTER = :FISCAL_QUARTER

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsYearReference < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                YEAR = :YEAR

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            class EventsEventdefinitionsFiscalYear < HubspotSDK::Internal::Type::BaseModel
                              # @!attribute day
                              #
                              #   @return [Integer]
                              required :day, Integer

                              # @!attribute month
                              #
                              #   @return [Integer]
                              required :month, Integer

                              # @!attribute reference_type
                              #
                              #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                              required :reference_type,
                                       enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType },
                                       api_name: :referenceType

                              # @!attribute hour
                              #
                              #   @return [Integer, nil]
                              optional :hour, Integer

                              # @!attribute millisecond
                              #
                              #   @return [Integer, nil]
                              optional :millisecond, Integer

                              # @!attribute minute
                              #
                              #   @return [Integer, nil]
                              optional :minute, Integer

                              # @!attribute second
                              #
                              #   @return [Integer, nil]
                              optional :second, Integer

                              # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                              #   @param day [Integer]
                              #   @param month [Integer]
                              #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                              #   @param hour [Integer]
                              #   @param millisecond [Integer]
                              #   @param minute [Integer]
                              #   @param second [Integer]

                              # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear#reference_type
                              module ReferenceType
                                extend HubspotSDK::Internal::Type::Enum

                                FISCAL_YEAR = :FISCAL_YEAR

                                # @!method self.values
                                #   @return [Array<Symbol>]
                              end
                            end

                            # @!method self.variants
                            #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear)]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            INDEXED = :INDEXED

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#offset
                          class Offset < HubspotSDK::Internal::Type::BaseModel
                            # @!attribute days
                            #
                            #   @return [Integer, nil]
                            optional :days, Integer

                            # @!attribute hours
                            #
                            #   @return [Integer, nil]
                            optional :hours, Integer

                            # @!attribute milliseconds
                            #
                            #   @return [Integer, nil]
                            optional :milliseconds, Integer

                            # @!attribute minutes
                            #
                            #   @return [Integer, nil]
                            optional :minutes, Integer

                            # @!attribute months
                            #
                            #   @return [Integer, nil]
                            optional :months, Integer

                            # @!attribute quarters
                            #
                            #   @return [Integer, nil]
                            optional :quarters, Integer

                            # @!attribute seconds
                            #
                            #   @return [Integer, nil]
                            optional :seconds, Integer

                            # @!attribute weeks
                            #
                            #   @return [Integer, nil]
                            optional :weeks, Integer

                            # @!attribute years
                            #
                            #   @return [Integer, nil]
                            optional :years, Integer

                            # @!method initialize(days: nil, hours: nil, milliseconds: nil, minutes: nil, months: nil, quarters: nil, seconds: nil, weeks: nil, years: nil)
                            #   @param days [Integer]
                            #   @param hours [Integer]
                            #   @param milliseconds [Integer]
                            #   @param minutes [Integer]
                            #   @param months [Integer]
                            #   @param quarters [Integer]
                            #   @param seconds [Integer]
                            #   @param weeks [Integer]
                            #   @param years [Integer]
                          end
                        end

                        class EventsEventdefinitionsPropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute property
                          #
                          #   @return [String]
                          required :property, String

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute time_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                          required :time_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType },
                                   api_name: :timeType

                          # @!attribute timezone_source
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                          required :timezone_source,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource },
                                   api_name: :timezoneSource

                          # @!attribute zone_id
                          #
                          #   @return [String]
                          required :zone_id, String, api_name: :zoneId

                          # @!method initialize(property:, reference_type:, time_type:, timezone_source:, zone_id:)
                          #   @param property [String]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                          #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                          #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                          #   @param zone_id [String]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            VALUE = :VALUE
                            UPDATED_AT = :UPDATED_AT
                            ANNIVERSARY = :ANNIVERSARY
                            VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                            ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#time_type
                          module TimeType
                            extend HubspotSDK::Internal::Type::Enum

                            PROPERTY_REFERENCED = :PROPERTY_REFERENCED

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#timezone_source
                          module TimezoneSource
                            extend HubspotSDK::Internal::Type::Enum

                            CUSTOM = :CUSTOM
                            USER = :USER
                            PORTAL = :PORTAL

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        # @!method self.variants
                        #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime)]
                      end
                    end

                    # @!method self.variants
                    #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeComparativeTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRelativeRangedTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteComparativeTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAbsoluteRangedTimestampRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsAllHistoryRefineBy, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsTimePointOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation::PruningRefineBy::EventsEventdefinitionsRangedTimeOperation)]
                  end
                end

                class EventsEventdefinitionsDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute day
                  #
                  #   @return [Integer]
                  required :day, Integer

                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute month
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation::Month]
                  required :month,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation::Month }

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute year
                  #
                  #   @return [Integer]
                  required :year, Integer

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(day:, include_objects_with_no_value_set:, month:, operation_type:, operator:, operator_name:, property_type:, year:, default_value: nil)
                  #   @param day [Integer]
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param month [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation::Month]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation::PropertyType]
                  #   @param year [Integer]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation#month
                  module Month
                    extend HubspotSDK::Internal::Type::Enum

                    JAN = :JAN
                    FEB = :FEB
                    MAR = :MAR
                    APR = :APR
                    MAY = :MAY
                    JUN = :JUN
                    JUL = :JUL
                    AUG = :AUG
                    SEP = :SEP
                    OCT = :OCT
                    NOV = :NOV
                    DEC = :DEC

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    EQUAL = :EQUAL
                    BEFORE = :BEFORE
                    AFTER = :AFTER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    DATE = :date

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsCalendarDatePropertyOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute time_unit
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation::TimeUnit]
                  required :time_unit,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation::TimeUnit },
                           api_name: :timeUnit

                  # @!attribute time_unit_count
                  #
                  #   @return [Integer]
                  required :time_unit_count, Integer, api_name: :timeUnitCount

                  # @!attribute use_fiscal_year
                  #
                  #   @return [Boolean]
                  required :use_fiscal_year, HubspotSDK::Internal::Type::Boolean, api_name: :useFiscalYear

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!attribute fiscal_year_start
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation::FiscalYearStart, nil]
                  optional :fiscal_year_start,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation::FiscalYearStart },
                           api_name: :fiscalYearStart

                  # @!method initialize(include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_type:, time_unit:, time_unit_count:, use_fiscal_year:, default_value: nil, fiscal_year_start: nil)
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation::PropertyType]
                  #   @param time_unit [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation::TimeUnit]
                  #   @param time_unit_count [Integer]
                  #   @param use_fiscal_year [Boolean]
                  #   @param default_value [String]
                  #   @param fiscal_year_start [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation::FiscalYearStart]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IN_THIS_TIME_UNIT = :IN_THIS_TIME_UNIT
                    IN_THIS_TIME_UNIT_SO_FAR = :IN_THIS_TIME_UNIT_SO_FAR
                    IN_NEXT_TIME_UNIT = :IN_NEXT_TIME_UNIT
                    IN_LAST_TIME_UNIT = :IN_LAST_TIME_UNIT

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    CALENDAR_DATE = :"calendar-date"

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation#time_unit
                  module TimeUnit
                    extend HubspotSDK::Internal::Type::Enum

                    DAY = :DAY
                    WEEK = :WEEK
                    MONTH = :MONTH
                    QUARTER = :QUARTER
                    YEAR = :YEAR

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation#fiscal_year_start
                  module FiscalYearStart
                    extend HubspotSDK::Internal::Type::Enum

                    JANUARY = :JANUARY
                    FEBRUARY = :FEBRUARY
                    MARCH = :MARCH
                    APRIL = :APRIL
                    MAY = :MAY
                    JUNE = :JUNE
                    JULY = :JULY
                    AUGUST = :AUGUST
                    SEPTEMBER = :SEPTEMBER
                    OCTOBER = :OCTOBER
                    NOVEMBER = :NOVEMBER
                    DECEMBER = :DECEMBER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                class EventsEventdefinitionsTimePointOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute endpoint_behavior
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::EndpointBehavior]
                  required :endpoint_behavior,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::EndpointBehavior },
                           api_name: :endpointBehavior

                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_parser
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::PropertyParser]
                  required :property_parser,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::PropertyParser },
                           api_name: :propertyParser

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute time_point
                  #
                  #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime]
                  required :time_point,
                           union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint },
                           api_name: :timePoint

                  # @!attribute type
                  #
                  #   @return [String]
                  required :type, String

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(endpoint_behavior:, include_objects_with_no_value_set:, operation_type:, operator:, operator_name:, property_parser:, property_type:, time_point:, type:, default_value: nil)
                  #   @param endpoint_behavior [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::EndpointBehavior]
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_parser [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::PropertyParser]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::PropertyType]
                  #   @param time_point [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime]
                  #   @param type [String]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation#endpoint_behavior
                  module EndpointBehavior
                    extend HubspotSDK::Internal::Type::Enum

                    INCLUSIVE = :INCLUSIVE
                    EXCLUSIVE = :EXCLUSIVE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_BEFORE = :IS_BEFORE
                    IS_AFTER = :IS_AFTER

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation#property_parser
                  module PropertyParser
                    extend HubspotSDK::Internal::Type::Enum

                    VALUE = :VALUE
                    UPDATED_AT = :UPDATED_AT
                    ANNIVERSARY = :ANNIVERSARY
                    VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                    ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    TIMEPOINT = :timepoint

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation#time_point
                  module TimePoint
                    extend HubspotSDK::Internal::Type::Union

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime }

                    class EventsEventdefinitionsDatePoint < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute day
                      #
                      #   @return [Integer]
                      required :day, Integer

                      # @!attribute month
                      #
                      #   @return [Integer]
                      required :month, Integer

                      # @!attribute time_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimeType]
                      required :time_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimeType },
                               api_name: :timeType

                      # @!attribute timezone_source
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                      required :timezone_source,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimezoneSource },
                               api_name: :timezoneSource

                      # @!attribute year
                      #
                      #   @return [Integer]
                      required :year, Integer

                      # @!attribute zone_id
                      #
                      #   @return [String]
                      required :zone_id, String, api_name: :zoneId

                      # @!attribute hour
                      #
                      #   @return [Integer, nil]
                      optional :hour, Integer

                      # @!attribute millisecond
                      #
                      #   @return [Integer, nil]
                      optional :millisecond, Integer

                      # @!attribute minute
                      #
                      #   @return [Integer, nil]
                      optional :minute, Integer

                      # @!attribute second
                      #
                      #   @return [Integer, nil]
                      optional :second, Integer

                      # @!method initialize(day:, month:, time_type:, timezone_source:, year:, zone_id:, hour: nil, millisecond: nil, minute: nil, second: nil)
                      #   @param day [Integer]
                      #   @param month [Integer]
                      #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimeType]
                      #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                      #   @param year [Integer]
                      #   @param zone_id [String]
                      #   @param hour [Integer]
                      #   @param millisecond [Integer]
                      #   @param minute [Integer]
                      #   @param second [Integer]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint#time_type
                      module TimeType
                        extend HubspotSDK::Internal::Type::Enum

                        DATE = :DATE

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint#timezone_source
                      module TimezoneSource
                        extend HubspotSDK::Internal::Type::Enum

                        CUSTOM = :CUSTOM
                        USER = :USER
                        PORTAL = :PORTAL

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute index_reference
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                      required :index_reference,
                               union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference },
                               api_name: :indexReference

                      # @!attribute time_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                      required :time_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType },
                               api_name: :timeType

                      # @!attribute timezone_source
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                      required :timezone_source,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource },
                               api_name: :timezoneSource

                      # @!attribute zone_id
                      #
                      #   @return [String]
                      required :zone_id, String, api_name: :zoneId

                      # @!attribute offset
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::Offset, nil]
                      optional :offset,
                               -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::Offset }

                      # @!method initialize(index_reference:, time_type:, timezone_source:, zone_id:, offset: nil)
                      #   @param index_reference [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                      #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                      #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                      #   @param zone_id [String]
                      #   @param offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::Offset]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint#index_reference
                      module IndexReference
                        extend HubspotSDK::Internal::Type::Union

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear }

                        class EventsEventdefinitionsNowReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            NOW = :NOW

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsTodayReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            TODAY = :TODAY

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsWeekReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day_of_week
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                          required :day_of_week,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek },
                                   api_name: :dayOfWeek

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day_of_week:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day_of_week [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#day_of_week
                          module DayOfWeek
                            extend HubspotSDK::Internal::Type::Enum

                            MONDAY = :MONDAY
                            TUESDAY = :TUESDAY
                            WEDNESDAY = :WEDNESDAY
                            THURSDAY = :THURSDAY
                            FRIDAY = :FRIDAY
                            SATURDAY = :SATURDAY
                            SUNDAY = :SUNDAY

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            WEEK = :WEEK

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsMonthReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            MONTH = :MONTH

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsQuarterReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            QUARTER = :QUARTER

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsFiscalQuarter < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            FISCAL_QUARTER = :FISCAL_QUARTER

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsYearReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            YEAR = :YEAR

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsFiscalYear < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            FISCAL_YEAR = :FISCAL_YEAR

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        # @!method self.variants
                        #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear)]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint#time_type
                      module TimeType
                        extend HubspotSDK::Internal::Type::Enum

                        INDEXED = :INDEXED

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint#timezone_source
                      module TimezoneSource
                        extend HubspotSDK::Internal::Type::Enum

                        CUSTOM = :CUSTOM
                        USER = :USER
                        PORTAL = :PORTAL

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint#offset
                      class Offset < HubspotSDK::Internal::Type::BaseModel
                        # @!attribute days
                        #
                        #   @return [Integer, nil]
                        optional :days, Integer

                        # @!attribute hours
                        #
                        #   @return [Integer, nil]
                        optional :hours, Integer

                        # @!attribute milliseconds
                        #
                        #   @return [Integer, nil]
                        optional :milliseconds, Integer

                        # @!attribute minutes
                        #
                        #   @return [Integer, nil]
                        optional :minutes, Integer

                        # @!attribute months
                        #
                        #   @return [Integer, nil]
                        optional :months, Integer

                        # @!attribute quarters
                        #
                        #   @return [Integer, nil]
                        optional :quarters, Integer

                        # @!attribute seconds
                        #
                        #   @return [Integer, nil]
                        optional :seconds, Integer

                        # @!attribute weeks
                        #
                        #   @return [Integer, nil]
                        optional :weeks, Integer

                        # @!attribute years
                        #
                        #   @return [Integer, nil]
                        optional :years, Integer

                        # @!method initialize(days: nil, hours: nil, milliseconds: nil, minutes: nil, months: nil, quarters: nil, seconds: nil, weeks: nil, years: nil)
                        #   @param days [Integer]
                        #   @param hours [Integer]
                        #   @param milliseconds [Integer]
                        #   @param minutes [Integer]
                        #   @param months [Integer]
                        #   @param quarters [Integer]
                        #   @param seconds [Integer]
                        #   @param weeks [Integer]
                        #   @param years [Integer]
                      end
                    end

                    class EventsEventdefinitionsPropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute property
                      #
                      #   @return [String]
                      required :property, String

                      # @!attribute reference_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                      required :reference_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType },
                               api_name: :referenceType

                      # @!attribute time_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                      required :time_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType },
                               api_name: :timeType

                      # @!attribute timezone_source
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                      required :timezone_source,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource },
                               api_name: :timezoneSource

                      # @!attribute zone_id
                      #
                      #   @return [String]
                      required :zone_id, String, api_name: :zoneId

                      # @!method initialize(property:, reference_type:, time_type:, timezone_source:, zone_id:)
                      #   @param property [String]
                      #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                      #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                      #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                      #   @param zone_id [String]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime#reference_type
                      module ReferenceType
                        extend HubspotSDK::Internal::Type::Enum

                        VALUE = :VALUE
                        UPDATED_AT = :UPDATED_AT
                        ANNIVERSARY = :ANNIVERSARY
                        VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                        ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime#time_type
                      module TimeType
                        extend HubspotSDK::Internal::Type::Enum

                        PROPERTY_REFERENCED = :PROPERTY_REFERENCED

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime#timezone_source
                      module TimezoneSource
                        extend HubspotSDK::Internal::Type::Enum

                        CUSTOM = :CUSTOM
                        USER = :USER
                        PORTAL = :PORTAL

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    # @!method self.variants
                    #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation::TimePoint::EventsEventdefinitionsPropertyReferencedTime)]
                  end
                end

                class EventsEventdefinitionsRangedTimeOperation < HubspotSDK::Internal::Type::BaseModel
                  # @!attribute include_objects_with_no_value_set
                  #
                  #   @return [Boolean]
                  required :include_objects_with_no_value_set,
                           HubspotSDK::Internal::Type::Boolean,
                           api_name: :includeObjectsWithNoValueSet

                  # @!attribute lower_bound_endpoint_behavior
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundEndpointBehavior]
                  required :lower_bound_endpoint_behavior,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundEndpointBehavior },
                           api_name: :lowerBoundEndpointBehavior

                  # @!attribute lower_bound_time_point
                  #
                  #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime]
                  required :lower_bound_time_point,
                           union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint },
                           api_name: :lowerBoundTimePoint

                  # @!attribute operation_type
                  #
                  #   @return [String]
                  required :operation_type, String, api_name: :operationType

                  # @!attribute operator
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::Operator]
                  required :operator,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::Operator }

                  # @!attribute operator_name
                  #
                  #   @return [String]
                  required :operator_name, String, api_name: :operatorName

                  # @!attribute property_parser
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::PropertyParser]
                  required :property_parser,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::PropertyParser },
                           api_name: :propertyParser

                  # @!attribute property_type
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::PropertyType]
                  required :property_type,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::PropertyType },
                           api_name: :propertyType

                  # @!attribute type
                  #
                  #   @return [String]
                  required :type, String

                  # @!attribute upper_bound_endpoint_behavior
                  #
                  #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundEndpointBehavior]
                  required :upper_bound_endpoint_behavior,
                           enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundEndpointBehavior },
                           api_name: :upperBoundEndpointBehavior

                  # @!attribute upper_bound_time_point
                  #
                  #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime]
                  required :upper_bound_time_point,
                           union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint },
                           api_name: :upperBoundTimePoint

                  # @!attribute default_value
                  #
                  #   @return [String, nil]
                  optional :default_value, String, api_name: :defaultValue

                  # @!method initialize(include_objects_with_no_value_set:, lower_bound_endpoint_behavior:, lower_bound_time_point:, operation_type:, operator:, operator_name:, property_parser:, property_type:, type:, upper_bound_endpoint_behavior:, upper_bound_time_point:, default_value: nil)
                  #   @param include_objects_with_no_value_set [Boolean]
                  #   @param lower_bound_endpoint_behavior [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundEndpointBehavior]
                  #   @param lower_bound_time_point [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime]
                  #   @param operation_type [String]
                  #   @param operator [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::Operator]
                  #   @param operator_name [String]
                  #   @param property_parser [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::PropertyParser]
                  #   @param property_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::PropertyType]
                  #   @param type [String]
                  #   @param upper_bound_endpoint_behavior [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundEndpointBehavior]
                  #   @param upper_bound_time_point [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime]
                  #   @param default_value [String]

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation#lower_bound_endpoint_behavior
                  module LowerBoundEndpointBehavior
                    extend HubspotSDK::Internal::Type::Enum

                    INCLUSIVE = :INCLUSIVE
                    EXCLUSIVE = :EXCLUSIVE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation#lower_bound_time_point
                  module LowerBoundTimePoint
                    extend HubspotSDK::Internal::Type::Union

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime }

                    class EventsEventdefinitionsDatePoint < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute day
                      #
                      #   @return [Integer]
                      required :day, Integer

                      # @!attribute month
                      #
                      #   @return [Integer]
                      required :month, Integer

                      # @!attribute time_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType]
                      required :time_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType },
                               api_name: :timeType

                      # @!attribute timezone_source
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                      required :timezone_source,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource },
                               api_name: :timezoneSource

                      # @!attribute year
                      #
                      #   @return [Integer]
                      required :year, Integer

                      # @!attribute zone_id
                      #
                      #   @return [String]
                      required :zone_id, String, api_name: :zoneId

                      # @!attribute hour
                      #
                      #   @return [Integer, nil]
                      optional :hour, Integer

                      # @!attribute millisecond
                      #
                      #   @return [Integer, nil]
                      optional :millisecond, Integer

                      # @!attribute minute
                      #
                      #   @return [Integer, nil]
                      optional :minute, Integer

                      # @!attribute second
                      #
                      #   @return [Integer, nil]
                      optional :second, Integer

                      # @!method initialize(day:, month:, time_type:, timezone_source:, year:, zone_id:, hour: nil, millisecond: nil, minute: nil, second: nil)
                      #   @param day [Integer]
                      #   @param month [Integer]
                      #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType]
                      #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                      #   @param year [Integer]
                      #   @param zone_id [String]
                      #   @param hour [Integer]
                      #   @param millisecond [Integer]
                      #   @param minute [Integer]
                      #   @param second [Integer]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint#time_type
                      module TimeType
                        extend HubspotSDK::Internal::Type::Enum

                        DATE = :DATE

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint#timezone_source
                      module TimezoneSource
                        extend HubspotSDK::Internal::Type::Enum

                        CUSTOM = :CUSTOM
                        USER = :USER
                        PORTAL = :PORTAL

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute index_reference
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                      required :index_reference,
                               union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference },
                               api_name: :indexReference

                      # @!attribute time_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                      required :time_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType },
                               api_name: :timeType

                      # @!attribute timezone_source
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                      required :timezone_source,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource },
                               api_name: :timezoneSource

                      # @!attribute zone_id
                      #
                      #   @return [String]
                      required :zone_id, String, api_name: :zoneId

                      # @!attribute offset
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset, nil]
                      optional :offset,
                               -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset }

                      # @!method initialize(index_reference:, time_type:, timezone_source:, zone_id:, offset: nil)
                      #   @param index_reference [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                      #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                      #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                      #   @param zone_id [String]
                      #   @param offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#index_reference
                      module IndexReference
                        extend HubspotSDK::Internal::Type::Union

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear }

                        class EventsEventdefinitionsNowReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            NOW = :NOW

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsTodayReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            TODAY = :TODAY

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsWeekReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day_of_week
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                          required :day_of_week,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek },
                                   api_name: :dayOfWeek

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day_of_week:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day_of_week [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#day_of_week
                          module DayOfWeek
                            extend HubspotSDK::Internal::Type::Enum

                            MONDAY = :MONDAY
                            TUESDAY = :TUESDAY
                            WEDNESDAY = :WEDNESDAY
                            THURSDAY = :THURSDAY
                            FRIDAY = :FRIDAY
                            SATURDAY = :SATURDAY
                            SUNDAY = :SUNDAY

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            WEEK = :WEEK

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsMonthReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            MONTH = :MONTH

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsQuarterReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            QUARTER = :QUARTER

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsFiscalQuarter < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            FISCAL_QUARTER = :FISCAL_QUARTER

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsYearReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            YEAR = :YEAR

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsFiscalYear < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            FISCAL_YEAR = :FISCAL_YEAR

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        # @!method self.variants
                        #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear)]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#time_type
                      module TimeType
                        extend HubspotSDK::Internal::Type::Enum

                        INDEXED = :INDEXED

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#timezone_source
                      module TimezoneSource
                        extend HubspotSDK::Internal::Type::Enum

                        CUSTOM = :CUSTOM
                        USER = :USER
                        PORTAL = :PORTAL

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#offset
                      class Offset < HubspotSDK::Internal::Type::BaseModel
                        # @!attribute days
                        #
                        #   @return [Integer, nil]
                        optional :days, Integer

                        # @!attribute hours
                        #
                        #   @return [Integer, nil]
                        optional :hours, Integer

                        # @!attribute milliseconds
                        #
                        #   @return [Integer, nil]
                        optional :milliseconds, Integer

                        # @!attribute minutes
                        #
                        #   @return [Integer, nil]
                        optional :minutes, Integer

                        # @!attribute months
                        #
                        #   @return [Integer, nil]
                        optional :months, Integer

                        # @!attribute quarters
                        #
                        #   @return [Integer, nil]
                        optional :quarters, Integer

                        # @!attribute seconds
                        #
                        #   @return [Integer, nil]
                        optional :seconds, Integer

                        # @!attribute weeks
                        #
                        #   @return [Integer, nil]
                        optional :weeks, Integer

                        # @!attribute years
                        #
                        #   @return [Integer, nil]
                        optional :years, Integer

                        # @!method initialize(days: nil, hours: nil, milliseconds: nil, minutes: nil, months: nil, quarters: nil, seconds: nil, weeks: nil, years: nil)
                        #   @param days [Integer]
                        #   @param hours [Integer]
                        #   @param milliseconds [Integer]
                        #   @param minutes [Integer]
                        #   @param months [Integer]
                        #   @param quarters [Integer]
                        #   @param seconds [Integer]
                        #   @param weeks [Integer]
                        #   @param years [Integer]
                      end
                    end

                    class EventsEventdefinitionsPropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute property
                      #
                      #   @return [String]
                      required :property, String

                      # @!attribute reference_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                      required :reference_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType },
                               api_name: :referenceType

                      # @!attribute time_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                      required :time_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType },
                               api_name: :timeType

                      # @!attribute timezone_source
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                      required :timezone_source,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource },
                               api_name: :timezoneSource

                      # @!attribute zone_id
                      #
                      #   @return [String]
                      required :zone_id, String, api_name: :zoneId

                      # @!method initialize(property:, reference_type:, time_type:, timezone_source:, zone_id:)
                      #   @param property [String]
                      #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                      #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                      #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                      #   @param zone_id [String]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#reference_type
                      module ReferenceType
                        extend HubspotSDK::Internal::Type::Enum

                        VALUE = :VALUE
                        UPDATED_AT = :UPDATED_AT
                        ANNIVERSARY = :ANNIVERSARY
                        VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                        ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#time_type
                      module TimeType
                        extend HubspotSDK::Internal::Type::Enum

                        PROPERTY_REFERENCED = :PROPERTY_REFERENCED

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#timezone_source
                      module TimezoneSource
                        extend HubspotSDK::Internal::Type::Enum

                        CUSTOM = :CUSTOM
                        USER = :USER
                        PORTAL = :PORTAL

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    # @!method self.variants
                    #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::LowerBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime)]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation#operator
                  module Operator
                    extend HubspotSDK::Internal::Type::Enum

                    IS_BETWEEN = :IS_BETWEEN
                    IS_NOT_BETWEEN = :IS_NOT_BETWEEN

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation#property_parser
                  module PropertyParser
                    extend HubspotSDK::Internal::Type::Enum

                    VALUE = :VALUE
                    UPDATED_AT = :UPDATED_AT
                    ANNIVERSARY = :ANNIVERSARY
                    VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                    ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation#property_type
                  module PropertyType
                    extend HubspotSDK::Internal::Type::Enum

                    RANGEDTIME = :rangedtime

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation#upper_bound_endpoint_behavior
                  module UpperBoundEndpointBehavior
                    extend HubspotSDK::Internal::Type::Enum

                    INCLUSIVE = :INCLUSIVE
                    EXCLUSIVE = :EXCLUSIVE

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation#upper_bound_time_point
                  module UpperBoundTimePoint
                    extend HubspotSDK::Internal::Type::Union

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint }

                    variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime }

                    class EventsEventdefinitionsDatePoint < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute day
                      #
                      #   @return [Integer]
                      required :day, Integer

                      # @!attribute month
                      #
                      #   @return [Integer]
                      required :month, Integer

                      # @!attribute time_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType]
                      required :time_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType },
                               api_name: :timeType

                      # @!attribute timezone_source
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                      required :timezone_source,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource },
                               api_name: :timezoneSource

                      # @!attribute year
                      #
                      #   @return [Integer]
                      required :year, Integer

                      # @!attribute zone_id
                      #
                      #   @return [String]
                      required :zone_id, String, api_name: :zoneId

                      # @!attribute hour
                      #
                      #   @return [Integer, nil]
                      optional :hour, Integer

                      # @!attribute millisecond
                      #
                      #   @return [Integer, nil]
                      optional :millisecond, Integer

                      # @!attribute minute
                      #
                      #   @return [Integer, nil]
                      optional :minute, Integer

                      # @!attribute second
                      #
                      #   @return [Integer, nil]
                      optional :second, Integer

                      # @!method initialize(day:, month:, time_type:, timezone_source:, year:, zone_id:, hour: nil, millisecond: nil, minute: nil, second: nil)
                      #   @param day [Integer]
                      #   @param month [Integer]
                      #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimeType]
                      #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint::TimezoneSource]
                      #   @param year [Integer]
                      #   @param zone_id [String]
                      #   @param hour [Integer]
                      #   @param millisecond [Integer]
                      #   @param minute [Integer]
                      #   @param second [Integer]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint#time_type
                      module TimeType
                        extend HubspotSDK::Internal::Type::Enum

                        DATE = :DATE

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint#timezone_source
                      module TimezoneSource
                        extend HubspotSDK::Internal::Type::Enum

                        CUSTOM = :CUSTOM
                        USER = :USER
                        PORTAL = :PORTAL

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    class EventsEventdefinitionsIndexedTimePoint < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute index_reference
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                      required :index_reference,
                               union: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference },
                               api_name: :indexReference

                      # @!attribute time_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                      required :time_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType },
                               api_name: :timeType

                      # @!attribute timezone_source
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                      required :timezone_source,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource },
                               api_name: :timezoneSource

                      # @!attribute zone_id
                      #
                      #   @return [String]
                      required :zone_id, String, api_name: :zoneId

                      # @!attribute offset
                      #
                      #   @return [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset, nil]
                      optional :offset,
                               -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset }

                      # @!method initialize(index_reference:, time_type:, timezone_source:, zone_id:, offset: nil)
                      #   @param index_reference [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear]
                      #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimeType]
                      #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::TimezoneSource]
                      #   @param zone_id [String]
                      #   @param offset [HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::Offset]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#index_reference
                      module IndexReference
                        extend HubspotSDK::Internal::Type::Union

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference }

                        variant -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear }

                        class EventsEventdefinitionsNowReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            NOW = :NOW

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsTodayReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            TODAY = :TODAY

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsWeekReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day_of_week
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                          required :day_of_week,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek },
                                   api_name: :dayOfWeek

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day_of_week:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day_of_week [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::DayOfWeek]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#day_of_week
                          module DayOfWeek
                            extend HubspotSDK::Internal::Type::Enum

                            MONDAY = :MONDAY
                            TUESDAY = :TUESDAY
                            WEDNESDAY = :WEDNESDAY
                            THURSDAY = :THURSDAY
                            FRIDAY = :FRIDAY
                            SATURDAY = :SATURDAY
                            SUNDAY = :SUNDAY

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            WEEK = :WEEK

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsMonthReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            MONTH = :MONTH

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsQuarterReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            QUARTER = :QUARTER

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsFiscalQuarter < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            FISCAL_QUARTER = :FISCAL_QUARTER

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsYearReference < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            YEAR = :YEAR

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        class EventsEventdefinitionsFiscalYear < HubspotSDK::Internal::Type::BaseModel
                          # @!attribute day
                          #
                          #   @return [Integer]
                          required :day, Integer

                          # @!attribute month
                          #
                          #   @return [Integer]
                          required :month, Integer

                          # @!attribute reference_type
                          #
                          #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                          required :reference_type,
                                   enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType },
                                   api_name: :referenceType

                          # @!attribute hour
                          #
                          #   @return [Integer, nil]
                          optional :hour, Integer

                          # @!attribute millisecond
                          #
                          #   @return [Integer, nil]
                          optional :millisecond, Integer

                          # @!attribute minute
                          #
                          #   @return [Integer, nil]
                          optional :minute, Integer

                          # @!attribute second
                          #
                          #   @return [Integer, nil]
                          optional :second, Integer

                          # @!method initialize(day:, month:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
                          #   @param day [Integer]
                          #   @param month [Integer]
                          #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear::ReferenceType]
                          #   @param hour [Integer]
                          #   @param millisecond [Integer]
                          #   @param minute [Integer]
                          #   @param second [Integer]

                          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear#reference_type
                          module ReferenceType
                            extend HubspotSDK::Internal::Type::Enum

                            FISCAL_YEAR = :FISCAL_YEAR

                            # @!method self.values
                            #   @return [Array<Symbol>]
                          end
                        end

                        # @!method self.variants
                        #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsNowReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsTodayReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsWeekReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsMonthReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsQuarterReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalQuarter, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsYearReference, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint::IndexReference::EventsEventdefinitionsFiscalYear)]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#time_type
                      module TimeType
                        extend HubspotSDK::Internal::Type::Enum

                        INDEXED = :INDEXED

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#timezone_source
                      module TimezoneSource
                        extend HubspotSDK::Internal::Type::Enum

                        CUSTOM = :CUSTOM
                        USER = :USER
                        PORTAL = :PORTAL

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint#offset
                      class Offset < HubspotSDK::Internal::Type::BaseModel
                        # @!attribute days
                        #
                        #   @return [Integer, nil]
                        optional :days, Integer

                        # @!attribute hours
                        #
                        #   @return [Integer, nil]
                        optional :hours, Integer

                        # @!attribute milliseconds
                        #
                        #   @return [Integer, nil]
                        optional :milliseconds, Integer

                        # @!attribute minutes
                        #
                        #   @return [Integer, nil]
                        optional :minutes, Integer

                        # @!attribute months
                        #
                        #   @return [Integer, nil]
                        optional :months, Integer

                        # @!attribute quarters
                        #
                        #   @return [Integer, nil]
                        optional :quarters, Integer

                        # @!attribute seconds
                        #
                        #   @return [Integer, nil]
                        optional :seconds, Integer

                        # @!attribute weeks
                        #
                        #   @return [Integer, nil]
                        optional :weeks, Integer

                        # @!attribute years
                        #
                        #   @return [Integer, nil]
                        optional :years, Integer

                        # @!method initialize(days: nil, hours: nil, milliseconds: nil, minutes: nil, months: nil, quarters: nil, seconds: nil, weeks: nil, years: nil)
                        #   @param days [Integer]
                        #   @param hours [Integer]
                        #   @param milliseconds [Integer]
                        #   @param minutes [Integer]
                        #   @param months [Integer]
                        #   @param quarters [Integer]
                        #   @param seconds [Integer]
                        #   @param weeks [Integer]
                        #   @param years [Integer]
                      end
                    end

                    class EventsEventdefinitionsPropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
                      # @!attribute property
                      #
                      #   @return [String]
                      required :property, String

                      # @!attribute reference_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                      required :reference_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType },
                               api_name: :referenceType

                      # @!attribute time_type
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                      required :time_type,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType },
                               api_name: :timeType

                      # @!attribute timezone_source
                      #
                      #   @return [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                      required :timezone_source,
                               enum: -> { HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource },
                               api_name: :timezoneSource

                      # @!attribute zone_id
                      #
                      #   @return [String]
                      required :zone_id, String, api_name: :zoneId

                      # @!method initialize(property:, reference_type:, time_type:, timezone_source:, zone_id:)
                      #   @param property [String]
                      #   @param reference_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::ReferenceType]
                      #   @param time_type [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimeType]
                      #   @param timezone_source [Symbol, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime::TimezoneSource]
                      #   @param zone_id [String]

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#reference_type
                      module ReferenceType
                        extend HubspotSDK::Internal::Type::Enum

                        VALUE = :VALUE
                        UPDATED_AT = :UPDATED_AT
                        ANNIVERSARY = :ANNIVERSARY
                        VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
                        ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#time_type
                      module TimeType
                        extend HubspotSDK::Internal::Type::Enum

                        PROPERTY_REFERENCED = :PROPERTY_REFERENCED

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end

                      # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime#timezone_source
                      module TimezoneSource
                        extend HubspotSDK::Internal::Type::Enum

                        CUSTOM = :CUSTOM
                        USER = :USER
                        PORTAL = :PORTAL

                        # @!method self.values
                        #   @return [Array<Symbol>]
                      end
                    end

                    # @!method self.variants
                    #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsDatePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsIndexedTimePoint, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation::UpperBoundTimePoint::EventsEventdefinitionsPropertyReferencedTime)]
                  end
                end

                # @!method self.variants
                #   @return [Array(HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsBoolPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsNumberPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsStringPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDateTimePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedDatePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativeDatePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsComparativePropertyUpdatedOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingDateRangePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRollingPropertyUpdatedOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsEnumerationPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsAllPropertyTypesOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedNumberPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsMultiStringPropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsDatePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsCalendarDatePropertyOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsTimePointOperation, HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules::ComposingRule::PropertyFilter::Operation::EventsEventdefinitionsRangedTimeOperation)]
              end
            end
          end

          # @see HubspotSDK::Models::Events::EventDefinitionGetResponse::ComboEventRules#operation_type
          module OperationType
            extend HubspotSDK::Internal::Type::Enum

            AND = :AND
            OR = :OR

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see HubspotSDK::Models::Events::EventDefinitionGetResponse#tracking_type
        module TrackingType
          extend HubspotSDK::Internal::Type::Enum

          VISITED_URL = :VISITED_URL
          CLICKED_ELEMENT = :CLICKED_ELEMENT
          CUSTOM_SCRIPT = :CUSTOM_SCRIPT
          MANUAL = :MANUAL
          IMPORT = :IMPORT
          PROPERTY_CHANGE = :PROPERTY_CHANGE
          COMBO_EVENT = :COMBO_EVENT
          WEBHOOK = :WEBHOOK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
