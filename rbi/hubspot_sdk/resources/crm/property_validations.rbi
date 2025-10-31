# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class PropertyValidations
        # Read all properties with validation rules for a given object.
        sig do
          params(
            object_type_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Models::CRM::PropertyValidationListResponse)
        end
        def list(object_type_id, request_options: {})
        end

        # Read a property's validation rules identified by {propertyName}.
        sig do
          params(
            property_name: String,
            object_type_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Models::CRM::PropertyValidationGetResponse)
        end
        def get(property_name, object_type_id:, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
