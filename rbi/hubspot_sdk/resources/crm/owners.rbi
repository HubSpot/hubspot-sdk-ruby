# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Owners
        sig do
          params(
            after: String,
            archived: T::Boolean,
            email: String,
            limit: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Internal::Page[HubSpotSDK::Crm::PublicOwner])
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          # Filter by email address (optional)
          email: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        # Retrieve details of a specific owner using either their 'id' or 'userId'.
        sig do
          params(
            owner_id: Integer,
            archived: T::Boolean,
            id_property: HubSpotSDK::Crm::OwnerGetParams::IDProperty::OrSymbol,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::PublicOwner)
        end
        def get(
          owner_id,
          # Whether to return only results that have been archived.
          archived: nil,
          id_property: nil,
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
