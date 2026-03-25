# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicMessageHeader < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicMessageHeader,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Conversations::PublicMessageHeader::Type::TaggedSymbol
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
              HubspotSDK::Conversations::PublicMessageHeader::Type::OrSymbol,
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
                HubspotSDK::Conversations::PublicMessageHeader::Type::TaggedSymbol,
              file_id: Integer,
              text: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::PublicMessageHeader::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MESSAGE_HEADER =
            T.let(
              :MESSAGE_HEADER,
              HubspotSDK::Conversations::PublicMessageHeader::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicMessageHeader::Type::TaggedSymbol
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
