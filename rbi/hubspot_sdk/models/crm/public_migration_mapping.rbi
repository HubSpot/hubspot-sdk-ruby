# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicMigrationMapping < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicMigrationMapping,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The legacy list id for the list
        sig { returns(String) }
        attr_accessor :legacy_list_id

        # The V3 list id for the list
        sig { returns(String) }
        attr_accessor :list_id

        sig do
          params(legacy_list_id: String, list_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The legacy list id for the list
          legacy_list_id:,
          # The V3 list id for the list
          list_id:
        )
        end

        sig { override.returns({ legacy_list_id: String, list_id: String }) }
        def to_hash
        end
      end
    end
  end
end
