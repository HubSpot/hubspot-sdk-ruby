# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Associations
        class Batch
          sig do
            params(
              to_object_id: String,
              from_object_type: String,
              from_object_id: String,
              to_object_type: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation)
          end
          def create(
            to_object_id,
            from_object_type:,
            from_object_id:,
            to_object_type:,
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
                  HubSpotSDK::Crm::PublicAssociationMultiArchive::OrHash
                ],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Path param
            to_object_type,
            # Path param
            from_object_type:,
            # Body param
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
                  HubSpotSDK::Crm::PublicDefaultAssociationMultiPost::OrHash
                ],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::BatchResponsePublicDefaultAssociation)
          end
          def create_default(
            # Path param
            to_object_type,
            # Path param
            from_object_type:,
            # Body param
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
                T::Array[HubSpotSDK::Crm::PublicAssociationMultiPost::OrHash],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_labels(
            # Path param
            to_object_type,
            # Path param
            from_object_type:,
            # Body param
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
                  HubSpotSDK::Crm::PublicFetchAssociationsBatchRequest::OrHash
                ],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Crm::BatchResponsePublicAssociationMultiWithLabel
            )
          end
          def get(
            # Path param
            to_object_type,
            # Path param
            from_object_type:,
            # Body param
            inputs:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
