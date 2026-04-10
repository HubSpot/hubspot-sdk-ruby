# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignDeleteInput < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::BatchInputPublicCampaignDeleteInput,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An array of PublicCampaignDeleteInput objects, each specifying a campaign to be
        # deleted. Each object must include the campaign's unique identifier.
        sig do
          returns(T::Array[HubSpotSDK::Marketing::PublicCampaignDeleteInput])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubSpotSDK::Marketing::PublicCampaignDeleteInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of PublicCampaignDeleteInput objects, each specifying a campaign to be
          # deleted. Each object must include the campaign's unique identifier.
          inputs:
        )
        end

        sig do
          override.returns(
            {
              inputs: T::Array[HubSpotSDK::Marketing::PublicCampaignDeleteInput]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
