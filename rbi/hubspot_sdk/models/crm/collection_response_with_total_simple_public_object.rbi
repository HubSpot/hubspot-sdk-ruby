# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponseWithTotalSimplePublicObject < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::CollectionResponseWithTotalSimplePublicObject,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::SimplePublicObject]) }
        attr_accessor :results

        # The total number of objects in the collection.
        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubSpotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::Paging::OrHash).void }
        attr_writer :paging

        # Represents a list of simple objects returned from an API request, along with the
        # total count of objects available.
        sig do
          params(
            results: T::Array[HubSpotSDK::Crm::SimplePublicObject::OrHash],
            total: Integer,
            paging: HubSpotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          results:,
          # The total number of objects in the collection.
          total:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Crm::SimplePublicObject],
              total: Integer,
              paging: HubSpotSDK::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
