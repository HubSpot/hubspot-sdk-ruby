# typed: strong

module HubspotSDK
  module Models
    module BusinessUnits
      class CollectionResponsePublicBusinessUnitNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::BusinessUnits::CollectionResponsePublicBusinessUnitNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The collection of Business Units
        sig { returns(T::Array[HubspotSDK::BusinessUnits::PublicBusinessUnit]) }
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[HubspotSDK::BusinessUnits::PublicBusinessUnit::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The collection of Business Units
          results:
        )
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::BusinessUnits::PublicBusinessUnit] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
