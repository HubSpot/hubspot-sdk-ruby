# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      module Campaigns
        class BatchCreateParams < HubSpotSDK::Models::Marketing::BatchInputPublicCampaignInput
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Marketing::Campaigns::BatchCreateParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig do
            params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(request_options: {})
          end

          sig do
            override.returns({ request_options: HubSpotSDK::RequestOptions })
          end
          def to_hash
          end
        end
      end
    end
  end
end
