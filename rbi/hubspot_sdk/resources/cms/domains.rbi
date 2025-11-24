# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Domains
        # Returns all existing domains that have been created. Results can be limited and
        # filtered by creation or updated date.
        sig do
          params(
            after: String,
            archived: T::Boolean,
            created_after: Time,
            created_at: Time,
            created_before: Time,
            limit: Integer,
            sort: T::Array[String],
            updated_after: Time,
            updated_at: Time,
            updated_before: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Internal::Page[HubspotSDK::Cms::Domain])
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          # Only return domains created after this date.
          created_after: nil,
          # Only return domains created at this date.
          created_at: nil,
          # Only return domains created before this date.
          created_before: nil,
          # Maximum number of results per page.
          limit: nil,
          # Specifies the order in which the domains are returned.
          sort: nil,
          # Only return domains updated after this date.
          updated_after: nil,
          # Only return domains updated at this date.
          updated_at: nil,
          # Only return domains updated before this date.
          updated_before: nil,
          request_options: {}
        )
        end

        # Returns a single domains with the id specified.
        sig do
          params(
            domain_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::Domain)
        end
        def get(
          # The unique ID of the domain.
          domain_id,
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
