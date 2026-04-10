# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventEmailSubscriber < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::BatchInputMarketingEventEmailSubscriber,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # List of marketing event details to create or update
        sig do
          returns(
            T::Array[HubSpotSDK::Marketing::MarketingEventEmailSubscriber]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubSpotSDK::Marketing::MarketingEventEmailSubscriber::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # List of marketing event details to create or update
          inputs:
        )
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubSpotSDK::Marketing::MarketingEventEmailSubscriber]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
