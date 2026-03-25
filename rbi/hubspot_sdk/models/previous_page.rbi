# typed: strong

module HubspotSDK
  module Models
    class PreviousPage < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PreviousPage, HubspotSDK::Internal::AnyHash)
        end

      # A string token used to identify the position before the current page in the
      # pagination sequence.
      sig { returns(String) }
      attr_accessor :before

      # A URL string that provides a direct link to the previous page of results.
      sig { returns(T.nilable(String)) }
      attr_reader :link

      sig { params(link: String).void }
      attr_writer :link

      # specifies the paging information needed to retrieve the previous set of results
      # in a paginated API response
      sig { params(before: String, link: String).returns(T.attached_class) }
      def self.new(
        # A string token used to identify the position before the current page in the
        # pagination sequence.
        before:,
        # A URL string that provides a direct link to the previous page of results.
        link: nil
      )
      end

      sig { override.returns({ before: String, link: String }) }
      def to_hash
      end
    end
  end
end
