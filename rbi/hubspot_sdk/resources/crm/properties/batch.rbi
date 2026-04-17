# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Properties
        class Batch
          # Create a batch of properties using the same rules as when creating an individual
          # property.
          sig do
            params(
              object_type: String,
              inputs: T::Array[HubSpotSDK::PropertyCreate::OrHash],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::BatchResponseProperty)
          end
          def create(object_type, inputs:, request_options: {})
          end

          # Archive a provided list of properties. This method will return a 204 No Content
          # response on success regardless of the initial state of the property (e.g.
          # active, already archived, non-existent).
          sig do
            params(
              object_type: String,
              inputs: T::Array[HubSpotSDK::PropertyName::OrHash],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(object_type, inputs:, request_options: {})
          end

          # Read a provided list of properties.
          sig do
            params(
              object_type: String,
              archived: T::Boolean,
              data_sensitivity:
                HubSpotSDK::BatchReadInputPropertyName::DataSensitivity::OrSymbol,
              inputs: T::Array[HubSpotSDK::PropertyName::OrHash],
              locale: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::BatchResponseProperty)
          end
          def get(
            # Path param
            object_type,
            # Body param
            archived:,
            # Body param
            data_sensitivity:,
            # Body param
            inputs:,
            # Query param
            locale: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
