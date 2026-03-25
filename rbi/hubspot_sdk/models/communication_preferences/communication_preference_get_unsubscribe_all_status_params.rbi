# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class CommunicationPreferenceGetUnsubscribeAllStatusParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :subscriber_id_string

        # The communication channel to unsubscribe from. Must be 'EMAIL'.
        sig do
          returns(
            HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel::OrSymbol
          )
        end
        attr_accessor :channel

        # The ID of the business unit associated with the communication preferences.
        sig { returns(T.nilable(Integer)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: Integer).void }
        attr_writer :business_unit_id

        # A boolean indicating whether to include detailed information in the response.
        # Defaults to false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :verbose

        sig { params(verbose: T::Boolean).void }
        attr_writer :verbose

        sig do
          params(
            subscriber_id_string: String,
            channel:
              HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel::OrSymbol,
            business_unit_id: Integer,
            verbose: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          subscriber_id_string:,
          # The communication channel to unsubscribe from. Must be 'EMAIL'.
          channel:,
          # The ID of the business unit associated with the communication preferences.
          business_unit_id: nil,
          # A boolean indicating whether to include detailed information in the response.
          # Defaults to false.
          verbose: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              subscriber_id_string: String,
              channel:
                HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel::OrSymbol,
              business_unit_id: Integer,
              verbose: T::Boolean,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The communication channel to unsubscribe from. Must be 'EMAIL'.
        module Channel
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetUnsubscribeAllStatusParams::Channel::TaggedSymbol
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
