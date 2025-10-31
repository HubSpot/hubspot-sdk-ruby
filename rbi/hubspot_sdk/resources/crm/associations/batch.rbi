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
            # Path param:
            to_object_type,
            # Path param:
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
            # Path param:
            to_object_type,
            # Path param:
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
