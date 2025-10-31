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
        def self.new(inputs:)
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
