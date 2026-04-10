# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class PartnerClients
          class Batch
            # This endpoint allows you to update several partner client records at once by
            # providing a batch of CRM object records with their respective IDs and
            # properties. It is useful for synchronizing data across systems or making bulk
            # updates efficiently.
            sig do
              params(
                inputs:
                  T::Array[
                    HubSpotSDK::Crm::SimplePublicObjectBatchInput::OrHash
                  ],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Crm::BatchResponseSimplePublicObject)
            end
            def update(inputs:, request_options: {})
            end

            # Retrieve multiple partner client objects in a single request by specifying their
            # IDs. This endpoint is useful for efficiently accessing data for multiple clients
            # at once, particularly when integrating with third-party systems.
            sig do
              params(
                inputs: T::Array[HubSpotSDK::Crm::SimplePublicObjectID::OrHash],
                properties: T::Array[String],
                properties_with_history: T::Array[String],
                archived: T::Boolean,
                id_property: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Crm::BatchResponseSimplePublicObject)
            end
            def get(
              # Body param
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

            # @api private
            sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
