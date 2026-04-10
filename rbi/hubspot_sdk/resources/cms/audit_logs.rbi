# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class AuditLogs
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
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Internal::Page[HubSpotSDK::Cms::PublicAuditLog])
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          before: nil,
          event_type: nil,
          # The maximum number of results to display per page.
          limit: nil,
          object_id_: nil,
          object_type: nil,
          sort: nil,
          user_id: nil,
          request_options: {}
        )
        end

        sig do
          params(
            email: String,
            format_:
              HubSpotSDK::Cms::CmsAuditLoggingExportSettings::Format::OrSymbol,
            portal_id: Integer,
            recipient_user_ids: T::Array[Integer],
            should_mark_export_file_as_sensitive: T::Boolean,
            type: String,
            filters: HubSpotSDK::Cms::CmsAuditLoggingExportFilters::OrHash,
            partition: Integer,
            user_id: Integer,
            user_time_zone: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def export(
          email:,
          format_:,
          portal_id:,
          recipient_user_ids:,
          should_mark_export_file_as_sensitive:,
          type:,
          filters: nil,
          partition: nil,
          user_id: nil,
          user_time_zone: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
