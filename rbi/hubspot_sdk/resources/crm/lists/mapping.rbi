# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Lists
        class Mapping
          # This API allows translation of a batch of legacy list id's to list id's. This
          # allows for a maximum of 10,000 id's. This is a temporary API allowed for mapping
          # old id's to new id's and will expire on May 30th, 2025.
          sig do
            params(
              body: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::PublicBatchMigrationMapping)
          end
          def batch_create_id_mapping(body:, request_options: {})
          end

          # This API allows translation of legacy list id to list id. This is a temporary
          # API allowed for mapping old id's to new id's and will expire on May 30th, 2025.
          sig do
            params(
              legacy_list_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::PublicMigrationMapping)
          end
          def get_id_mapping(
            # The legacy list id from lists v1 API.
            legacy_list_id: nil,
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
