# typed: strong

module HubspotSDK
  module Models
    module Settings
      class CollectionResponseCurrencyCodeInfoNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::CollectionResponseCurrencyCodeInfoNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Settings::CurrencyCodeInfo]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubspotSDK::Settings::CurrencyCodeInfo::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::Settings::CurrencyCodeInfo] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
