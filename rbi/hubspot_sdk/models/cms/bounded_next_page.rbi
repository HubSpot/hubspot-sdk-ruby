# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BoundedNextPage < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::BoundedNextPage,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The offset value indicating the starting point for the next set of results.
        sig { returns(Integer) }
        attr_accessor :offset

        # A URL that can be used to retrieve the next set of results.
        sig { returns(T.nilable(String)) }
        attr_reader :link

        sig { params(link: String).void }
        attr_writer :link

        sig { params(offset: Integer, link: String).returns(T.attached_class) }
        def self.new(
          # The offset value indicating the starting point for the next set of results.
          offset:,
          # A URL that can be used to retrieve the next set of results.
          link: nil
        )
        end

        sig { override.returns({ offset: Integer, link: String }) }
        def to_hash
        end
      end
    end
  end
end
