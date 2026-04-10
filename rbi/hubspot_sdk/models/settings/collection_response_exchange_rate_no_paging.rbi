# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class CollectionResponseExchangeRateNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::CollectionResponseExchangeRateNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Settings::ExchangeRate]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubSpotSDK::Settings::ExchangeRate::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            { results: T::Array[HubSpotSDK::Settings::ExchangeRate] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
