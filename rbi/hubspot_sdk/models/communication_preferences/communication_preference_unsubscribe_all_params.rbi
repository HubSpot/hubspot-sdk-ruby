# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class CommunicationPreferenceUnsubscribeAllParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :subscriber_id_string

        sig do
          returns(
            HubspotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel::OrSymbol
          )
        end
        attr_accessor :channel

        sig { returns(T.nilable(Integer)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: Integer).void }
        attr_writer :business_unit_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :verbose

        sig { params(verbose: T::Boolean).void }
        attr_writer :verbose

        sig do
          params(
            subscriber_id_string: String,
            channel:
              HubspotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel::OrSymbol,
            business_unit_id: Integer,
            verbose: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          subscriber_id_string:,
          channel:,
          business_unit_id: nil,
          verbose: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              subscriber_id_string: String,
              channel:
                HubspotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel::OrSymbol,
              business_unit_id: Integer,
              verbose: T::Boolean,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Channel
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CommunicationPreferences::CommunicationPreferenceUnsubscribeAllParams::Channel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
