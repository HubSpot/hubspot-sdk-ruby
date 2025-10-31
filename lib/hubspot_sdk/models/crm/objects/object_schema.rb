# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        # @see HubspotSDK::Resources::CRM::Objects::Schemas#create
        class ObjectSchema < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   A unique ID for this schema's object type. Will be defined as
          #   {meta-type}-{unique ID}.
          #
          #   @return [String]
          required :id, String

          # @!attribute associations
          #   Associations defined for a given object type.
          #
          #   @return [Array<HubspotSDK::Models::CRM::Objects::ObjectSchema::Association>]
          required :associations,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Objects::ObjectSchema::Association] }

          # @!attribute labels
          #
          #   @return [HubspotSDK::Models::ObjectTypeDefinitionLabels]
          required :labels, -> { HubspotSDK::ObjectTypeDefinitionLabels }

          # @!attribute name
          #   A unique name for the schema's object type.
          #
          #   @return [String]
          required :name, String

          # @!attribute properties
          #   Properties defined for this object type.
          #
          #   @return [Array<HubspotSDK::Models::Property>]
          required :properties, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property] }

          # @!attribute required_properties
          #   The names of properties that should be **required** when creating an object of
          #   this type.
          #
          #   @return [Array<String>]
          required :required_properties,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :requiredProperties

          # @!attribute archived
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute created_at
          #   When the object schema was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time, api_name: :createdAt

          # @!attribute created_by_user_id
          #
          #   @return [Integer, nil]
          optional :created_by_user_id, Integer, api_name: :createdByUserId

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute fully_qualified_name
          #   An assigned unique ID for the object, including portal ID and object name.
          #
          #   @return [String, nil]
          optional :fully_qualified_name, String, api_name: :fullyQualifiedName

          # @!attribute object_type_id
          #
          #   @return [String, nil]
          optional :object_type_id, String, api_name: :objectTypeId

          # @!attribute primary_display_property
          #   The name of the primary property for this object. This will be displayed as
          #   primary on the HubSpot record page for this object type.
          #
          #   @return [String, nil]
          optional :primary_display_property, String, api_name: :primaryDisplayProperty

          # @!attribute searchable_properties
          #   Names of properties that will be indexed for this object type in by HubSpot's
          #   product search.
          #
          #   @return [Array<String>, nil]
          optional :searchable_properties,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :searchableProperties

          # @!attribute secondary_display_properties
          #   The names of secondary properties for this object. These will be displayed as
          #   secondary on the HubSpot record page for this object type.
          #
          #   @return [Array<String>, nil]
          optional :secondary_display_properties,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :secondaryDisplayProperties

          # @!attribute updated_at
          #   When the object schema was last updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time, api_name: :updatedAt

          # @!attribute updated_by_user_id
          #
          #   @return [Integer, nil]
          optional :updated_by_user_id, Integer, api_name: :updatedByUserId

          # @!method initialize(id:, associations:, labels:, name:, properties:, required_properties:, archived: nil, created_at: nil, created_by_user_id: nil, description: nil, fully_qualified_name: nil, object_type_id: nil, primary_display_property: nil, searchable_properties: nil, secondary_display_properties: nil, updated_at: nil, updated_by_user_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::CRM::Objects::ObjectSchema} for more details.
          #
          #   Defines an object schema, including its properties and associations.
          #
          #   @param id [String] A unique ID for this schema's object type. Will be defined as {meta-type}-{uniqu
          #
          #   @param associations [Array<HubspotSDK::Models::CRM::Objects::ObjectSchema::Association>] Associations defined for a given object type.
          #
          #   @param labels [HubspotSDK::Models::ObjectTypeDefinitionLabels]
          #
          #   @param name [String] A unique name for the schema's object type.
          #
          #   @param properties [Array<HubspotSDK::Models::Property>] Properties defined for this object type.
          #
          #   @param required_properties [Array<String>] The names of properties that should be **required** when creating an object of t
          #
          #   @param archived [Boolean]
          #
          #   @param created_at [Time] When the object schema was created.
          #
          #   @param created_by_user_id [Integer]
          #
          #   @param description [String]
          #
          #   @param fully_qualified_name [String] An assigned unique ID for the object, including portal ID and object name.
          #
          #   @param object_type_id [String]
          #
          #   @param primary_display_property [String] The name of the primary property for this object. This will be displayed as prim
          #
          #   @param searchable_properties [Array<String>] Names of properties that will be indexed for this object type in by HubSpot's pr
          #
          #   @param secondary_display_properties [Array<String>] The names of secondary properties for this object. These will be displayed as se
          #
          #   @param updated_at [Time] When the object schema was last updated.
          #
          #   @param updated_by_user_id [Integer]

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
            #   @return [Symbol, HubspotSDK::Models::CRM::Objects::ObjectSchema::Association::Cardinality]
            required :cardinality, enum: -> { HubspotSDK::CRM::Objects::ObjectSchema::Association::Cardinality }

            # @!attribute category
            #   The category of the association. Can be: "HUBSPOT_DEFINED", "USER_DEFINED", or
            #   "INTEGRATOR_DEFINED"
            #
            #   @return [Symbol, HubspotSDK::Models::CRM::Objects::ObjectSchema::Association::Category]
            required :category, enum: -> { HubspotSDK::CRM::Objects::ObjectSchema::Association::Category }

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
            required :has_cascading_deletes,
                     HubspotSDK::Internal::Type::Boolean,
                     api_name: :hasCascadingDeletes

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
            #   @return [Symbol, HubspotSDK::Models::CRM::Objects::ObjectSchema::Association::InverseCardinality]
            required :inverse_cardinality,
                     enum: -> { HubspotSDK::CRM::Objects::ObjectSchema::Association::InverseCardinality },
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
            #   @return [Symbol, HubspotSDK::Models::CRM::Objects::ObjectSchema::Association::FromObjectType, nil]
            optional :from_object_type,
                     enum: -> { HubspotSDK::CRM::Objects::ObjectSchema::Association::FromObjectType },
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
            #   @return [Symbol, HubspotSDK::Models::CRM::Objects::ObjectSchema::Association::ToObjectType, nil]
            optional :to_object_type,
                     enum: -> { HubspotSDK::CRM::Objects::ObjectSchema::Association::ToObjectType },
                     api_name: :toObjectType

            # @!method initialize(id:, allows_custom_labels:, cardinality:, category:, from_object_type_id:, has_all_associated_objects:, has_cascading_deletes:, has_user_enforced_max_from_object_ids:, has_user_enforced_max_to_object_ids:, hidden:, inverse_allows_custom_labels:, inverse_cardinality:, inverse_has_all_associated_objects:, inverse_id:, inverse_name:, is_inverse_primary:, is_primary:, max_from_object_ids:, max_to_object_ids:, name:, portal_unique_identifier:, to_object_type_id:, from_object_type: nil, inverse_label: nil, label: nil, to_object_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {HubspotSDK::Models::CRM::Objects::ObjectSchema::Association} for more details.
            #
            #   The definition of an association
            #
            #   @param id [Integer] The unique ID of the associated object (e.g., a contact ID).
            #
            #   @param allows_custom_labels [Boolean] Whether custom labels can be used in the association.
            #
            #   @param cardinality [Symbol, HubspotSDK::Models::CRM::Objects::ObjectSchema::Association::Cardinality] The cardinality from the source object's perspective, either "ONE_TO_ONE" or "ON
            #
            #   @param category [Symbol, HubspotSDK::Models::CRM::Objects::ObjectSchema::Association::Category] The category of the association. Can be: "HUBSPOT_DEFINED", "USER_DEFINED", or "
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
            #   @param inverse_cardinality [Symbol, HubspotSDK::Models::CRM::Objects::ObjectSchema::Association::InverseCardinality] The cardinality from the destination object's perspective, either "ONE_TO_ONE" o
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
            #   @param from_object_type [Symbol, HubspotSDK::Models::CRM::Objects::ObjectSchema::Association::FromObjectType] The name of the source object type (e.g,. "DEAL" or "QUOTE").
            #
            #   @param inverse_label [String] The label used to describe the reverse relationship in an association.
            #
            #   @param label [String] The label given to an association.
            #
            #   @param to_object_type [Symbol, HubspotSDK::Models::CRM::Objects::ObjectSchema::Association::ToObjectType] The name of the destination object type (e.g,. "DEAL" or "QUOTE").

            # The cardinality from the source object's perspective, either "ONE_TO_ONE" or
            # "ONE_TO_MANY".
            #
            # @see HubspotSDK::Models::CRM::Objects::ObjectSchema::Association#cardinality
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
            # @see HubspotSDK::Models::CRM::Objects::ObjectSchema::Association#category
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
            # @see HubspotSDK::Models::CRM::Objects::ObjectSchema::Association#inverse_cardinality
            module InverseCardinality
              extend HubspotSDK::Internal::Type::Enum

              ONE_TO_ONE = :ONE_TO_ONE
              ONE_TO_MANY = :ONE_TO_MANY

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The name of the source object type (e.g,. "DEAL" or "QUOTE").
            #
            # @see HubspotSDK::Models::CRM::Objects::ObjectSchema::Association#from_object_type
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
            # @see HubspotSDK::Models::CRM::Objects::ObjectSchema::Association#to_object_type
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
        end
      end
    end
  end
end
