# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class ObjectLibrary
        class Enablement
          # Returns all objects in the object library and their enablement status
          sig do
            params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
              HubspotSDK::Models::CRM::ObjectLibrary::EnablementListResponse
            )
          end
          def list(request_options: {})
          end

          # Returns an object and its enablement status
          sig do
            params(
              object_type_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Models::CRM::ObjectLibrary::EnablementGetResponse
            )
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
