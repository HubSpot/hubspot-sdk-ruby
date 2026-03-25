# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Users
          # Create multiple users in a single request by providing a batch of user
          # properties and associations. This endpoint returns the created users along with
          # their IDs.
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

          # Update multiple user records in a single request by specifying their internal
          # IDs or unique property values. This operation allows for batch processing of
          # user data, ensuring efficient updates across multiple user profiles.
          sig do
            params(
              inputs:
                T::Array[HubspotSDK::Crm::SimplePublicObjectBatchInput::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponseSimplePublicObject)
          end
          def update(inputs:, request_options: {})
          end

          # Read a page of users. Control what is returned via the `properties` query param.
          sig do
            params(
              after: String,
              archived: T::Boolean,
              associations: T::Array[String],
              limit: Integer,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Crm::SimplePublicObjectWithAssociations
              ]
            )
          end
          def list(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            # A comma separated list of object types to retrieve associated IDs for. If any of
            # the specified associations do not exist, they will be ignored.
            associations: nil,
            # The maximum number of results to display per page.
            limit: nil,
            # A comma separated list of the properties to be returned in the response. If any
            # of the specified properties are not present on the requested object(s), they
            # will be ignored.
            properties: nil,
            # A comma separated list of the properties to be returned along with their history
            # of previous values. If any of the specified properties are not present on the
            # requested object(s), they will be ignored. Usage of this parameter will reduce
            # the maximum number of objects that can be read by a single request.
            properties_with_history: nil,
            request_options: {}
          )
          end

          # Archive multiple users by their IDs in a single request. This operation moves
          # the specified users to the recycling bin, effectively deactivating them from
          # active use.
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

          # Execute a search for users using defined filters, properties, and sorting
          # options. The request must include a search query and can return up to 200
          # results per request.
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
