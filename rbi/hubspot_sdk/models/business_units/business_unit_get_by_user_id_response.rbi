# typed: strong

module HubspotSDK
  module Models
    module BusinessUnits
      class BusinessUnitGetByUserIDResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Models::BusinessUnits::BusinessUnitGetByUserIDResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The collection of Business Units
        sig { returns(T::Array[HubspotSDK::Marketing::PublicBusinessUnit]) }
        attr_accessor :results

        # A response object containing a collection of Business Units
        sig do
          params(
            results: T::Array[HubspotSDK::Marketing::PublicBusinessUnit::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The collection of Business Units
          results:
        )
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::Marketing::PublicBusinessUnit] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
