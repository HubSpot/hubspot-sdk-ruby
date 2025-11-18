# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class Schema
          sig { returns(HubspotSDK::Resources::Crm::Associations::Schema::V4) }
          attr_reader :v4

          sig do
            params(
              to_object_type: String,
              from_object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Crm::Associations::CollectionResponsePublicAssociationDefinitionNoPaging
            )
          end
          def list(to_object_type, from_object_type:, request_options: {})
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
