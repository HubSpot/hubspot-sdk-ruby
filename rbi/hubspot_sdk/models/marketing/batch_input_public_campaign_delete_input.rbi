# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignDeleteInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::BatchInputPublicCampaignDeleteInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of PublicCampaignDeleteInput objects, each specifying a campaign to be
        # deleted. Each object must include the campaign's unique identifier.
        sig do
          returns(T::Array[HubspotSDK::Marketing::PublicCampaignDeleteInput])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubspotSDK::Marketing::PublicCampaignDeleteInput::OrHash]
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
              inputs: T::Array[HubspotSDK::Marketing::PublicCampaignDeleteInput]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
