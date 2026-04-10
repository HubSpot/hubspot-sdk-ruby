# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class CommunicationPreferenceGetStatusesParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :subscriber_id_string

        sig do
          returns(
            HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel::OrSymbol
          )
        end
        attr_accessor :channel

        sig { returns(T.nilable(Integer)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: Integer).void }
        attr_writer :business_unit_id

        sig do
          params(
            subscriber_id_string: String,
            channel:
              HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel::OrSymbol,
            business_unit_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          subscriber_id_string:,
          channel:,
          business_unit_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              subscriber_id_string: String,
              channel:
                HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel::OrSymbol,
              business_unit_id: Integer,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Channel
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusesParams::Channel::TaggedSymbol
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
