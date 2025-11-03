# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CreatedResponsePropertyGroup < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CreatedResponsePropertyGroup,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :created_resource_id

        # An ID for a group of properties
        sig { returns(HubspotSDK::Crm::PropertyGroup) }
        attr_reader :entity

        sig { params(entity: HubspotSDK::Crm::PropertyGroup::OrHash).void }
        attr_writer :entity

        sig { returns(T.nilable(String)) }
        attr_reader :location

        sig { params(location: String).void }
        attr_writer :location

        sig do
          params(
            created_resource_id: String,
            entity: HubspotSDK::Crm::PropertyGroup::OrHash,
            location: String
          ).returns(T.attached_class)
        end
        def self.new(
          created_resource_id:,
          # An ID for a group of properties
          entity:,
          location: nil
        )
        end

        sig do
          override.returns(
            {
              created_resource_id: String,
              entity: HubspotSDK::Crm::PropertyGroup,
              location: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
