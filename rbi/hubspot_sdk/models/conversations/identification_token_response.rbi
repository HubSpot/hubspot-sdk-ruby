# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class IdentificationTokenResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::IdentificationTokenResponse,
              HubSpotSDK::Internal::AnyHash
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
