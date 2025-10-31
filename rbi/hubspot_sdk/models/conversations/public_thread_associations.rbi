# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicThreadAssociations < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicThreadAssociations,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :associated_ticket_id

        sig { params(associated_ticket_id: String).void }
        attr_writer :associated_ticket_id

        sig { params(associated_ticket_id: String).returns(T.attached_class) }
        def self.new(associated_ticket_id: nil)
        end

        sig { override.returns({ associated_ticket_id: String }) }
        def to_hash
        end
      end
    end
  end
end
