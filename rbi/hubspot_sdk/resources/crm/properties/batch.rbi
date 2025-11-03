# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Properties
        class Batch
          # Create a batch of properties using the same rules as when creating an individual
          # property.
          sig do
            params(
              object_type: String,
              inputs: T::Array[HubspotSDK::PropertyCreate::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::BatchResponseProperty)
          end
          def create(object_type, inputs:, request_options: {})
          end

          # Archive a provided list of properties. This method will return a 204 No Content
          # response on success regardless of the initial state of the property (e.g.
          # active, already archived, non-existent).
          sig do
            params(
              object_type: String,
              inputs: T::Array[HubspotSDK::PropertyName::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(object_type, inputs:, request_options: {})
          end

          # Read a provided list of properties.
          sig do
            params(
              object_type: String,
              archived: T::Boolean,
              inputs: T::Array[HubspotSDK::PropertyName::OrHash],
              data_sensitivity:
                HubspotSDK::Crm::BatchReadInputPropertyName::DataSensitivity::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::BatchResponseProperty)
          end
          def get(
            object_type,
            archived:,
            inputs:,
            data_sensitivity: nil,
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
