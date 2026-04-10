# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class Tickets
          class Batch
            # Create a batch of tickets. The `inputs` array can contain a `properties` object
            # to define property values for the ticket, along with an `associations` array to
            # define
            # [associations](https://developers.hubspot.com/docs/guides/api/crm/associations/associations-v4)
            # with other CRM records.
            sig do
              params(
                inputs:
                  T::Array[
                    HubSpotSDK::Crm::SimplePublicObjectBatchInputForCreate::OrHash
                  ],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Crm::BatchResponseSimplePublicObject)
            end
            def create(inputs:, request_options: {})
            end

            # Update a batch of tickets by ID (`ticketId`) or unique property value
            # (`idProperty`). Provided property values will be overwritten. Read-only and
            # non-existent properties will result in an error. Properties values can be
            # cleared by passing an empty string.
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

            # Delete a batch of tickets by ID. Deleted tickets can be restored within 90 days
            # of deletion. Learn more about
            # [restoring records](https://knowledge.hubspot.com/records/restore-deleted-records).
            sig do
              params(
                inputs: T::Array[HubSpotSDK::Crm::SimplePublicObjectID::OrHash],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).void
            end
            def delete(inputs:, request_options: {})
            end

            # Retrieve a batch of tickets by ID (`ticketId`) or unique property value
            # (`idProperty`).
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

            # Create or update records identified by a unique property value as specified by
            # the `idProperty` query param. `idProperty` query param refers to a property
            # whose values are unique for the object.
            sig do
              params(
                inputs:
                  T::Array[
                    HubSpotSDK::Crm::SimplePublicObjectBatchInputUpsert::OrHash
                  ],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Crm::BatchResponseSimplePublicUpsertObject)
            end
            def upsert(inputs:, request_options: {})
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
