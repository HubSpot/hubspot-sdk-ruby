# typed: strong

module HubSpotSDK
  module Models
    class NextPage < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::NextPage, HubSpotSDK::Internal::AnyHash)
        end

      # A paging cursor token for retrieving subsequent pages.
      sig { returns(String) }
      attr_accessor :after

      # A URL that can be used to retrieve the next page results.
      sig { returns(T.nilable(String)) }
      attr_reader :link

      sig { params(link: String).void }
      attr_writer :link

      # Specifies the paging information needed to retrieve the next set of results in a
      # paginated API response
      sig { params(after: String, link: String).returns(T.attached_class) }
      def self.new(
        # A paging cursor token for retrieving subsequent pages.
        after:,
        # A URL that can be used to retrieve the next page results.
        link: nil
      )
      end

      sig { override.returns({ after: String, link: String }) }
      def to_hash
      end
    end
  end
end
