# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponseContactReferenceForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::CollectionResponseContactReferenceForwardPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of contact references, each containing an identifier for a contact.
        sig { returns(T::Array[HubSpotSDK::Marketing::ContactReference]) }
        attr_accessor :results

        sig { returns(T.nilable(HubSpotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubSpotSDK::Marketing::ContactReference::OrHash],
            paging: HubSpotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of contact references, each containing an identifier for a contact.
          results:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Marketing::ContactReference],
              paging: HubSpotSDK::ForwardPaging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
