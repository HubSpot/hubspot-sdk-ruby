# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::AuditLogs#list
      class PublicAuditLog < HubspotSDK::Internal::Type::BaseModel
        # @!attribute event
        #   The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED,
        #   UNPUBLISHED).
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::PublicAuditLog::Event]
        required :event, enum: -> { HubspotSDK::Cms::PublicAuditLog::Event }

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
        #   @return [Symbol, HubspotSDK::Models::Cms::PublicAuditLog::ObjectType]
        required :object_type, enum: -> { HubspotSDK::Cms::PublicAuditLog::ObjectType }, api_name: :objectType

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
        #   Supplementary metadata associated with the audit log entry. It provides
        #   additional context about the audited event (ex: rows deleted/updated for a HubDB
        #   event, the specific fields that were changed for a Content Settings event).
        #
        #   @return [Object, nil]
        optional :meta, HubspotSDK::Internal::Type::Unknown

        # @!method initialize(event:, full_name:, object_id_:, object_name:, object_type:, timestamp:, user_id:, meta: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::PublicAuditLog} for more details.
        #
        #   @param event [Symbol, HubspotSDK::Models::Cms::PublicAuditLog::Event] The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED, UNPUBLI
        #
        #   @param full_name [String] The name of the user who caused the event.
        #
        #   @param object_id_ [String] The ID of the object.
        #
        #   @param object_name [String] The internal name of the object in HubSpot.
        #
        #   @param object_type [Symbol, HubspotSDK::Models::Cms::PublicAuditLog::ObjectType] The type of the object (BLOG, LANDING_PAGE, DOMAIN, HUBDB_TABLE etc.)
        #
        #   @param timestamp [Time] The timestamp at which the event occurred.
        #
        #   @param user_id [String] The ID of the user who caused the event.
        #
        #   @param meta [Object] Supplementary metadata associated with the audit log entry. It provides addition

        # The type of event that took place (CREATED, UPDATED, PUBLISHED, DELETED,
        # UNPUBLISHED).
        #
        # @see HubspotSDK::Models::Cms::PublicAuditLog#event
        module Event
          extend HubspotSDK::Internal::Type::Enum

          CREATED = :CREATED
          DELETED = :DELETED
          PUBLISHED = :PUBLISHED
          RESTORE = :RESTORE
          UNPUBLISHED = :UNPUBLISHED
          UPDATED = :UPDATED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of the object (BLOG, LANDING_PAGE, DOMAIN, HUBDB_TABLE etc.)
        #
        # @see HubspotSDK::Models::Cms::PublicAuditLog#object_type
        module ObjectType
          extend HubspotSDK::Internal::Type::Enum

          BLOG = :BLOG
          BLOG_POST = :BLOG_POST
          CONTENT_SETTINGS = :CONTENT_SETTINGS
          CSS = :CSS
          CTA = :CTA
          DOMAIN = :DOMAIN
          EMAIL = :EMAIL
          FILE = :FILE
          GLOBAL_MODULE = :GLOBAL_MODULE
          HUBDB_TABLE = :HUBDB_TABLE
          JS = :JS
          KNOWLEDGE_BASE = :KNOWLEDGE_BASE
          KNOWLEDGE_BASE_ARTICLE = :KNOWLEDGE_BASE_ARTICLE
          LANDING_PAGE = :LANDING_PAGE
          MODULE = :MODULE
          SERVERLESS_FUNCTION = :SERVERLESS_FUNCTION
          TEMPLATE = :TEMPLATE
          THEME = :THEME
          URL_MAPPING = :URL_MAPPING
          WEBSITE_PAGE = :WEBSITE_PAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
