# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class V4
          class Batch
            # Batch create associations for objects
            sig do
              params(
                to_object_type: String,
                from_object_type: String,
                inputs:
                  T::Array[
                    HubspotSDK::Crm::Associations::PublicAssociationMultiPost::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Crm::Associations::BatchResponseLabelsBetweenObjectPair
              )
            end
            def create(
              # Path param: The type of the to Object
              to_object_type,
              # Path param: The type of the from Object
              from_object_type:,
              # Body param:
              inputs:,
              request_options: {}
            )
            end

            # Batch delete associations for objects
            sig do
              params(
                to_object_type: String,
                from_object_type: String,
                inputs:
                  T::Array[
                    HubspotSDK::Crm::Associations::PublicAssociationMultiArchive::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::BatchResponseVoid)
            end
            def delete(
              # Path param: Specifies the type of the target object in the batch association
              # deletion.
              to_object_type,
              # Path param: Specifies the type of the source object in the batch association
              # deletion.
              from_object_type:,
              # Body param:
              inputs:,
              request_options: {}
            )
            end

            # Create the default (most generic) association type between two object types
            sig do
              params(
                to_object_type: String,
                from_object_type: String,
                inputs:
                  T::Array[
                    HubspotSDK::Crm::Associations::PublicDefaultAssociationMultiPost::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::BatchResponsePublicDefaultAssociation)
            end
            def create_default(
              # Path param: Specifies the type of the target object in the association.
              to_object_type,
              # Path param: Specifies the type of the source object in the association.
              from_object_type:,
              # Body param:
              inputs:,
              request_options: {}
            )
            end

            # Batch delete specific association labels for objects. Deleting an unlabeled
            # association will also delete all labeled associations between those two objects
            sig do
              params(
                to_object_type: String,
                from_object_type: String,
                inputs:
                  T::Array[
                    HubspotSDK::Crm::Associations::PublicAssociationMultiPost::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::BatchResponseVoid)
            end
            def delete_labels(
              # Path param: The type of the to Object
              to_object_type,
              # Path param: The type of the from Object
              from_object_type:,
              # Body param:
              inputs:,
              request_options: {}
            )
            end

            # Batch read associations for objects to specific object type. The 'after' field
            # in a returned paging object can be added alongside the 'id' to retrieve the next
            # page of associations from that objectId. The 'link' field is deprecated and
            # should be ignored. Note: The 'paging' field will only be present if there are
            # more pages and absent otherwise.
            sig do
              params(
                to_object_type: String,
                from_object_type: String,
                inputs:
                  T::Array[
                    HubspotSDK::Crm::Associations::PublicFetchAssociationsBatchRequest::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Crm::Associations::BatchResponsePublicAssociationMultiWithLabel
              )
            end
            def get(
              # Path param: The type of the to Object
              to_object_type,
              # Path param: The type of the from Object
              from_object_type:,
              # Body param:
              inputs:,
              request_options: {}
            )
            end

            # Upsert a batch of CRM objects, creating new records or updating existing ones
            # based on their internal IDs or unique property values.
            sig do
              params(
                object_type: String,
                inputs:
                  T::Array[
                    HubspotSDK::Crm::SimplePublicObjectBatchInputUpsert::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject)
            end
            def upsert(
              # Specifies the type of CRM object to upsert in the batch operation.
              object_type,
              inputs:,
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
end
