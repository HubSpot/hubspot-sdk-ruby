# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class ObjectSchemas
        class Batch
          # Retrieve details of multiple custom object schemas by providing a batch request
          # with specified inputs. This operation allows you to fetch schema information,
          # including properties and associations, for multiple custom objects in a single
          # API call.
          sig do
            params(
              include_association_definitions: T::Boolean,
              include_audit_metadata: T::Boolean,
              include_property_definitions: T::Boolean,
              inputs: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::CollectionResponseObjectSchemaNoPaging)
          end
          def get(
            # Indicates whether to include association definitions in the response.
            include_association_definitions:,
            # Indicates whether to include audit metadata in the response.
            include_audit_metadata:,
            # Indicates whether to include property definitions in the response.
            include_property_definitions:,
            inputs:,
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
