# typed: strong

module HubspotSDK
  module Resources
    class BusinessUnits
      # Get Business Units identified by `userId`. The `userId` refers to the user’s ID.
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
        # Identifier of user to retrieve.
        user_id,
        # The names of Business Units to retrieve. If empty or not provided, then all
        # associated Business Units will be returned.
        name: nil,
        # The names of properties to optionally include in the response body. The only
        # valid value is `logoMetadata`.
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
