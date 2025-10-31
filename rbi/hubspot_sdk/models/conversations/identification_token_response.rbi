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

        sig { returns(String) }
        attr_accessor :token

        # The identification token to be passed to the Conversations JS API to identify
        # the visitor
        sig { params(token: String).returns(T.attached_class) }
        def self.new(token:)
        end

        sig { override.returns({ token: String }) }
        def to_hash
        end
      end
    end
  end
end
