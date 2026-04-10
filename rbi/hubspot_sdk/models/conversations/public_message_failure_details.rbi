# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PublicMessageFailureDetails < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PublicMessageFailureDetails,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :error_message_tokens

        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        sig do
          params(
            error_message_tokens: T::Hash[Symbol, String],
            error_message: String
          ).returns(T.attached_class)
        end
        def self.new(error_message_tokens:, error_message: nil)
        end

        sig do
          override.returns(
            {
              error_message_tokens: T::Hash[Symbol, String],
              error_message: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
