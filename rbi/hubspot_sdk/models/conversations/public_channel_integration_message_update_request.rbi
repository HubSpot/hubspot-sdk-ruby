# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PublicChannelIntegrationMessageUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Valid status are SENT, FAILED, and READ
        sig do
          returns(
            HubSpotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::OrSymbol
          )
        end
        attr_accessor :status_type

        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        sig do
          params(
            status_type:
              HubSpotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::OrSymbol,
            error_message: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Valid status are SENT, FAILED, and READ
          status_type:,
          error_message: nil
        )
        end

        sig do
          override.returns(
            {
              status_type:
                HubSpotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::OrSymbol,
              error_message: String
            }
          )
        end
        def to_hash
        end

        # Valid status are SENT, FAILED, and READ
        module StatusType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FAILED =
            T.let(
              :FAILED,
              HubSpotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::TaggedSymbol
            )
          READ =
            T.let(
              :READ,
              HubSpotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::TaggedSymbol
            )
          SENT =
            T.let(
              :SENT,
              HubSpotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::TaggedSymbol
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
