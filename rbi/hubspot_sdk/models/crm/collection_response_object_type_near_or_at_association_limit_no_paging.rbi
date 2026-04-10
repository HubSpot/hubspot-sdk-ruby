# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubSpotSDK::Crm::ObjectTypeNearOrAtAssociationLimit])
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[
                HubSpotSDK::Crm::ObjectTypeNearOrAtAssociationLimit::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubSpotSDK::Crm::ObjectTypeNearOrAtAssociationLimit]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
