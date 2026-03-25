# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicDealSplitsCreateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicDealSplitsCreateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the deal.
        sig { returns(Integer) }
        attr_accessor :id

        # An array of deal split inputs, each containing an owner ID and a percentage of
        # the deal split.
        sig { returns(T::Array[HubspotSDK::Crm::PublicDealSplitInput]) }
        attr_accessor :splits

        sig do
          params(
            id: Integer,
            splits: T::Array[HubspotSDK::Crm::PublicDealSplitInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the deal.
          id:,
          # An array of deal split inputs, each containing an owner ID and a percentage of
          # the deal split.
          splits:
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              splits: T::Array[HubspotSDK::Crm::PublicDealSplitInput]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
