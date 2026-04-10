# typed: strong

module HubSpotSDK
  module Models
    module BusinessUnits
      class CollectionResponsePublicBusinessUnitNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::BusinessUnits::CollectionResponsePublicBusinessUnitNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The collection of Business Units
        sig { returns(T::Array[HubSpotSDK::BusinessUnits::PublicBusinessUnit]) }
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[HubSpotSDK::BusinessUnits::PublicBusinessUnit::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The collection of Business Units
          results:
        )
        end

        sig do
          override.returns(
            { results: T::Array[HubSpotSDK::BusinessUnits::PublicBusinessUnit] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
