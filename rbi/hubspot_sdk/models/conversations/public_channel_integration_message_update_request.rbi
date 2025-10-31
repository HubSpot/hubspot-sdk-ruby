# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicChannelIntegrationMessageUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Valid status are SENT, FAILED, and READ
        sig do
          returns(
            HubspotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::OrSymbol
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
              HubspotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::OrSymbol,
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
                HubspotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::OrSymbol,
              error_message: String
            }
          )
        end
        def to_hash
        end

        # Valid status are SENT, FAILED, and READ
        module StatusType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SENT =
            T.let(
              :SENT,
              HubspotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              HubspotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::TaggedSymbol
            )
          READ =
            T.let(
              :READ,
              HubspotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicChannelIntegrationMessageUpdateRequest::StatusType::TaggedSymbol
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
