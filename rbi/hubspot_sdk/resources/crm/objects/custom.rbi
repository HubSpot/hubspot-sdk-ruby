# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Custom
          # Create multiple CRM objects in a single request by specifying the object type
          # and providing the necessary properties and associations for each object.
          sig do
            params(
              object_type: String,
              inputs:
                T::Array[
                  HubspotSDK::Crm::SimplePublicObjectBatchInputForCreate::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponseSimplePublicObject)
          end
          def create(object_type, inputs:, request_options: {})
          end

          # Update a batch of CRM objects by their internal IDs or unique property values,
          # allowing for efficient modifications of multiple records in a single request.
          sig do
            params(
              object_type: String,
              inputs:
                T::Array[HubspotSDK::Crm::SimplePublicObjectBatchInput::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponseSimplePublicObject)
          end
          def update(object_type, inputs:, request_options: {})
          end

          # Read a page of objects. Control what is returned via the `properties` query
          # param.
          sig do
            params(
              object_type: String,
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
            object_type,
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

          # Archive a batch of objects by their unique IDs. This operation moves the
          # specified objects to the recycling bin, effectively marking them as archived.
          sig do
            params(
              object_type: String,
              inputs: T::Array[HubspotSDK::Crm::SimplePublicObjectID::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(object_type, inputs:, request_options: {})
          end

          # Retrieve records by record ID or include the `idProperty` parameter to retrieve
          # records by a custom unique value property.
          sig do
            params(
              object_type: String,
              inputs: T::Array[HubspotSDK::Crm::SimplePublicObjectID::OrHash],
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              archived: T::Boolean,
              id_property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponseSimplePublicObject)
          end
          def get(
            # Path param
            object_type,
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

          # Merge two CRM objects of the same type by specifying one as the primary object
          # and the other as the object to be merged into it.
          sig do
            params(
              object_type: String,
              object_id_to_merge: String,
              primary_object_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObject)
          end
          def merge(
            object_type,
            # The object ID of the record that the merge will not set as the current value
            # after the merge.
            object_id_to_merge:,
            # The object ID of the record that the merge will generally set as the current
            # value after the merge.
            primary_object_id:,
            request_options: {}
          )
          end

          # Execute a search query to find CRM objects of a given type, using specified
          # filters and properties. The search can be customized with filters, sorting, and
          # pagination options.
          sig do
            params(
              object_type: String,
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
            object_type,
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
              object_type: String,
              inputs:
                T::Array[
                  HubspotSDK::Crm::SimplePublicObjectBatchInputUpsert::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject)
          end
          def upsert(object_type, inputs:, request_options: {})
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
