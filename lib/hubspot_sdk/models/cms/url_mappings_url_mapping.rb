# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class URLMappingsURLMapping < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the URL mapping, represented as a 64-bit integer.
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute cdn_purge_embargo_time
        #   A Unix timestamp in milliseconds indicating the embargo time for CDN purge
        #   related to the URL mapping.
        #
        #   @return [Integer]
        required :cdn_purge_embargo_time, Integer, api_name: :cdnPurgeEmbargoTime

        # @!attribute content_group_id
        #   A 64-bit integer representing the content group associated with the URL mapping.
        #
        #   @return [Integer]
        required :content_group_id, Integer, api_name: :contentGroupId

        # @!attribute cos_object_type
        #   A string representing the type of content object associated with the URL
        #   mapping. Valid values include various content types such as 'CONTENT', 'LAYOUT',
        #   'FILE', etc.
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::URLMappingsURLMapping::CosObjectType]
        required :cos_object_type,
                 enum: -> { HubspotSDK::Cms::URLMappingsURLMapping::CosObjectType },
                 api_name: :cosObjectType

        # @!attribute created
        #   A Unix timestamp in milliseconds indicating when the URL mapping was created.
        #
        #   @return [Integer]
        required :created, Integer

        # @!attribute created_by_id
        #   The identifier of the user who created the URL mapping.
        #
        #   @return [Integer]
        required :created_by_id, Integer, api_name: :createdById

        # @!attribute deleted_at
        #   A Unix timestamp in milliseconds indicating when the URL mapping was deleted.
        #
        #   @return [Integer]
        required :deleted_at, Integer, api_name: :deletedAt

        # @!attribute destination
        #   The destination URL to which the routePrefix is redirected.
        #
        #   @return [String]
        required :destination, String

        # @!attribute internally_created
        #   A boolean indicating if the URL mapping was created internally by the system.
        #
        #   @return [Boolean]
        required :internally_created, HubspotSDK::Internal::Type::Boolean, api_name: :internallyCreated

        # @!attribute is_active
        #   A boolean indicating if the URL mapping is currently active.
        #
        #   @return [Boolean]
        required :is_active, HubspotSDK::Internal::Type::Boolean, api_name: :isActive

        # @!attribute is_match_full_url
        #   A boolean indicating if the full URL should be matched.
        #
        #   @return [Boolean]
        required :is_match_full_url, HubspotSDK::Internal::Type::Boolean, api_name: :isMatchFullUrl

        # @!attribute is_match_query_string
        #   A boolean indicating if the query string should be matched.
        #
        #   @return [Boolean]
        required :is_match_query_string, HubspotSDK::Internal::Type::Boolean, api_name: :isMatchQueryString

        # @!attribute is_only_after_not_found
        #   A boolean indicating if the mapping should only be applied after a 404 Not Found
        #   response.
        #
        #   @return [Boolean]
        required :is_only_after_not_found, HubspotSDK::Internal::Type::Boolean, api_name: :isOnlyAfterNotFound

        # @!attribute is_pattern
        #   A boolean indicating if the routePrefix is a pattern.
        #
        #   @return [Boolean]
        required :is_pattern, HubspotSDK::Internal::Type::Boolean, api_name: :isPattern

        # @!attribute is_protocol_agnostic
        #   A boolean indicating if the mapping should ignore the URL protocol (http/https).
        #
        #   @return [Boolean]
        required :is_protocol_agnostic, HubspotSDK::Internal::Type::Boolean, api_name: :isProtocolAgnostic

        # @!attribute is_regex
        #   A boolean indicating if the routePrefix should be treated as a regular
        #   expression.
        #
        #   @return [Boolean]
        required :is_regex, HubspotSDK::Internal::Type::Boolean, api_name: :isRegex

        # @!attribute is_trailing_slash_optional
        #   A boolean indicating if the trailing slash in the URL is optional.
        #
        #   @return [Boolean]
        required :is_trailing_slash_optional,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :isTrailingSlashOptional

        # @!attribute label
        #   A label for the URL mapping.
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   The name of the URL mapping.
        #
        #   @return [String]
        required :name, String

        # @!attribute note
        #   A string containing notes about the URL mapping.
        #
        #   @return [String]
        required :note, String

        # @!attribute portal_id
        #   The identifier for the HubSpot portal associated with this URL mapping.
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute precedence
        #   An integer representing the precedence of the URL mapping, used to determine
        #   order of evaluation.
        #
        #   @return [Integer]
        required :precedence, Integer

        # @!attribute redirect_style
        #   An integer representing the style of redirection used.
        #
        #   @return [Integer]
        required :redirect_style, Integer, api_name: :redirectStyle

        # @!attribute route_prefix
        #   The prefix of the URL path that is being mapped.
        #
        #   @return [String]
        required :route_prefix, String, api_name: :routePrefix

        # @!attribute updated
        #   A Unix timestamp in milliseconds indicating when the URL mapping was last
        #   updated.
        #
        #   @return [Integer]
        required :updated, Integer

        # @!attribute updated_by_id
        #   The identifier of the user who last updated the URL mapping.
        #
        #   @return [Integer]
        required :updated_by_id, Integer, api_name: :updatedById

        # @!method initialize(id:, cdn_purge_embargo_time:, content_group_id:, cos_object_type:, created:, created_by_id:, deleted_at:, destination:, internally_created:, is_active:, is_match_full_url:, is_match_query_string:, is_only_after_not_found:, is_pattern:, is_protocol_agnostic:, is_regex:, is_trailing_slash_optional:, label:, name:, note:, portal_id:, precedence:, redirect_style:, route_prefix:, updated:, updated_by_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::URLMappingsURLMapping} for more details.
        #
        #   @param id [Integer] The unique identifier for the URL mapping, represented as a 64-bit integer.
        #
        #   @param cdn_purge_embargo_time [Integer] A Unix timestamp in milliseconds indicating the embargo time for CDN purge relat
        #
        #   @param content_group_id [Integer] A 64-bit integer representing the content group associated with the URL mapping.
        #
        #   @param cos_object_type [Symbol, HubspotSDK::Models::Cms::URLMappingsURLMapping::CosObjectType] A string representing the type of content object associated with the URL mapping
        #
        #   @param created [Integer] A Unix timestamp in milliseconds indicating when the URL mapping was created.
        #
        #   @param created_by_id [Integer] The identifier of the user who created the URL mapping.
        #
        #   @param deleted_at [Integer] A Unix timestamp in milliseconds indicating when the URL mapping was deleted.
        #
        #   @param destination [String] The destination URL to which the routePrefix is redirected.
        #
        #   @param internally_created [Boolean] A boolean indicating if the URL mapping was created internally by the system.
        #
        #   @param is_active [Boolean] A boolean indicating if the URL mapping is currently active.
        #
        #   @param is_match_full_url [Boolean] A boolean indicating if the full URL should be matched.
        #
        #   @param is_match_query_string [Boolean] A boolean indicating if the query string should be matched.
        #
        #   @param is_only_after_not_found [Boolean] A boolean indicating if the mapping should only be applied after a 404 Not Found
        #
        #   @param is_pattern [Boolean] A boolean indicating if the routePrefix is a pattern.
        #
        #   @param is_protocol_agnostic [Boolean] A boolean indicating if the mapping should ignore the URL protocol (http/https).
        #
        #   @param is_regex [Boolean] A boolean indicating if the routePrefix should be treated as a regular expressio
        #
        #   @param is_trailing_slash_optional [Boolean] A boolean indicating if the trailing slash in the URL is optional.
        #
        #   @param label [String] A label for the URL mapping.
        #
        #   @param name [String] The name of the URL mapping.
        #
        #   @param note [String] A string containing notes about the URL mapping.
        #
        #   @param portal_id [Integer] The identifier for the HubSpot portal associated with this URL mapping.
        #
        #   @param precedence [Integer] An integer representing the precedence of the URL mapping, used to determine ord
        #
        #   @param redirect_style [Integer] An integer representing the style of redirection used.
        #
        #   @param route_prefix [String] The prefix of the URL path that is being mapped.
        #
        #   @param updated [Integer] A Unix timestamp in milliseconds indicating when the URL mapping was last update
        #
        #   @param updated_by_id [Integer] The identifier of the user who last updated the URL mapping.

        # A string representing the type of content object associated with the URL
        # mapping. Valid values include various content types such as 'CONTENT', 'LAYOUT',
        # 'FILE', etc.
        #
        # @see HubspotSDK::Models::Cms::URLMappingsURLMapping#cos_object_type
        module CosObjectType
          extend HubspotSDK::Internal::Type::Enum

          ACCESS_GROUP_MEMBERSHIP = :ACCESS_GROUP_MEMBERSHIP
          APP_PAGE = :APP_PAGE
          BLOCK = :BLOCK
          BLOG = :BLOG
          BLOG_AUTHOR = :BLOG_AUTHOR
          BRAND_BUSINESS_UNIT = :BRAND_BUSINESS_UNIT
          BRAND_SETTINGS = :BRAND_SETTINGS
          CONTACT_MEMBERSHIP = :CONTACT_MEMBERSHIP
          CONTENT = :CONTENT
          CONTENT_EMBED = :CONTENT_EMBED
          CONTENT_FOLDER = :CONTENT_FOLDER
          CONTENT_GROUP = :CONTENT_GROUP
          CRM_OBJECT = :CRM_OBJECT
          CRM_OBJECT_TYPE = :CRM_OBJECT_TYPE
          CUSTOM_WIDGET = :CUSTOM_WIDGET
          CUSTOMER_PORTAL = :CUSTOMER_PORTAL
          DATA_QUERY = :DATA_QUERY
          DESIGN_FOLDER = :DESIGN_FOLDER
          DOMAIN = :DOMAIN
          DOMAIN_SETTINGS = :DOMAIN_SETTINGS
          EMAIL_ADDRESS = :EMAIL_ADDRESS
          EXTENSION_RESOURCE = :EXTENSION_RESOURCE
          FILE = :FILE
          FOLDER = :FOLDER
          FOLLOW_ME = :FOLLOW_ME
          FORM = :FORM
          GLOBAL_CONTENT = :GLOBAL_CONTENT
          HUBDB_TABLE = :HUBDB_TABLE
          HUBDB_TABLE_ROW = :HUBDB_TABLE_ROW
          IMAGE = :IMAGE
          JS_PROJECT_COMPONENT = :JS_PROJECT_COMPONENT
          KNOWLEDGE_BASE = :KNOWLEDGE_BASE
          KNOWLEDGE_CATEGORY = :KNOWLEDGE_CATEGORY
          KNOWLEDGE_CATEGORY_TRANSLATION = :KNOWLEDGE_CATEGORY_TRANSLATION
          KNOWLEDGE_HOMEPAGE_CATEGORY = :KNOWLEDGE_HOMEPAGE_CATEGORY
          LAYOUT = :LAYOUT
          LAYOUT_SECTION = :LAYOUT_SECTION
          LIST_MEMBERSHIP = :LIST_MEMBERSHIP
          MARKETPLACE_LISTING = :MARKETPLACE_LISTING
          PASSWORD_PROTECTED = :PASSWORD_PROTECTED
          PAYMENT = :PAYMENT
          PERSONALIZATION_TOKEN = :PERSONALIZATION_TOKEN
          PLACEMENT = :PLACEMENT
          PROJECT = :PROJECT
          QUOTE_TEMPLATE = :QUOTE_TEMPLATE
          RAW_ASSET = :RAW_ASSET
          REDIRECT_URL = :REDIRECT_URL
          SECTION = :SECTION
          SERVERLESS_FUNCTION = :SERVERLESS_FUNCTION
          SITE_MAP = :SITE_MAP
          SITE_MENU = :SITE_MENU
          SITE_SETTINGS = :SITE_SETTINGS
          SUBSCRIPTIONS_SETTINGS = :SUBSCRIPTIONS_SETTINGS
          TAG = :TAG
          THEME = :THEME
          THEME_SETTINGS = :THEME_SETTINGS
          UNRESTRICTED_ACCESS = :UNRESTRICTED_ACCESS
          URL_MAPPING = :URL_MAPPING
          VIDEO_PLAYER = :VIDEO_PLAYER
          WIDGET = :WIDGET
          WORKFLOW = :WORKFLOW

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
