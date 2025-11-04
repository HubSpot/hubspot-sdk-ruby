# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Contacts
          class Batch
            # Create a batch of contacts. The `inputs` array can contain a `properties` object
            # to define property values for each record, along with an `associations` array to
            # define
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

            # Update a batch of contacts by ID (`contactId`) or unique property value
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

            # Archive a batch of contacts by ID. Archived contacts can be restored within 90
            # days of deletion. Learn more about the
            # [data impacted by contact deletions](https://knowledge.hubspot.com/privacy-and-consent/understand-restorable-and-permanent-contact-deletions)
            # and how to
            # [restore archived records](https://knowledge.hubspot.com/records/restore-deleted-records).
            sig do
              params(
                inputs: T::Array[HubspotSDK::Crm::SimplePublicObjectID::OrHash],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).void
            end
            def delete(inputs:, request_options: {})
            end

            # Retrieve a batch of contacts by ID (`contactId`) or unique property value
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
              # Body param:
              inputs:,
              # Body param: Key-value pairs for setting properties for the new object.
              properties:,
              # Body param: Key-value pairs for setting properties for the new object and their
              # histories.
              properties_with_history:,
              # Query param: Whether to return only results that have been archived.
              archived: nil,
              # Body param:
              id_property: nil,
              request_options: {}
            )
            end

            # Upsert a batch of contacts. The `inputs` array can contain a `properties` object
            # to define property values for each record.
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
