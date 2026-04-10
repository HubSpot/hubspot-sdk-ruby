# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class ParticipationAssociations < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::ParticipationAssociations,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Marketing::ContactAssociation) }
        attr_reader :contact

        sig do
          params(
            contact: HubSpotSDK::Marketing::ContactAssociation::OrHash
          ).void
        end
        attr_writer :contact

        sig { returns(HubSpotSDK::Marketing::MarketingEventAssociation) }
        attr_reader :marketing_event

        sig do
          params(
            marketing_event:
              HubSpotSDK::Marketing::MarketingEventAssociation::OrHash
          ).void
        end
        attr_writer :marketing_event

        sig do
          params(
            contact: HubSpotSDK::Marketing::ContactAssociation::OrHash,
            marketing_event:
              HubSpotSDK::Marketing::MarketingEventAssociation::OrHash
          ).returns(T.attached_class)
        end
        def self.new(contact:, marketing_event:)
        end

        sig do
          override.returns(
            {
              contact: HubSpotSDK::Marketing::ContactAssociation,
              marketing_event: HubSpotSDK::Marketing::MarketingEventAssociation
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
