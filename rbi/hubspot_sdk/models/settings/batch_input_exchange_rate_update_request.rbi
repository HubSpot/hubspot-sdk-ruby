# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class BatchInputExchangeRateUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::BatchInputExchangeRateUpdateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubSpotSDK::Settings::ExchangeRateUpdateRequest])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubSpotSDK::Settings::ExchangeRateUpdateRequest::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs: T::Array[HubSpotSDK::Settings::ExchangeRateUpdateRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
