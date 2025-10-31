# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class AuditLogs
        # Returns audit logs based on filters.
        sig do
          params(
            after: String,
            before: String,
            event_type: T::Array[String],
            limit: Integer,
            object_id_: T::Array[String],
            object_type: T::Array[String],
            sort: T::Array[String],
            user_id: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Internal::Page[HubspotSDK::Cms::PublicAuditLog])
        end
        def list(
          # Timestamp after which audit logs will be returned
          after: nil,
          # Timestamp before which audit logs will be returned
          before: nil,
          # Comma separated list of event types to filter by (CREATED, UPDATED, PUBLISHED,
          # DELETED, UNPUBLISHED).
          event_type: nil,
          # The number of logs to return.
          limit: nil,
          # Comma separated list of object ids to filter by.
          object_id_: nil,
          # Comma separated list of object types to filter by (BLOG, LANDING_PAGE, DOMAIN,
          # HUBDB_TABLE etc.)
          object_type: nil,
          # The sort direction for the audit logs. (Can only sort by timestamp).
          sort: nil,
          # Comma separated list of user ids to filter by.
          user_id: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
