# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class DealToDealSplits < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::DealToDealSplits,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the deal associated with the deal splits.
        sig { returns(String) }
        attr_accessor :id

        # An array of deal split objects, each representing a portion of the deal assigned
        # to an owner.
        sig { returns(T::Array[HubSpotSDK::Crm::SimplePublicObject]) }
        attr_accessor :splits

        sig do
          params(
            id: String,
            splits: T::Array[HubSpotSDK::Crm::SimplePublicObject::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the deal associated with the deal splits.
          id:,
          # An array of deal split objects, each representing a portion of the deal assigned
          # to an owner.
          splits:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              splits: T::Array[HubSpotSDK::Crm::SimplePublicObject]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
