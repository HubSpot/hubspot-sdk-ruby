# typed: strong

module HubspotSDK
  module Models
    module BusinessUnits
      class PublicBusinessUnit < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::BusinessUnits::PublicBusinessUnit,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The Business Unit's unique ID
        sig { returns(String) }
        attr_accessor :id

        # The Business Unit's name
        sig { returns(String) }
        attr_accessor :name

        sig do
          returns(
            T.nilable(HubspotSDK::BusinessUnits::PublicBusinessUnitLogoMetadata)
          )
        end
        attr_reader :logo_metadata

        sig do
          params(
            logo_metadata:
              HubspotSDK::BusinessUnits::PublicBusinessUnitLogoMetadata::OrHash
          ).void
        end
        attr_writer :logo_metadata

        sig do
          params(
            id: String,
            name: String,
            logo_metadata:
              HubspotSDK::BusinessUnits::PublicBusinessUnitLogoMetadata::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The Business Unit's unique ID
          id:,
          # The Business Unit's name
          name:,
          logo_metadata: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: String,
              logo_metadata:
                HubspotSDK::BusinessUnits::PublicBusinessUnitLogoMetadata
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
