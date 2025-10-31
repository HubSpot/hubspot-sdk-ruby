# typed: strong

module HubspotSDK
  module Models
    module Settings
      class BatchInputExchangeRateUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::BatchInputExchangeRateUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::Settings::ExchangeRateUpdateRequest])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubspotSDK::Settings::ExchangeRateUpdateRequest::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs: T::Array[HubspotSDK::Settings::ExchangeRateUpdateRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
