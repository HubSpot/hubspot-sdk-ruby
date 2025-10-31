# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Objects
        class PartnerClients
          class Batch
            # Read a batch of objects by internal ID, or unique property values
            sig do
              params(
                inputs: T::Array[HubspotSDK::CRM::SimplePublicObjectID::OrHash],
                properties: T::Array[String],
                properties_with_history: T::Array[String],
                archived: T::Boolean,
                id_property: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::CRM::BatchResponseSimplePublicObject)
            end
            def batch_get(
              # Body param:
              inputs:,
              # Body param: Key-value pairs for setting properties for the new object.
              properties:,
              # Body param: Key-value pairs for setting properties for the new object and their
              # histories.
              properties_with_history:,
              # Query param: Whether to return only results that have been archived.
              archived: nil,
              # Body param: When using a custom unique value property to retrieve records, the
              # name of the property. Do not include this parameter if retrieving by record ID.
              id_property: nil,
              request_options: {}
            )
            end

            # Update a batch of objects
            sig do
              params(
                inputs:
                  T::Array[
                    HubspotSDK::CRM::SimplePublicObjectBatchInput::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::CRM::BatchResponseSimplePublicObject)
            end
            def batch_update(inputs:, request_options: {})
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
