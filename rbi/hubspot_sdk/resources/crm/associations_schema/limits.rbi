# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class AssociationsSchema
        class Limits
          # Fetch all limits for CRM associations, which include details about cardinality
          # limits (i.e., one-to-many vs one-to-one).
          sig do
            params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
              HubspotSDK::Crm::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging
            )
          end
          def list(request_options: {})
          end

          # Batch delete limits defined for associations between two specified CRM object
          # types.
          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              inputs: T::Array[HubspotSDK::Crm::PublicAssociationSpec::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponseVoid)
          end
          def batch_delete(
            # Path param: The type of the target object in the association.
            to_object_type,
            # Path param: The type of the source object in the association.
            from_object_type:,
            # Body param
            inputs:,
            request_options: {}
          )
          end

          # Update multiple association configurations between two specified CRM object
          # types in a single batch operation. This defines details about cardinality limits
          # (i.e., one-to-many vs one-to-one).
          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              inputs:
                T::Array[
                  HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionConfigurationUpdateResult
            )
          end
          def batch_update(
            # Path param: The type of the target object in the association.
            to_object_type,
            # Path param: The type of the source object in the association.
            from_object_type:,
            # Body param
            inputs:,
            request_options: {}
          )
          end

          # Retrieve the cardinality limits for associations between two specified CRM
          # object types (i.e., one-to-many vs one-to-one).
          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Crm::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging
            )
          end
          def get_by_object_types(
            # The type of the target object in the association.
            to_object_type,
            # The type of the source object in the association.
            from_object_type:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
