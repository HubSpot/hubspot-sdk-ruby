# typed: strong

module HubspotSDK
  module Models
    module Settings
      class CollectionResponseExchangeRateNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::CollectionResponseExchangeRateNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Settings::ExchangeRate]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubspotSDK::Settings::ExchangeRate::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::Settings::ExchangeRate] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
