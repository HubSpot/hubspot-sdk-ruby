# typed: strong

module HubspotSDK
  module Models
    module Meta
      class CollectionResponseIPRangeNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Meta::CollectionResponseIPRangeNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of IpRange objects, each representing a specific IP range with
        # associated details such as CIDR, direction, service, and description.
        sig { returns(T::Array[HubspotSDK::Meta::IPRange]) }
        attr_accessor :results

        sig do
          params(results: T::Array[HubspotSDK::Meta::IPRange::OrHash]).returns(
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
          override.returns({ results: T::Array[HubspotSDK::Meta::IPRange] })
        end
        def to_hash
        end
      end
    end
  end
end
