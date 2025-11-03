# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardCreateRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::CardCreateRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Configuration for custom user actions on cards.
          sig { returns(HubspotSDK::Crm::Extensions::CardActions) }
          attr_reader :actions

          sig do
            params(
              actions: HubspotSDK::Crm::Extensions::CardActions::OrHash
            ).void
          end
          attr_writer :actions

          # Configuration for displayed info on a card
          sig { returns(HubspotSDK::Crm::Extensions::CardDisplayBody) }
          attr_reader :display_

          sig do
            params(
              display_: HubspotSDK::Crm::Extensions::CardDisplayBody::OrHash
            ).void
          end
          attr_writer :display_

          # Configuration for this card's data fetch request.
          sig { returns(HubspotSDK::Crm::Extensions::CardFetchBody) }
          attr_reader :fetch

          sig do
            params(
              fetch: HubspotSDK::Crm::Extensions::CardFetchBody::OrHash
            ).void
          end
          attr_writer :fetch

          # The top-level title for this card. Displayed to users in the CRM UI.
          sig { returns(String) }
          attr_accessor :title

          # State of card definition to be created
          sig do
            params(
              actions: HubspotSDK::Crm::Extensions::CardActions::OrHash,
              display_: HubspotSDK::Crm::Extensions::CardDisplayBody::OrHash,
              fetch: HubspotSDK::Crm::Extensions::CardFetchBody::OrHash,
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Configuration for custom user actions on cards.
            actions:,
            # Configuration for displayed info on a card
            display_:,
            # Configuration for this card's data fetch request.
            fetch:,
            # The top-level title for this card. Displayed to users in the CRM UI.
            title:
          )
          end

          sig do
            override.returns(
              {
                actions: HubspotSDK::Crm::Extensions::CardActions,
                display_: HubspotSDK::Crm::Extensions::CardDisplayBody,
                fetch: HubspotSDK::Crm::Extensions::CardFetchBody,
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
