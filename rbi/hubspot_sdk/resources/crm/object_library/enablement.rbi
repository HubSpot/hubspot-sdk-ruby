# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class ObjectLibrary
        class Enablement
          # For all object types supporting enablement, returns whether they're enabled or
          # disabled
          sig do
            params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
              HubspotSDK::Crm::PortalObjectTypeEnablementPublicResponse
            )
          end
          def list(request_options: {})
          end

          # Fetch whether object type is enabled
          sig do
            params(
              object_type_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::ObjectTypeEnablementPublicResponse)
          end
          def get(
            # objectTypeId for the object type in question
            object_type_id,
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
