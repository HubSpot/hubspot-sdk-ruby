# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicMergeInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicMergeInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the CRM object that will be merged into the primary
        # object.
        sig { returns(String) }
        attr_accessor :object_id_to_merge

        # The unique identifier of the CRM object that will remain after the merge.
        sig { returns(String) }
        attr_accessor :primary_object_id

        sig do
          params(object_id_to_merge: String, primary_object_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier of the CRM object that will be merged into the primary
          # object.
          object_id_to_merge:,
          # The unique identifier of the CRM object that will remain after the merge.
          primary_object_id:
        )
        end

        sig do
          override.returns(
            { object_id_to_merge: String, primary_object_id: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
