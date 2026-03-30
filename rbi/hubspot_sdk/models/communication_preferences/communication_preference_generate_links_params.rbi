# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class CommunicationPreferenceGenerateLinksParams < HubspotSDK::Models::CommunicationPreferences::LinkGenerationRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::CommunicationPreferenceGenerateLinksParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::CommunicationPreferences::LinkGenerationRequest::Channel::OrSymbol
          )
        end
        attr_accessor :channel

        sig { returns(T.nilable(Integer)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: Integer).void }
        attr_writer :business_unit_id

        sig do
          params(
            channel:
              HubspotSDK::CommunicationPreferences::LinkGenerationRequest::Channel::OrSymbol,
            business_unit_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(channel:, business_unit_id: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              channel:
                HubspotSDK::CommunicationPreferences::LinkGenerationRequest::Channel::OrSymbol,
              business_unit_id: Integer,
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
                HubspotSDK::CommunicationPreferences::LinkGenerationRequest::Channel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::CommunicationPreferences::LinkGenerationRequest::Channel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CommunicationPreferences::LinkGenerationRequest::Channel::TaggedSymbol
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
