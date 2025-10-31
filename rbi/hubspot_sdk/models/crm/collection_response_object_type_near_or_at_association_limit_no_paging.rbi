# typed: strong

module HubspotSDK
  module Models
    module CRM
      class CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::CRM::ObjectTypeNearOrAtAssociationLimit])
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::CRM::ObjectTypeNearOrAtAssociationLimit::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubspotSDK::CRM::ObjectTypeNearOrAtAssociationLimit]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
