# typed: strong

module HubspotSDK
  module Resources
    class BusinessUnits
      class BusinessUnits
        sig do
          params(
            user_id: String,
            name: T::Array[String],
            properties: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::BusinessUnits::CollectionResponsePublicBusinessUnitNoPaging
          )
        end
        def get_by_user_id(
          user_id,
          name: nil,
          properties: nil,
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
