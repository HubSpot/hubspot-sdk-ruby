# typed: strong

module HubspotSDK
  module Models
    module Settings
      class CurrencyCodeInfo < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::CurrencyCodeInfo,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The three-letter code representing a specific currency (ex. USD).
        sig { returns(String) }
        attr_accessor :currency_code

        # The full name of the currency (ex. US Dollar).
        sig { returns(String) }
        attr_accessor :currency_name

        sig do
          params(currency_code: String, currency_name: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The three-letter code representing a specific currency (ex. USD).
          currency_code:,
          # The full name of the currency (ex. US Dollar).
          currency_name:
        )
        end

        sig do
          override.returns({ currency_code: String, currency_name: String })
        end
        def to_hash
        end
      end
    end
  end
end
