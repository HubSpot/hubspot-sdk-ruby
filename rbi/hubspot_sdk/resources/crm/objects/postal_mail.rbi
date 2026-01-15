# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PostalMail
          sig do
            returns(HubspotSDK::Resources::Crm::Objects::PostalMail::Batch)
          end
          attr_reader :batch

          # Create a postal mail object with the given properties and return a copy of the
          # object, including the ID.
          sig do
            params(
              associations:
                T::Array[HubspotSDK::Crm::PublicAssociationsForObject::OrHash],
              properties: T::Hash[Symbol, String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::CreatedResponseSimplePublicObject)
          end
          def create(
            associations:,
            # Key-value pairs for setting properties for the new object.
            properties:,
            request_options: {}
          )
          end

          sig do
            params(
              postal_mail_id: String,
              properties: T::Hash[Symbol, String],
              id_property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObject)
          end
          def update(
            # Path param
            postal_mail_id,
            # Body param: Key value pairs representing the properties of the object.
            properties:,
            # Query param
            id_property: nil,
            request_options: {}
          )
          end

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
            after: nil,
            archived: nil,
            associations: nil,
            limit: nil,
            properties: nil,
            properties_with_history: nil,
            request_options: {}
          )
          end

          # Move the postal mail object with the ID `{postalMailId}` to the recycling bin.
          sig do
            params(
              postal_mail_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(postal_mail_id, request_options: {})
          end

          sig do
            params(
              postal_mail_id: String,
              archived: T::Boolean,
              associations: T::Array[String],
              id_property: String,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObjectWithAssociations)
          end
          def get(
            postal_mail_id,
            archived: nil,
            associations: nil,
            id_property: nil,
            properties: nil,
            properties_with_history: nil,
            request_options: {}
          )
          end

          # Search for postal mail objects using specific criteria in the request.
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
