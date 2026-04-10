# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class ParticipationBreakdown < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::ParticipationBreakdown,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The internal ID of the target marketing event
        sig { returns(String) }
        attr_accessor :id

        sig { returns(HubSpotSDK::Marketing::ParticipationAssociations) }
        attr_reader :associations

        sig do
          params(
            associations:
              HubSpotSDK::Marketing::ParticipationAssociations::OrHash
          ).void
        end
        attr_writer :associations

        # The creation time and date of the target marketing event
        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(HubSpotSDK::Marketing::ParticipationProperties) }
        attr_reader :properties

        sig do
          params(
            properties: HubSpotSDK::Marketing::ParticipationProperties::OrHash
          ).void
        end
        attr_writer :properties

        sig do
          params(
            id: String,
            associations:
              HubSpotSDK::Marketing::ParticipationAssociations::OrHash,
            created_at: Time,
            properties: HubSpotSDK::Marketing::ParticipationProperties::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The internal ID of the target marketing event
          id:,
          associations:,
          # The creation time and date of the target marketing event
          created_at:,
          properties:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              associations: HubSpotSDK::Marketing::ParticipationAssociations,
              created_at: Time,
              properties: HubSpotSDK::Marketing::ParticipationProperties
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
