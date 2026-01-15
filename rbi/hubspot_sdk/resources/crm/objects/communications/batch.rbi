# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Communications
          class Batch
            # Create a batch of messages. The `inputs` array can contain a `properties` object
            # to define property values for each message, along with an `associations` array
            # to define
            # [associations](https://developers.hubspot.com/docs/guides/api/crm/associations/associations-v4)
            # with other CRM records.
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

            # Update a batch of messages by ID (`communicationId`) or unique property value
            # (`idProperty`). Provided property values will be overwritten. Read-only and
            # non-existent properties will result in an error. Properties values can be
            # cleared by passing an empty string.
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

            # Delete a batch of messages by ID. A deleted message can be restored within 90
            # days of being deleted. Learn more about
            # [restoring activity records](https://knowledge.hubspot.com/records/restore-deleted-activity-in-a-record).
            sig do
              params(
                inputs: T::Array[HubspotSDK::Crm::SimplePublicObjectID::OrHash],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).void
            end
            def delete(inputs:, request_options: {})
            end

            # Retrieve a batch of messages by ID (`communicationId`) or unique property value
            # (`idProperty`).
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
              # Body param: A unique property used to identify objects instead of the default
              # ID.
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
