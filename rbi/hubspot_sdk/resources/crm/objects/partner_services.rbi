# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PartnerServices
          # Update multiple partner services using their internal IDs or unique property
          # values. This operation allows for batch processing of updates, ensuring
          # efficient synchronization of service data between HubSpot and other systems.
          sig do
            params(
              inputs:
                T::Array[HubspotSDK::Crm::SimplePublicObjectBatchInput::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponseSimplePublicObject)
          end
          def update(inputs:, request_options: {})
          end

          # Retrieve a list of associations for a specific partner service, filtered by the
          # type of associated object.
          sig do
            params(
              to_object_type: String,
              partner_service_id: String,
              after: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Crm::MultiAssociatedObjectWithLabel
              ]
            )
          end
          def list(
            # Path param
            to_object_type,
            # Path param
            partner_service_id:,
            # Query param: The paging cursor token of the last successfully read resource will
            # be returned as the `paging.next.after` JSON property of a paged response
            # containing more results.
            after: nil,
            # Query param: The maximum number of results to display per page.
            limit: nil,
            request_options: {}
          )
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

          # Execute a search query to find partner services based on defined filters,
          # properties, and sorting options. This endpoint allows you to retrieve a
          # collection of partner services that match the specified search criteria.
          sig do
            params(
              after: String,
              filter_groups: T::Array[HubspotSDK::Crm::FilterGroup::OrHash],
              limit: Integer,
              properties: T::Array[String],
              sorts: T::Array[String],
              query: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Crm::CollectionResponseWithTotalSimplePublicObject
            )
          end
          def search(
            # A paging cursor token for retrieving subsequent pages.
            after:,
            # Up to 6 groups of filters defining additional query criteria.
            filter_groups:,
            # The maximum results to return, up to 200 objects.
            limit:,
            # A list of property names to include in the response.
            properties:,
            # Specifies sorting order based on object properties.
            sorts:,
            # The search query string, up to 3000 characters.
            query: nil,
            request_options: {}
          )
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
