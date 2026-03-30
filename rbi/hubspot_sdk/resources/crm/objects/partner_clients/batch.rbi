# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PartnerClients
          class Batch
            # This endpoint allows you to update several partner client records at once by
            # providing a batch of CRM object records with their respective IDs and
            # properties. It is useful for synchronizing data across systems or making bulk
            # updates efficiently.
            sig do
              params(
                inputs:
                  T::Array[
                    HubspotSDK::Crm::SimplePublicObjectBatchInput::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::BatchResponseSimplePublicObject)
            end
            def update(inputs:, request_options: {})
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
end
