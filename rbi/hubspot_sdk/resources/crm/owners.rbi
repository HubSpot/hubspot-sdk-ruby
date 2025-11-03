# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Owners
        # Retrieve a paginated list of owners available in the account.
        sig do
          params(
            after: String,
            archived: T::Boolean,
            email: String,
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Internal::Page[HubspotSDK::Crm::PublicOwner])
        end
        def list(
          after: nil,
          archived: nil,
          email: nil,
          limit: nil,
          request_options: {}
        )
        end

        # Retrieve details of a specific owner using either their 'id' or 'userId'.
        sig do
          params(
            owner_id: Integer,
            archived: T::Boolean,
            id_property: HubspotSDK::Crm::OwnerGetParams::IDProperty::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::PublicOwner)
        end
        def get(owner_id, archived: nil, id_property: nil, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
