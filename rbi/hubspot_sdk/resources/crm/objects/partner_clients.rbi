# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PartnerClients
          sig do
            returns(
              HubspotSDK::Resources::Crm::Objects::PartnerClients::Associations
            )
          end
          attr_reader :associations

          sig do
            returns(HubspotSDK::Resources::Crm::Objects::PartnerClients::Batch)
          end
          attr_reader :batch

          sig do
            params(
              partner_client_id: String,
              properties: T::Hash[Symbol, String],
              id_property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObject)
          end
          def update(
            # Path param:
            partner_client_id,
            # Body param: Key value pairs representing the properties of the object.
            properties:,
            # Query param:
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

          sig do
            params(
              partner_client_id: String,
              archived: T::Boolean,
              associations: T::Array[String],
              id_property: String,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObjectWithAssociations)
          end
          def get(
            partner_client_id,
            archived: nil,
            associations: nil,
            id_property: nil,
            properties: nil,
            properties_with_history: nil,
            request_options: {}
          )
          end

          sig do
            params(
              after: String,
              filter_groups: T::Array[HubspotSDK::Crm::FilterGroup::OrHash],
              limit: Integer,
              properties: T::Array[String],
              query: String,
              sorts: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Crm::CollectionResponseWithTotalSimplePublicObject
            )
          end
          def search(
            # A paging cursor token for retrieving subsequent pages.
            after: nil,
            # Up to 6 groups of filters defining additional query criteria.
            filter_groups: nil,
            # The maximum results to return, up to 200 objects.
            limit: nil,
            # A list of property names to include in the response.
            properties: nil,
            # The search query string, up to 3000 characters.
            query: nil,
            # Specifies sorting order based on object properties.
            sorts: nil,
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
