# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Associations
        class Batch
          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              inputs: T::Array[HubspotSDK::CRM::PublicAssociation::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::BatchResponsePublicAssociation)
          end
          def create(
            # Path param: The type of the object to which associations will be created.
            to_object_type,
            # Path param: The type of the object from which associations will be created.
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
              inputs: T::Array[HubspotSDK::CRM::PublicAssociation::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Path param: The type of the object to which associations will be removed.
            to_object_type,
            # Path param: The type of the object from which associations will be removed.
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
            ).returns(HubspotSDK::CRM::BatchResponsePublicAssociationMulti)
          end
          def get(
            # Path param: The type of the object to which associations will be read.
            to_object_type,
            # Path param: The type of the object from which associations will be read.
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
