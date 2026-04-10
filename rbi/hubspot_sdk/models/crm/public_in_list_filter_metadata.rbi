# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicInListFilterMetadata < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicInListFilterMetadata,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The identifier for the filter metadata.
        sig { returns(String) }
        attr_accessor :id

        # Specifies the type of list for the filter (WORKFLOWS_ENROLLMENT,
        # WORKFLOWS_ACTIVE, WORKFLOWS_GOAL, WORKFLOWS_COMPLETED, IMPORT, DATASET,
        # DATASETS).
        sig { returns(String) }
        attr_accessor :in_list_type

        sig do
          params(id: String, in_list_type: String).returns(T.attached_class)
        end
        def self.new(
          # The identifier for the filter metadata.
          id:,
          # Specifies the type of list for the filter (WORKFLOWS_ENROLLMENT,
          # WORKFLOWS_ACTIVE, WORKFLOWS_GOAL, WORKFLOWS_COMPLETED, IMPORT, DATASET,
          # DATASETS).
          in_list_type:
        )
        end

        sig { override.returns({ id: String, in_list_type: String }) }
        def to_hash
        end
      end
    end
  end
end
