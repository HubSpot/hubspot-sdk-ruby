# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicDeliveryIdentifier < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicDeliveryIdentifier,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

        sig { params(type: String, value: String).returns(T.attached_class) }
        def self.new(type:, value:)
        end

        sig { override.returns({ type: String, value: String }) }
        def to_hash
        end
      end
    end
  end
end
