# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicMessageContent < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicMessageContent,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :rich_text

        sig { params(rich_text: String).void }
        attr_writer :rich_text

        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig do
          params(rich_text: String, text: String).returns(T.attached_class)
        end
        def self.new(rich_text: nil, text: nil)
        end

        sig { override.returns({ rich_text: String, text: String }) }
        def to_hash
        end
      end
    end
  end
end
