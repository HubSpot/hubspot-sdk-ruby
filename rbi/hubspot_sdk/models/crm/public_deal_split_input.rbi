# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicDealSplitInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicDealSplitInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the owner receiving the deal split.
        sig { returns(Integer) }
        attr_accessor :owner_id

        # The portion of the deal assigned to the owner, expressed as a percentage. The
        # total percentage for all splits in a deal must sum up to 1.0 (100%) and can have
        # up to 8 decimal places.
        sig { returns(Float) }
        attr_accessor :percentage

        sig do
          params(owner_id: Integer, percentage: Float).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the owner receiving the deal split.
          owner_id:,
          # The portion of the deal assigned to the owner, expressed as a percentage. The
          # total percentage for all splits in a deal must sum up to 1.0 (100%) and can have
          # up to 8 decimal places.
          percentage:
        )
        end

        sig { override.returns({ owner_id: Integer, percentage: Float }) }
        def to_hash
        end
      end
    end
  end
end
