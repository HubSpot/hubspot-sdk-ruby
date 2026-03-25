# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardPatchRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::CardPatchRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(HubspotSDK::Crm::Extensions::CardActions)) }
          attr_reader :actions

          sig do
            params(
              actions: HubspotSDK::Crm::Extensions::CardActions::OrHash
            ).void
          end
          attr_writer :actions

          sig do
            returns(T.nilable(HubspotSDK::Crm::Extensions::CardDisplayBody))
          end
          attr_reader :display_

          sig do
            params(
              display_: HubspotSDK::Crm::Extensions::CardDisplayBody::OrHash
            ).void
          end
          attr_writer :display_

          sig do
            returns(T.nilable(HubspotSDK::Crm::Extensions::CardFetchBodyPatch))
          end
          attr_reader :fetch

          sig do
            params(
              fetch: HubspotSDK::Crm::Extensions::CardFetchBodyPatch::OrHash
            ).void
          end
          attr_writer :fetch

          # The top-level title for this card. Displayed to users in the CRM UI.
          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          sig do
            params(
              actions: HubspotSDK::Crm::Extensions::CardActions::OrHash,
              display_: HubspotSDK::Crm::Extensions::CardDisplayBody::OrHash,
              fetch: HubspotSDK::Crm::Extensions::CardFetchBodyPatch::OrHash,
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            actions: nil,
            display_: nil,
            fetch: nil,
            # The top-level title for this card. Displayed to users in the CRM UI.
            title: nil
          )
          end

          sig do
            override.returns(
              {
                actions: HubspotSDK::Crm::Extensions::CardActions,
                display_: HubspotSDK::Crm::Extensions::CardDisplayBody,
                fetch: HubspotSDK::Crm::Extensions::CardFetchBodyPatch,
                title: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
