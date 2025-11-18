# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CollectionResponsePublicPropertyValidationRuleMapNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CollectionResponsePublicPropertyValidationRuleMapNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Collection of properties with their validation rules. Each item maps a property
        # name to its configured validation rules for the specified object type.
        sig do
          returns(T::Array[HubspotSDK::Crm::PublicPropertyValidationRuleMap])
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[HubspotSDK::Crm::PublicPropertyValidationRuleMap::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Collection of properties with their validation rules. Each item maps a property
          # name to its configured validation rules for the specified object type.
          results:
        )
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubspotSDK::Crm::PublicPropertyValidationRuleMap]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
