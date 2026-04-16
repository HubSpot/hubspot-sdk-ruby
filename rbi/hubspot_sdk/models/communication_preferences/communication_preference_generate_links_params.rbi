# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class CommunicationPreferenceGenerateLinksParams < HubSpotSDK::Models::CommunicationPreferences::LinkGenerationRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::CommunicationPreferences::CommunicationPreferenceGenerateLinksParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The communication channel for which the links are generated. Must be 'EMAIL'.
        sig do
          returns(
            HubSpotSDK::CommunicationPreferences::LinkGenerationRequest::Channel::OrSymbol
          )
        end
        attr_accessor :channel

        # The identifier of the business unit. Defaults to 0 if not specified.
        sig { returns(T.nilable(Integer)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: Integer).void }
        attr_writer :business_unit_id

        sig do
          params(
            channel:
              HubSpotSDK::CommunicationPreferences::LinkGenerationRequest::Channel::OrSymbol,
            business_unit_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The communication channel for which the links are generated. Must be 'EMAIL'.
          channel:,
          # The identifier of the business unit. Defaults to 0 if not specified.
          business_unit_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              channel:
                HubSpotSDK::CommunicationPreferences::LinkGenerationRequest::Channel::OrSymbol,
              business_unit_id: Integer,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The communication channel for which the links are generated. Must be 'EMAIL'.
        module Channel
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::CommunicationPreferences::LinkGenerationRequest::Channel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubSpotSDK::CommunicationPreferences::LinkGenerationRequest::Channel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::CommunicationPreferences::LinkGenerationRequest::Channel::TaggedSymbol
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
