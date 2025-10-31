# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::AuditLogs#list
      class AuditLogListResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute event
        #   The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED,
        #   UNPUBLISHED).
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::AuditLogListResponse::Event]
        required :event, enum: -> { HubspotSDK::Models::Cms::AuditLogListResponse::Event }

        # @!attribute full_name
        #   The name of the user who caused the event.
        #
        #   @return [String]
        required :full_name, String, api_name: :fullName

        # @!attribute object_id_
        #   The ID of the object.
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!attribute object_name
        #   The internal name of the object in HubSpot.
        #
        #   @return [String]
        required :object_name, String, api_name: :objectName

        # @!attribute object_type
        #   The type of the object (BLOG, LANDING_PAGE, DOMAIN, HUBDB_TABLE etc.)
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType]
        required :object_type,
                 enum: -> { HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType },
                 api_name: :objectType

        # @!attribute timestamp
        #   The timestamp at which the event occurred.
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute user_id
        #   The ID of the user who caused the event.
        #
        #   @return [String]
        required :user_id, String, api_name: :userId

        # @!attribute meta
        #
        #   @return [Object, nil]
        optional :meta, HubspotSDK::Internal::Type::Unknown

        # @!method initialize(event:, full_name:, object_id_:, object_name:, object_type:, timestamp:, user_id:, meta: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::AuditLogListResponse} for more details.
        #
        #   @param event [Symbol, HubspotSDK::Models::Cms::AuditLogListResponse::Event] The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED, UNPUBLI
        #
        #   @param full_name [String] The name of the user who caused the event.
        #
        #   @param object_id_ [String] The ID of the object.
        #
        #   @param object_name [String] The internal name of the object in HubSpot.
        #
        #   @param object_type [Symbol, HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType] The type of the object (BLOG, LANDING_PAGE, DOMAIN, HUBDB_TABLE etc.)
        #
        #   @param timestamp [Time] The timestamp at which the event occurred.
        #
        #   @param user_id [String] The ID of the user who caused the event.
        #
        #   @param meta [Object]

        # The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED,
        # UNPUBLISHED).
        #
        # @see HubspotSDK::Models::Cms::AuditLogListResponse#event
        module Event
          extend HubspotSDK::Internal::Type::Enum

          CREATED = :CREATED
          UPDATED = :UPDATED
          PUBLISHED = :PUBLISHED
          DELETED = :DELETED
          UNPUBLISHED = :UNPUBLISHED
          RESTORE = :RESTORE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of the object (BLOG, LANDING_PAGE, DOMAIN, HUBDB_TABLE etc.)
        #
        # @see HubspotSDK::Models::Cms::AuditLogListResponse#object_type
        module ObjectType
          extend HubspotSDK::Internal::Type::Enum

          BLOG = :BLOG
          BLOG_POST = :BLOG_POST
          LANDING_PAGE = :LANDING_PAGE
          WEBSITE_PAGE = :WEBSITE_PAGE
          TEMPLATE = :TEMPLATE
          MODULE = :MODULE
          GLOBAL_MODULE = :GLOBAL_MODULE
          SERVERLESS_FUNCTION = :SERVERLESS_FUNCTION
          DOMAIN = :DOMAIN
          URL_MAPPING = :URL_MAPPING
          EMAIL = :EMAIL
          CONTENT_SETTINGS = :CONTENT_SETTINGS
          HUBDB_TABLE = :HUBDB_TABLE
          KNOWLEDGE_BASE_ARTICLE = :KNOWLEDGE_BASE_ARTICLE
          KNOWLEDGE_BASE = :KNOWLEDGE_BASE
          THEME = :THEME
          CSS = :CSS
          JS = :JS
          CTA = :CTA
          FILE = :FILE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
