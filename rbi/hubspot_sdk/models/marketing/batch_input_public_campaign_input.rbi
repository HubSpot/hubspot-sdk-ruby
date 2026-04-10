# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignInput < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::BatchInputPublicCampaignInput,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of PublicCampaignInput objects, each representing the properties of a
        # campaign to be created in the batch. This property is required.
        sig { returns(T::Array[HubSpotSDK::Marketing::PublicCampaignInput]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubSpotSDK::Marketing::PublicCampaignInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of PublicCampaignInput objects, each representing the properties of a
          # campaign to be created in the batch. This property is required.
          inputs:
        )
        end

        sig do
          override.returns(
            { inputs: T::Array[HubSpotSDK::Marketing::PublicCampaignInput] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
