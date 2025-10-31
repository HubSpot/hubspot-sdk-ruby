# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Owners
        # Retrieve a paginated list of owners available in the account.
        sig do
          params(
            after: String,
            archived: T::Boolean,
            email: String,
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Internal::Page[HubspotSDK::CRM::PublicOwner])
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results (optional).
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          # Filter by email address (optional).
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
            id_property: HubspotSDK::CRM::OwnerGetParams::IDProperty::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::CRM::PublicOwner)
        end
        def get(
          # The unique identifier of the owner to be retrieved.
          owner_id,
          # Whether to return only results that have been archived.
          archived: nil,
          # Specifies whether to use 'id' or 'userId' as the identifier for the owner.
          id_property: nil,
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
