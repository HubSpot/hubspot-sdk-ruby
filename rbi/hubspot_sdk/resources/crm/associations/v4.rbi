# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class V4
          sig { returns(HubspotSDK::Resources::Crm::Associations::V4::Batch) }
          attr_reader :batch

          sig { returns(HubspotSDK::Resources::Crm::Associations::V4::Report) }
          attr_reader :report

          # Merge two CRM objects of the specified type into one.
          sig do
            params(
              object_type: String,
              object_id_to_merge: String,
              primary_object_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObject)
          end
          def merge(
            # Specifies the type of CRM object to merge.
            object_type,
            # The unique identifier of the CRM object that will be merged into the primary
            # object.
            object_id_to_merge:,
            # The unique identifier of the CRM object that will remain after the merge.
            primary_object_id:,
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
