# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Lists
        class Memberships
          # Fetch the memberships of a list in order sorted by the `recordId` of the records
          # in the list.
          #
          # The `recordId`s are sorted in _ascending_ order if an `after` offset or no
          # offset is provided. If only a `before` offset is provided, then the records are
          # sorted in _descending_ order.
          #
          # The `after` offset parameter will take precedence over the `before` offset in a
          # case where both are provided.
          sig do
            params(
              list_id: String,
              after: String,
              before: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[HubspotSDK::CRM::JoinTimeAndRecordID]
            )
          end
          def list(
            # The **ILS ID** of the list.
            list_id,
            # The paging offset token for the page that comes `after` the previously requested
            # records.
            #
            # If provided, then the records in the response will be the records following the
            # offset, sorted in _ascending_ order. Takes precedence over the `before` offset.
            after: nil,
            # The paging offset token for the page that comes `before` the previously
            # requested records.
            #
            # If provided, then the records in the response will be the records preceding the
            # offset, sorted in _descending_ order.
            before: nil,
            # The number of records to return in the response. The maximum `limit` is 250.
            limit: nil,
            request_options: {}
          )
          end

          # Add the records provided to the list. Records that do not exist or that are
          # already members of the list are ignored.
          #
          # This endpoint only works for lists that have a `processingType` of `MANUAL` or
          # `SNAPSHOT`.
          sig do
            params(
              list_id: String,
              body: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::MembershipsUpdateResponse)
          end
          def add(
            # The **ILS ID** of the `MANUAL` or `SNAPSHOT` list.
            list_id,
            body:,
            request_options: {}
          )
          end

          # Add all of the records from a _source list_ (specified by the `sourceListId`) to
          # a _destination list_ (specified by the `listId`). Records that are already
          # members of the _destination list_ will be ignored. The _destination_ and _source
          # list_ IDs must be different. The _destination_ and _source lists_ must contain
          # records of the same type (e.g. contacts, companies, etc.).
          #
          # This endpoint only works for _destination lists_ that have a `processingType` of
          # `MANUAL` or `SNAPSHOT`. The _source list_ can have any `processingType`.
          #
          # This endpoint only supports a `sourceListId` for lists with less than 100,000
          # memberships.
          sig do
            params(
              source_list_id: String,
              list_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def add_all_from_list(
            # The **ILS ID** of the _source list_ to grab the records from, which are then
            # added to the _destination list_.
            source_list_id,
            # The **ILS ID** of the `MANUAL` or `SNAPSHOT` _destination list_, which the
            # _source list_ records are added to.
            list_id:,
            request_options: {}
          )
          end

          # Add and/or remove records that have already been created in the system to and/or
          # from a list.
          #
          # This endpoint only works for lists that have a `processingType` of `MANUAL` or
          # `SNAPSHOT`.
          sig do
            params(
              list_id: String,
              record_ids_to_add: T::Array[String],
              record_ids_to_remove: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::MembershipsUpdateResponse)
          end
          def add_and_remove(
            # The **ILS ID** of the `MANUAL` or `SNAPSHOT` list.
            list_id,
            record_ids_to_add:,
            record_ids_to_remove:,
            request_options: {}
          )
          end

          # For given record provide lists this record is member of.
          sig do
            params(
              record_id: String,
              object_type_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::CRM::APICollectionResponseRecordListMembershipNoPaging
            )
          end
          def get_lists(
            # Id of the record
            record_id,
            # Object type id of the record
            object_type_id:,
            request_options: {}
          )
          end

          # Fetch the memberships of a list in order sorted by the time the records were
          # added to the list.
          #
          # The `recordId`s are sorted in _ascending_ order if an `after` offset or no
          # offset is provided. If only a `before` offset is provided, then the records are
          # sorted in _descending_ order.
          #
          # The `after` offset parameter will take precedence over the `before` offset in a
          # case where both are provided.
          sig do
            params(
              list_id: String,
              after: String,
              before: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[HubspotSDK::CRM::JoinTimeAndRecordID]
            )
          end
          def get_page_ordered_by_added_to_list_date(
            # The **ILS ID** of the list.
            list_id,
            # The paging offset token for the page that comes `after` the previously requested
            # records.
            #
            # If provided, then the records in the response will be the records following the
            # offset, sorted in _ascending_ order. Takes precedence over the `before` offset.
            after: nil,
            # The paging offset token for the page that comes `before` the previously
            # requested records.
            #
            # If provided, then the records in the response will be the records preceding the
            # offset, sorted in _descending_ order.
            before: nil,
            # The number of records to return in the response. The maximum `limit` is 250.
            limit: nil,
            request_options: {}
          )
          end

          # Remove the records provided from the list. Records that do not exist or that are
          # not members of the list are ignored.
          #
          # This endpoint only works for lists that have a `processingType` of `MANUAL` or
          # `SNAPSHOT`.
          sig do
            params(
              list_id: String,
              body: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::MembershipsUpdateResponse)
          end
          def remove(
            # The **ILS ID** of the `MANUAL` or `SNAPSHOT` list.
            list_id,
            body:,
            request_options: {}
          )
          end

          # Remove **all** of the records from a list. **_Note:_** _The list is not
          # deleted._
          #
          # This endpoint only works for lists that have a `processingType` of `MANUAL` or
          # `SNAPSHOT`.
          #
          # This endpoint only supports lists that have less than 100,000 memberships.
          sig do
            params(
              list_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def remove_all(
            # The **ILS ID** of the `MANUAL` or `SNAPSHOT` list.
            list_id,
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
