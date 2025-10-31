# typed: strong

module HubspotSDK
  module Models
    module Settings
      class CentralExchangeRatesInformation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::CentralExchangeRatesInformation,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :central_exchange_rates_enabled

        sig do
          params(central_exchange_rates_enabled: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(central_exchange_rates_enabled:)
        end

        sig { override.returns({ central_exchange_rates_enabled: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
