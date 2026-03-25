# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class BatchInputPublicCampaignInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::BatchInputPublicCampaignInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of PublicCampaignInput objects, each representing the properties of a
        # campaign to be created in the batch. This property is required.
        sig { returns(T::Array[HubspotSDK::Marketing::PublicCampaignInput]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubspotSDK::Marketing::PublicCampaignInput::OrHash]
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
            { inputs: T::Array[HubspotSDK::Marketing::PublicCampaignInput] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
