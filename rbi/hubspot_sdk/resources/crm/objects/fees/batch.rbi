# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Fees
          class Batch
            # Create multiple fees in a single request by providing a batch of fee objects
            # with their properties and associations. This operation returns a list of the
            # created fee objects, including their unique identifiers.
            sig do
              params(
                inputs:
                  T::Array[
                    HubspotSDK::Crm::SimplePublicObjectBatchInputForCreate::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::BatchResponseSimplePublicObject)
            end
            def create(inputs:, request_options: {})
            end

            # Update multiple fee records in a single request using their internal IDs or
            # unique property values. This operation allows you to modify the properties of
            # several fees simultaneously, streamlining the process of managing fee data in
            # bulk.
            sig do
              params(
                inputs:
                  T::Array[
                    HubspotSDK::Crm::SimplePublicObjectBatchInput::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::BatchResponseSimplePublicObject)
            end
            def update(inputs:, request_options: {})
            end

            # Archive multiple fees by their IDs, effectively moving them to the recycling
            # bin.
            sig do
              params(
                inputs: T::Array[HubspotSDK::Crm::SimplePublicObjectID::OrHash],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).void
            end
            def delete(inputs:, request_options: {})
            end

            # Retrieve records by record ID or include the `idProperty` parameter to retrieve
            # records by a custom unique value property.
            sig do
              params(
                inputs: T::Array[HubspotSDK::Crm::SimplePublicObjectID::OrHash],
                properties: T::Array[String],
                properties_with_history: T::Array[String],
                archived: T::Boolean,
                id_property: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::BatchResponseSimplePublicObject)
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

            # Create and update a batch of fees by a unique property. Fees that don't exist
            # will be created, while existing fees will be updated.
            sig do
              params(
                inputs:
                  T::Array[
                    HubspotSDK::Crm::SimplePublicObjectBatchInputUpsert::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject)
            end
            def upsert(inputs:, request_options: {})
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
