# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class ObjectLibrary
        class Enablement
          sig do
            params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
              HubSpotSDK::Crm::ObjectLibrary::PortalObjectTypeEnablementPublicResponse
            )
          end
          def get_all(request_options: {})
          end

          sig do
            params(
              object_type_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Crm::ObjectLibrary::ObjectTypeEnablementPublicResponse
            )
          end
          def get_by_object_type_id(object_type_id, request_options: {})
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
