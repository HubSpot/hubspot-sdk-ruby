# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CollectionResponseAssociationLabelLimitResponseNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CollectionResponseAssociationLabelLimitResponseNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::Crm::AssociationLabelLimitResponse])
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[HubspotSDK::Crm::AssociationLabelLimitResponse::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Crm::AssociationLabelLimitResponse]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
