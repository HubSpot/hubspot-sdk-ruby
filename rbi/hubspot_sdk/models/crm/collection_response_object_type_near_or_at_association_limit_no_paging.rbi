# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::Crm::ObjectTypeNearOrAtAssociationLimit])
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::Crm::ObjectTypeNearOrAtAssociationLimit::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubspotSDK::Crm::ObjectTypeNearOrAtAssociationLimit]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
