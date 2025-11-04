# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class Batch
          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              inputs: T::Array[HubspotSDK::Crm::PublicAssociation::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponsePublicAssociation)
          end
          def create(
            # Path param:
            to_object_type,
            # Path param:
            from_object_type:,
            # Body param:
            inputs:,
            request_options: {}
          )
          end

          # This endpoint allows you to archive multiple associations between specified
          # 'from' and 'to' object types in a single batch request.
          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              inputs: T::Array[HubspotSDK::Crm::PublicAssociation::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Path param: The type of the target object in the association.
            to_object_type,
            # Path param: The type of the source object in the association.
            from_object_type:,
            # Body param:
            inputs:,
            request_options: {}
          )
          end

          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              inputs: T::Array[HubspotSDK::PublicObjectID::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponsePublicAssociationMulti)
          end
          def get(
            # Path param:
            to_object_type,
            # Path param:
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
