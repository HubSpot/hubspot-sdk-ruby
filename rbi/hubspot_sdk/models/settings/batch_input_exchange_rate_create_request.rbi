# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class BatchInputExchangeRateCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::BatchInputExchangeRateCreateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubSpotSDK::Settings::ExchangeRateCreateRequest])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubSpotSDK::Settings::ExchangeRateCreateRequest::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs: T::Array[HubSpotSDK::Settings::ExchangeRateCreateRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
