# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicFetchAssociationsBatchRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicFetchAssociationsBatchRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the object whose associations are being fetched.
        sig { returns(String) }
        attr_accessor :id

        # A paging cursor token used to retrieve the next set of results in a paginated
        # response.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        sig { params(id: String, after: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the object whose associations are being fetched.
          id:,
          # A paging cursor token used to retrieve the next set of results in a paginated
          # response.
          after: nil
        )
        end

        sig { override.returns({ id: String, after: String }) }
        def to_hash
        end
      end
    end
  end
end
