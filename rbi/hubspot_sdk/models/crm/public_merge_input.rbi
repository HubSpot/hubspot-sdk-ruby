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

        # The object ID of the record that the merge will not set as the current value
        # after the merge.
        sig { returns(String) }
        attr_accessor :object_id_to_merge

        # The object ID of the record that the merge will generally set as the current
        # value after the merge.
        sig { returns(String) }
        attr_accessor :primary_object_id

        # Input data for merging two records.
        sig do
          params(object_id_to_merge: String, primary_object_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The object ID of the record that the merge will not set as the current value
          # after the merge.
          object_id_to_merge:,
          # The object ID of the record that the merge will generally set as the current
          # value after the merge.
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
