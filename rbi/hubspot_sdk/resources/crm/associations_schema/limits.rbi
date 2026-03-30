# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class AssociationsSchema
        class Limits
          # Retrieve all configured association limits between objects, which include
          # details about how different CRM object types are associated with each other.
          sig do
            params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
              HubspotSDK::Crm::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging
            )
          end
          def list(request_options: {})
          end

          # Batch delete limits that have been defined for association types between two
          # object types.
          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              inputs: T::Array[HubspotSDK::Crm::PublicAssociationSpec::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponseVoid)
          end
          def batch_delete(
            # Path param
            to_object_type,
            # Path param
            from_object_type:,
            # Body param
            inputs:,
            request_options: {}
          )
          end

          # Batch update association limits that have been configured between two object
          # types.
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
            # Path param
            to_object_type,
            # Path param
            from_object_type:,
            # Body param
            inputs:,
            request_options: {}
          )
          end

          # Retrieve the configuration details for associations between two specified CRM
          # object types. Use this endpoint to understand limits that have been set for
          # specific association types.
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
            to_object_type,
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
