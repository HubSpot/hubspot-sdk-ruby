# typed: strong

module HubSpotSDK
  module Resources
    class BusinessUnits
      class BusinessUnitEntries
        # Retrieve the brands that a specific user can access.
        sig do
          params(
            user_id: String,
            name: T::Array[String],
            properties: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(
            HubSpotSDK::BusinessUnits::CollectionResponsePublicBusinessUnitNoPaging
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
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
