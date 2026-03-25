# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class Property < HubspotSDK::Internal::Type::BaseModel
        # @!attribute allowed_object_types
        #   Object types permitted to use this property.
        #
        #   @return [Array<HubspotSDK::Models::Cms::ObjectTypeIDProto>]
        required :allowed_object_types,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ObjectTypeIDProto] },
                 api_name: :allowedObjectTypes

        # @!attribute calculated
        #   Whether the property is a calculated field.
        #
        #   @return [Boolean]
        required :calculated, HubspotSDK::Internal::Type::Boolean

        # @!attribute can_archive
        #
        #   @return [Boolean]
        required :can_archive, HubspotSDK::Internal::Type::Boolean, api_name: :canArchive

        # @!attribute can_restore
        #
        #   @return [Boolean]
        required :can_restore, HubspotSDK::Internal::Type::Boolean, api_name: :canRestore

        # @!attribute created_at
        #   The timestamp when the property was created, in ISO 8601 format.
        #
        #   @return [Integer]
        required :created_at, Integer, api_name: :createdAt

        # @!attribute created_user_id
        #   The ID of the user who created the property.
        #
        #   @return [Integer]
        required :created_user_id, Integer, api_name: :createdUserId

        # @!attribute currency_property_name
        #   The name of the related currency property.
        #
        #   @return [String]
        required :currency_property_name, String, api_name: :currencyPropertyName

        # @!attribute data_sensitivity
        #   Indicates the sensitivity level of the property, such as "non_sensitive",
        #   "sensitive", or "highly_sensitive".
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Property::DataSensitivity]
        required :data_sensitivity,
                 enum: -> { HubspotSDK::Cms::Property::DataSensitivity },
                 api_name: :dataSensitivity

        # @!attribute date_display_hint
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Property::DateDisplayHint]
        required :date_display_hint,
                 enum: -> { HubspotSDK::Cms::Property::DateDisplayHint },
                 api_name: :dateDisplayHint

        # @!attribute deleted
        #   Whether the property has been deleted.
        #
        #   @return [Boolean]
        required :deleted, HubspotSDK::Internal::Type::Boolean

        # @!attribute description
        #   A summary of the property's purpose.
        #
        #   @return [String]
        required :description, String

        # @!attribute display_mode
        #   The mode in which the property is displayed. Can be: "current_value" or
        #   "all_unique_versions".
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Property::DisplayMode]
        required :display_mode, enum: -> { HubspotSDK::Cms::Property::DisplayMode }, api_name: :displayMode

        # @!attribute display_order
        #   The position of the item relative to others in the list.
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute enforce_multivalue_uniqueness
        #
        #   @return [Boolean]
        required :enforce_multivalue_uniqueness,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :enforceMultivalueUniqueness

        # @!attribute external_options
        #   Applicable only for enumeration type properties. Should be set to true with a
        #   'referencedObjectType' of 'OWNER'. Otherwise false.
        #
        #   @return [Boolean]
        required :external_options, HubspotSDK::Internal::Type::Boolean, api_name: :externalOptions

        # @!attribute external_options_reference_type
        #   When externalOptions is true, indicates the property's option values will be
        #   populated from other systems (e.g., "OWNER" for the hubspot_owner_id property).
        #
        #   @return [String]
        required :external_options_reference_type, String, api_name: :externalOptionsReferenceType

        # @!attribute favorited
        #   Deprecated. Whether the property is marked as a favorite.
        #
        #   @return [Boolean]
        required :favorited, HubspotSDK::Internal::Type::Boolean

        # @!attribute favorited_order
        #   Deprecated. The order position when marked as favorited.
        #
        #   @return [Integer]
        required :favorited_order, Integer, api_name: :favoritedOrder

        # @!attribute field_type
        #   Determines how the property will appear in HubSpot's UI or on a form. Learn more
        #   in the properties API guide.
        #
        #   @return [String]
        required :field_type, String, api_name: :fieldType

        # @!attribute form_field
        #   Whether the property can appear on forms.
        #
        #   @return [Boolean]
        required :form_field, HubspotSDK::Internal::Type::Boolean, api_name: :formField

        # @!attribute from_user_id
        #   The ID of the user who last updated the property.
        #
        #   @return [Integer]
        required :from_user_id, Integer, api_name: :fromUserId

        # @!attribute group_name
        #   The name of the group to which the property is assigned.
        #
        #   @return [String]
        required :group_name, String, api_name: :groupName

        # @!attribute has_unique_value
        #   Whether the property is a unique identifier property.
        #
        #   @return [Boolean]
        required :has_unique_value, HubspotSDK::Internal::Type::Boolean, api_name: :hasUniqueValue

        # @!attribute hidden
        #   Whether or not the property will be hidden from the HubSpot UI. It's recommended
        #   that this be set to false for custom properties.
        #
        #   @return [Boolean]
        required :hidden, HubspotSDK::Internal::Type::Boolean

        # @!attribute hubspot_defined
        #   A boolean value set to true for HubSpot default properties.
        #
        #   @return [Boolean]
        required :hubspot_defined, HubspotSDK::Internal::Type::Boolean, api_name: :hubspotDefined

        # @!attribute is_customized_default
        #   For default properties, whether the property has been customized. Equivalent to
        #   the 'isCustomizedDefault' field.
        #
        #   @return [Boolean]
        required :is_customized_default, HubspotSDK::Internal::Type::Boolean, api_name: :isCustomizedDefault

        # @!attribute is_multi_valued
        #   Whether the property can contain multiple values.
        #
        #   @return [Boolean]
        required :is_multi_valued, HubspotSDK::Internal::Type::Boolean, api_name: :isMultiValued

        # @!attribute is_partial
        #   For default properties, whether the property has been customized. Equivalent to
        #   the 'isCustomizedDefault' field.
        #
        #   @return [Boolean]
        required :is_partial, HubspotSDK::Internal::Type::Boolean, api_name: :isPartial

        # @!attribute label
        #   The display label for the property.
        #
        #   @return [String]
        required :label, String

        # @!attribute mutable_definition_not_deletable
        #   Whether the property definition can be customized but not deleted.
        #
        #   @return [Boolean]
        required :mutable_definition_not_deletable,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :mutableDefinitionNotDeletable

        # @!attribute name
        #   The internal name for the property.
        #
        #   @return [String]
        required :name, String

        # @!attribute number_display_hint
        #   Hint for how a number property is displayed and validated in HubSpot's UI. Can
        #   be: "unformatted", "formatted", "currency", "percentage", "duration", or
        #   "probability".
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Property::NumberDisplayHint]
        required :number_display_hint,
                 enum: -> { HubspotSDK::Cms::Property::NumberDisplayHint },
                 api_name: :numberDisplayHint

        # @!attribute options
        #   A list of valid options for the property. This field is required for enumerated
        #   properties.
        #
        #   @return [Array<HubspotSDK::Models::Option>]
        required :options, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Option] }

        # @!attribute options_are_mutable
        #   Whether options can be modified after creation.
        #
        #   @return [Boolean]
        required :options_are_mutable, HubspotSDK::Internal::Type::Boolean, api_name: :optionsAreMutable

        # @!attribute option_sort_strategy
        #   Specifies how to sort property options. Can be either "DISPLAY_ORDER" to defer
        #   to the displayOrder field, or "ALPHABETICAL".
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Property::OptionSortStrategy]
        required :option_sort_strategy,
                 enum: -> { HubspotSDK::Cms::Property::OptionSortStrategy },
                 api_name: :optionSortStrategy

        # @!attribute owning_app_id
        #
        #   @return [Integer]
        required :owning_app_id, Integer, api_name: :owningAppId

        # @!attribute portal_id
        #   The ID of the HubSpot account where the property is defined.
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute read_only_definition
        #   Whether the property's description is read-only.
        #
        #   @return [Boolean]
        required :read_only_definition, HubspotSDK::Internal::Type::Boolean, api_name: :readOnlyDefinition

        # @!attribute read_only_value
        #   Indicates if the property's value is read-only.
        #
        #   @return [Boolean]
        required :read_only_value, HubspotSDK::Internal::Type::Boolean, api_name: :readOnlyValue

        # @!attribute referenced_object_type
        #   Deprecated. Use externalOptionsReferenceType instead.
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Property::ReferencedObjectType]
        required :referenced_object_type,
                 enum: -> { HubspotSDK::Cms::Property::ReferencedObjectType },
                 api_name: :referencedObjectType

        # @!attribute searchable_in_global_search
        #   Whether the property is searchable globaly.
        #
        #   @return [Boolean]
        required :searchable_in_global_search,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :searchableInGlobalSearch

        # @!attribute search_text_analysis_mode
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Property::SearchTextAnalysisMode]
        required :search_text_analysis_mode,
                 enum: -> { HubspotSDK::Cms::Property::SearchTextAnalysisMode },
                 api_name: :searchTextAnalysisMode

        # @!attribute sensitive_data_categories
        #   When sensitiveData is true, lists the type of sensitive data contained in the
        #   property (e.g., "HIPAA").
        #
        #   @return [Array<String>]
        required :sensitive_data_categories,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :sensitiveDataCategories

        # @!attribute show_currency_symbol
        #   Whether to show the currency symbol in HubSpot's UI.
        #
        #   @return [Boolean]
        required :show_currency_symbol, HubspotSDK::Internal::Type::Boolean, api_name: :showCurrencySymbol

        # @!attribute text_display_hint
        #   Hint for how the text is displayed and validated in HubSpot's UI. Can be:
        #   "unformatted_single_line", "multi_line", "email", "phone_number", "domain_name",
        #   "ip_address", "physical_address", or "postal_code".
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Property::TextDisplayHint]
        required :text_display_hint,
                 enum: -> { HubspotSDK::Cms::Property::TextDisplayHint },
                 api_name: :textDisplayHint

        # @!attribute type
        #   The data type of the property, such as string or number.
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::Property::Type]
        required :type, enum: -> { HubspotSDK::Cms::Property::Type }

        # @!attribute updated_at
        #   The timestamp when the property was last updated, in ISO 8601 format.
        #
        #   @return [Integer]
        required :updated_at, Integer, api_name: :updatedAt

        # @!method initialize(allowed_object_types:, calculated:, can_archive:, can_restore:, created_at:, created_user_id:, currency_property_name:, data_sensitivity:, date_display_hint:, deleted:, description:, display_mode:, display_order:, enforce_multivalue_uniqueness:, external_options:, external_options_reference_type:, favorited:, favorited_order:, field_type:, form_field:, from_user_id:, group_name:, has_unique_value:, hidden:, hubspot_defined:, is_customized_default:, is_multi_valued:, is_partial:, label:, mutable_definition_not_deletable:, name:, number_display_hint:, options:, options_are_mutable:, option_sort_strategy:, owning_app_id:, portal_id:, read_only_definition:, read_only_value:, referenced_object_type:, searchable_in_global_search:, search_text_analysis_mode:, sensitive_data_categories:, show_currency_symbol:, text_display_hint:, type:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::Property} for more details.
        #
        #   A HubSpot property
        #
        #   @param allowed_object_types [Array<HubspotSDK::Models::Cms::ObjectTypeIDProto>] Object types permitted to use this property.
        #
        #   @param calculated [Boolean] Whether the property is a calculated field.
        #
        #   @param can_archive [Boolean]
        #
        #   @param can_restore [Boolean]
        #
        #   @param created_at [Integer] The timestamp when the property was created, in ISO 8601 format.
        #
        #   @param created_user_id [Integer] The ID of the user who created the property.
        #
        #   @param currency_property_name [String] The name of the related currency property.
        #
        #   @param data_sensitivity [Symbol, HubspotSDK::Models::Cms::Property::DataSensitivity] Indicates the sensitivity level of the property, such as "non_sensitive", "sensi
        #
        #   @param date_display_hint [Symbol, HubspotSDK::Models::Cms::Property::DateDisplayHint]
        #
        #   @param deleted [Boolean] Whether the property has been deleted.
        #
        #   @param description [String] A summary of the property's purpose.
        #
        #   @param display_mode [Symbol, HubspotSDK::Models::Cms::Property::DisplayMode] The mode in which the property is displayed. Can be: "current_value" or "all_uni
        #
        #   @param display_order [Integer] The position of the item relative to others in the list.
        #
        #   @param enforce_multivalue_uniqueness [Boolean]
        #
        #   @param external_options [Boolean] Applicable only for enumeration type properties. Should be set to true with a 'r
        #
        #   @param external_options_reference_type [String] When externalOptions is true, indicates the property's option values will be pop
        #
        #   @param favorited [Boolean] Deprecated. Whether the property is marked as a favorite.
        #
        #   @param favorited_order [Integer] Deprecated. The order position when marked as favorited.
        #
        #   @param field_type [String] Determines how the property will appear in HubSpot's UI or on a form. Learn more
        #
        #   @param form_field [Boolean] Whether the property can appear on forms.
        #
        #   @param from_user_id [Integer] The ID of the user who last updated the property.
        #
        #   @param group_name [String] The name of the group to which the property is assigned.
        #
        #   @param has_unique_value [Boolean] Whether the property is a unique identifier property.
        #
        #   @param hidden [Boolean] Whether or not the property will be hidden from the HubSpot UI. It's recommended
        #
        #   @param hubspot_defined [Boolean] A boolean value set to true for HubSpot default properties.
        #
        #   @param is_customized_default [Boolean] For default properties, whether the property has been customized. Equivalent to
        #
        #   @param is_multi_valued [Boolean] Whether the property can contain multiple values.
        #
        #   @param is_partial [Boolean] For default properties, whether the property has been customized. Equivalent to
        #
        #   @param label [String] The display label for the property.
        #
        #   @param mutable_definition_not_deletable [Boolean] Whether the property definition can be customized but not deleted.
        #
        #   @param name [String] The internal name for the property.
        #
        #   @param number_display_hint [Symbol, HubspotSDK::Models::Cms::Property::NumberDisplayHint] Hint for how a number property is displayed and validated in HubSpot's UI. Can b
        #
        #   @param options [Array<HubspotSDK::Models::Option>] A list of valid options for the property. This field is required for enumerated
        #
        #   @param options_are_mutable [Boolean] Whether options can be modified after creation.
        #
        #   @param option_sort_strategy [Symbol, HubspotSDK::Models::Cms::Property::OptionSortStrategy] Specifies how to sort property options. Can be either "DISPLAY_ORDER" to defer t
        #
        #   @param owning_app_id [Integer]
        #
        #   @param portal_id [Integer] The ID of the HubSpot account where the property is defined.
        #
        #   @param read_only_definition [Boolean] Whether the property's description is read-only.
        #
        #   @param read_only_value [Boolean] Indicates if the property's value is read-only.
        #
        #   @param referenced_object_type [Symbol, HubspotSDK::Models::Cms::Property::ReferencedObjectType] Deprecated. Use externalOptionsReferenceType instead.
        #
        #   @param searchable_in_global_search [Boolean] Whether the property is searchable globaly.
        #
        #   @param search_text_analysis_mode [Symbol, HubspotSDK::Models::Cms::Property::SearchTextAnalysisMode]
        #
        #   @param sensitive_data_categories [Array<String>] When sensitiveData is true, lists the type of sensitive data contained in the pr
        #
        #   @param show_currency_symbol [Boolean] Whether to show the currency symbol in HubSpot's UI.
        #
        #   @param text_display_hint [Symbol, HubspotSDK::Models::Cms::Property::TextDisplayHint] Hint for how the text is displayed and validated in HubSpot's UI. Can be: "unfor
        #
        #   @param type [Symbol, HubspotSDK::Models::Cms::Property::Type] The data type of the property, such as string or number.
        #
        #   @param updated_at [Integer] The timestamp when the property was last updated, in ISO 8601 format.

        # Indicates the sensitivity level of the property, such as "non_sensitive",
        # "sensitive", or "highly_sensitive".
        #
        # @see HubspotSDK::Models::Cms::Property#data_sensitivity
        module DataSensitivity
          extend HubspotSDK::Internal::Type::Enum

          HIGH = :high
          NONE = :none
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Cms::Property#date_display_hint
        module DateDisplayHint
          extend HubspotSDK::Internal::Type::Enum

          ABSOLUTE = :absolute
          ABSOLUTE_WITH_RELATIVE = :absolute_with_relative
          TIME_SINCE = :time_since
          TIME_UNTIL = :time_until

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The mode in which the property is displayed. Can be: "current_value" or
        # "all_unique_versions".
        #
        # @see HubspotSDK::Models::Cms::Property#display_mode
        module DisplayMode
          extend HubspotSDK::Internal::Type::Enum

          ALL_UNIQUE_VERSIONS = :all_unique_versions
          CURRENT_VALUE = :current_value

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Hint for how a number property is displayed and validated in HubSpot's UI. Can
        # be: "unformatted", "formatted", "currency", "percentage", "duration", or
        # "probability".
        #
        # @see HubspotSDK::Models::Cms::Property#number_display_hint
        module NumberDisplayHint
          extend HubspotSDK::Internal::Type::Enum

          CURRENCY = :currency
          DURATION = :duration
          FORMATTED = :formatted
          PERCENTAGE = :percentage
          PROBABILITY = :probability
          UNFORMATTED = :unformatted

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies how to sort property options. Can be either "DISPLAY_ORDER" to defer
        # to the displayOrder field, or "ALPHABETICAL".
        #
        # @see HubspotSDK::Models::Cms::Property#option_sort_strategy
        module OptionSortStrategy
          extend HubspotSDK::Internal::Type::Enum

          ALPHABETICAL = :ALPHABETICAL
          DISPLAY_ORDER = :DISPLAY_ORDER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Deprecated. Use externalOptionsReferenceType instead.
        #
        # @see HubspotSDK::Models::Cms::Property#referenced_object_type
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

        # @see HubspotSDK::Models::Cms::Property#search_text_analysis_mode
        module SearchTextAnalysisMode
          extend HubspotSDK::Internal::Type::Enum

          NONE = :NONE
          NOT_ANALYZED_TEXT = :NOT_ANALYZED_TEXT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Hint for how the text is displayed and validated in HubSpot's UI. Can be:
        # "unformatted_single_line", "multi_line", "email", "phone_number", "domain_name",
        # "ip_address", "physical_address", or "postal_code".
        #
        # @see HubspotSDK::Models::Cms::Property#text_display_hint
        module TextDisplayHint
          extend HubspotSDK::Internal::Type::Enum

          DOMAIN_NAME = :domain_name
          EMAIL = :email
          IP_ADDRESS = :ip_address
          MULTI_LINE = :multi_line
          PHONE_NUMBER = :phone_number
          PHYSICAL_ADDRESS = :physical_address
          POSTAL_CODE = :postal_code
          UNFORMATTED_SINGLE_LINE = :unformatted_single_line

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The data type of the property, such as string or number.
        #
        # @see HubspotSDK::Models::Cms::Property#type
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
      end
    end
  end
end
