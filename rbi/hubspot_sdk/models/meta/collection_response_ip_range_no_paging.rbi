# typed: strong

module HubSpotSDK
  module Models
    module Meta
      class CollectionResponseIPRangeNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Meta::CollectionResponseIPRangeNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of IpRange objects, each representing a specific IP range with
        # associated details such as CIDR, direction, service, and description.
        sig { returns(T::Array[HubSpotSDK::Meta::IPRange]) }
        attr_accessor :results

        sig do
          params(results: T::Array[HubSpotSDK::Meta::IPRange::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(
          # An array of IpRange objects, each representing a specific IP range with
          # associated details such as CIDR, direction, service, and description.
          results:
        )
        end

        sig do
          override.returns({ results: T::Array[HubSpotSDK::Meta::IPRange] })
        end
        def to_hash
        end
      end
    end
  end
end
