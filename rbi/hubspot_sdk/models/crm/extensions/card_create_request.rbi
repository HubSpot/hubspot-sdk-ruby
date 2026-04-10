# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardCreateRequest < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::CardCreateRequest,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(HubSpotSDK::Crm::Extensions::CardActions) }
          attr_reader :actions

          sig do
            params(
              actions: HubSpotSDK::Crm::Extensions::CardActions::OrHash
            ).void
          end
          attr_writer :actions

          sig { returns(HubSpotSDK::Crm::Extensions::CardDisplayBody) }
          attr_reader :display_

          sig do
            params(
              display_: HubSpotSDK::Crm::Extensions::CardDisplayBody::OrHash
            ).void
          end
          attr_writer :display_

          sig { returns(HubSpotSDK::Crm::Extensions::CardFetchBody) }
          attr_reader :fetch

          sig do
            params(
              fetch: HubSpotSDK::Crm::Extensions::CardFetchBody::OrHash
            ).void
          end
          attr_writer :fetch

          # The top-level title for this card. Displayed to users in the CRM UI.
          sig { returns(String) }
          attr_accessor :title

          sig do
            params(
              actions: HubSpotSDK::Crm::Extensions::CardActions::OrHash,
              display_: HubSpotSDK::Crm::Extensions::CardDisplayBody::OrHash,
              fetch: HubSpotSDK::Crm::Extensions::CardFetchBody::OrHash,
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            actions:,
            display_:,
            fetch:,
            # The top-level title for this card. Displayed to users in the CRM UI.
            title:
          )
          end

          sig do
            override.returns(
              {
                actions: HubSpotSDK::Crm::Extensions::CardActions,
                display_: HubSpotSDK::Crm::Extensions::CardDisplayBody,
                fetch: HubSpotSDK::Crm::Extensions::CardFetchBody,
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
