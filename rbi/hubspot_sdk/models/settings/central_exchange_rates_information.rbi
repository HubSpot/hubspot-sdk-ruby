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

        # Indicates if central exchange rates is enabled for the portal or not.
        sig { returns(T::Boolean) }
        attr_accessor :central_exchange_rates_enabled

        sig do
          params(central_exchange_rates_enabled: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(
          # Indicates if central exchange rates is enabled for the portal or not.
          central_exchange_rates_enabled:
        )
        end

        sig { override.returns({ central_exchange_rates_enabled: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
