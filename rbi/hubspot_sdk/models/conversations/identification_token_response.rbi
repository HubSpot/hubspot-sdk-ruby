# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class IdentificationTokenResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::IdentificationTokenResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An identification token that allows the visitor to be treated as a known
        # contact.
        sig { returns(String) }
        attr_accessor :token

        sig { params(token: String).returns(T.attached_class) }
        def self.new(
          # An identification token that allows the visitor to be treated as a known
          # contact.
          token:
        )
        end

        sig { override.returns({ token: String }) }
        def to_hash
        end
      end
    end
  end
end
