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

        sig { returns(T::Array[HubspotSDK::Marketing::PublicCampaignInput]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubspotSDK::Marketing::PublicCampaignInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
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
