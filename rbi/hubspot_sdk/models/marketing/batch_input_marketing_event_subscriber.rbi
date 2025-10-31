# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventSubscriber < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::BatchInputMarketingEventSubscriber,
              HubspotSDK::Internal::AnyHash
            )
          end

        # List of HubSpot contacts to subscribe to the marketing event
        sig do
          returns(T::Array[HubspotSDK::Marketing::MarketingEventSubscriber])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubspotSDK::Marketing::MarketingEventSubscriber::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # List of HubSpot contacts to subscribe to the marketing event
          inputs:
        )
        end

        sig do
          override.returns(
            {
              inputs: T::Array[HubspotSDK::Marketing::MarketingEventSubscriber]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
