# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class PublicCardResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::PublicCardResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # Configuration for custom user actions on cards.
          sig { returns(HubspotSDK::Crm::Extensions::CardActions) }
          attr_reader :actions

          sig do
            params(
              actions: HubspotSDK::Crm::Extensions::CardActions::OrHash
            ).void
          end
          attr_writer :actions

          sig do
            returns(T::Array[HubspotSDK::Crm::Extensions::CardAuditResponse])
          end
          attr_accessor :audit_history

          # Configuration for displayed info on a card
          sig { returns(HubspotSDK::Crm::Extensions::CardDisplayBody) }
          attr_reader :display_

          sig do
            params(
              display_: HubspotSDK::Crm::Extensions::CardDisplayBody::OrHash
            ).void
          end
          attr_writer :display_

          sig { returns(HubspotSDK::Crm::Extensions::PublicCardFetchBody) }
          attr_reader :fetch

          sig do
            params(
              fetch: HubspotSDK::Crm::Extensions::PublicCardFetchBody::OrHash
            ).void
          end
          attr_writer :fetch

          sig { returns(String) }
          attr_accessor :title

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig do
            params(
              id: String,
              actions: HubspotSDK::Crm::Extensions::CardActions::OrHash,
              audit_history:
                T::Array[
                  HubspotSDK::Crm::Extensions::CardAuditResponse::OrHash
                ],
              display_: HubspotSDK::Crm::Extensions::CardDisplayBody::OrHash,
              fetch: HubspotSDK::Crm::Extensions::PublicCardFetchBody::OrHash,
              title: String,
              created_at: Time,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Configuration for custom user actions on cards.
            actions:,
            audit_history:,
            # Configuration for displayed info on a card
            display_:,
            fetch:,
            title:,
            created_at: nil,
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                actions: HubspotSDK::Crm::Extensions::CardActions,
                audit_history:
                  T::Array[HubspotSDK::Crm::Extensions::CardAuditResponse],
                display_: HubspotSDK::Crm::Extensions::CardDisplayBody,
                fetch: HubspotSDK::Crm::Extensions::PublicCardFetchBody,
                title: String,
                created_at: Time,
                updated_at: Time
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
