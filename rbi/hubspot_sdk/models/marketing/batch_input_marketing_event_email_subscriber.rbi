# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventEmailSubscriber < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::BatchInputMarketingEventEmailSubscriber,
              HubspotSDK::Internal::AnyHash
            )
          end

        # List of marketing event details to create or update
        sig do
          returns(
            T::Array[HubspotSDK::Marketing::MarketingEventEmailSubscriber]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Marketing::MarketingEventEmailSubscriber::OrHash
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
                T::Array[HubspotSDK::Marketing::MarketingEventEmailSubscriber]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
