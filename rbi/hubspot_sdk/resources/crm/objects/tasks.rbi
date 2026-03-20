# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Tasks
          sig { returns(HubspotSDK::Resources::Crm::Objects::Tasks::Batch) }
          attr_reader :batch

          # Move an Object identified by `{taskId}` to the recycling bin.
          sig do
            params(
              object_id_: String,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Unique Task Id
            object_id_,
            # Object type.
            object_type:,
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
