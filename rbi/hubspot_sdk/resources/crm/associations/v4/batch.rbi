# typed: strong

module HubspotSDK
  module Resources
    class CRM
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
                    HubspotSDK::CRM::Associations::PublicAssociationMultiPost::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::CRM::Associations::BatchResponseLabelsBetweenObjectPair
              )
            end
            def create(
              # Path param: Type of the fromObject for this association definition (ex. "0-1")
              to_object_type,
              # Path param: Type of the toObject for this association definition (ex. "0-2")
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
                    HubspotSDK::CRM::Associations::PublicAssociationMultiArchive::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::CRM::Associations::BatchResponseVoid)
            end
            def delete(
              # Path param: Type of the toObject for this association definition.
              to_object_type,
              # Path param: Type of the fromObject for this association definition.
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
                    HubspotSDK::CRM::Associations::PublicDefaultAssociationMultiPost::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::CRM::BatchResponsePublicDefaultAssociation)
            end
            def create_default(
              # Path param: Type of the fromObject for this association definition (ex. "0-1")
              to_object_type,
              # Path param: Type of the toObject for this association definition (ex. "0-2")
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
                    HubspotSDK::CRM::Associations::PublicAssociationMultiPost::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::CRM::Associations::BatchResponseVoid)
            end
            def delete_labels(
              # Path param: Type of the toObject for this association definition.
              to_object_type,
              # Path param: Type of the fromObject for this association definition.
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
                    HubspotSDK::CRM::Associations::PublicFetchAssociationsBatchRequest::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::CRM::Associations::BatchResponsePublicAssociationMultiWithLabel
              )
            end
            def get(
              # Path param: Type of the toObject for this association definition.
              to_object_type,
              # Path param: Type of the fromObject for this association definition.
              from_object_type:,
              # Body param:
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
