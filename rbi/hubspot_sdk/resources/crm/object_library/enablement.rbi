# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class ObjectLibrary
        class Enablement
          sig do
            params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
              HubspotSDK::CRM::PortalObjectTypeEnablementPublicResponse
            )
          end
          def list(request_options: {})
          end

          sig do
            params(
              object_type_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::ObjectTypeEnablementPublicResponse)
          end
          def get(object_type_id, request_options: {})
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
