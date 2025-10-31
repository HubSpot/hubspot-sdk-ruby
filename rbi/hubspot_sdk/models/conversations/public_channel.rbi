# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicChannel < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicChannel,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the channel.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The name of the channel.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(id: String, name: String).returns(T.attached_class) }
        def self.new(
          # The ID of the channel.
          id: nil,
          # The name of the channel.
          name: nil
        )
        end

        sig { override.returns({ id: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
