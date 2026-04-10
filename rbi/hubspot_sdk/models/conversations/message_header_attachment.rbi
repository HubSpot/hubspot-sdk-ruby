# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class MessageHeaderAttachment < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::MessageHeaderAttachment,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Conversations::MessageHeaderAttachment::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(Integer)) }
        attr_reader :file_id

        sig { params(file_id: Integer).void }
        attr_writer :file_id

        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig do
          params(
            type:
              HubSpotSDK::Conversations::MessageHeaderAttachment::Type::OrSymbol,
            file_id: Integer,
            text: String
          ).returns(T.attached_class)
        end
        def self.new(type:, file_id: nil, text: nil)
        end

        sig do
          override.returns(
            {
              type:
                HubSpotSDK::Conversations::MessageHeaderAttachment::Type::OrSymbol,
              file_id: Integer,
              text: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Conversations::MessageHeaderAttachment::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MESSAGE_HEADER =
            T.let(
              :MESSAGE_HEADER,
              HubSpotSDK::Conversations::MessageHeaderAttachment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::MessageHeaderAttachment::Type::TaggedSymbol
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
