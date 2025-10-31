# typed: strong

module HubspotSDK
  module Models
    module CRM
      class CollectionResponseAssociationLabelLimitResponseNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::CollectionResponseAssociationLabelLimitResponseNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::CRM::AssociationLabelLimitResponse])
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[HubspotSDK::CRM::AssociationLabelLimitResponse::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::CRM::AssociationLabelLimitResponse]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
