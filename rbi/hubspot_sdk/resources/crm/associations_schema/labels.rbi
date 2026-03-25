# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class AssociationsSchema
        class Labels
          # Create multiple association definitions between two specified CRM object types
          # in a single request.
          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              inputs:
                T::Array[
                  HubspotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Crm::BatchResponsePublicAssociationDefinitionUserConfiguration
            )
          end
          def batch_create(
            # Path param: The type of the target object in the association.
            to_object_type,
            # Path param: The type of the source object in the association.
            from_object_type:,
            # Body param
            inputs:,
            request_options: {}
          )
          end

          # Create a new label that describes the relationship between two specified CRM
          # object types. This can help in categorizing and managing associations more
          # effectively.
          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              label: String,
              name: String,
              inverse_label: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Crm::CollectionResponseAssociationSpecWithLabelNoPaging
            )
          end
          def create_label(
            # Path param: The type of the target object in the association.
            to_object_type,
            # Path param: The type of the source object in the association.
            from_object_type:,
            # Body param: A descriptor that provides context about the relationship between
            # two associated CRM objects.
            label:,
            # Body param: The unique identifier for the association definition.
            name:,
            # Body param: An optional descriptor that clarifies the reverse relationship in
            # the association.
            inverse_label: nil,
            request_options: {}
          )
          end

          # Remove a specific label from the association between two CRM object types.
          sig do
            params(
              association_type_id: Integer,
              from_object_type: String,
              to_object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_label(
            # The unique identifier for the association type.
            association_type_id,
            # The type of the source object in the association.
            from_object_type:,
            # The type of the target object in the association.
            to_object_type:,
            request_options: {}
          )
          end

          # Retrieve all labels that describe the relationships between two specified CRM
          # object types. These labels provide context about the nature of the associations.
          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Crm::CollectionResponseAssociationSpecWithLabelNoPaging
            )
          end
          def list_labels(
            # The type of the target object in the association.
            to_object_type,
            # The type of the source object in the association.
            from_object_type:,
            request_options: {}
          )
          end

          # Update an existing label that describes the relationship between two specified
          # CRM object types. This allows for modifications to existing association labels
          # to better reflect the nature of the relationship.
          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              association_type_id: Integer,
              label: String,
              inverse_label: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def update_label(
            # Path param: The type of the target object in the association.
            to_object_type,
            # Path param: The type of the source object in the association.
            from_object_type:,
            # Body param: The unique identifier for the association type.
            association_type_id:,
            # Body param: A descriptor that provides context about the relationship between
            # associated records.
            label:,
            # Body param: An optional descriptor for the inverse relationship between
            # associated records.
            inverse_label: nil,
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
