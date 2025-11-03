# typed: strong

module HubspotSDK
  module Models
    module Cms
      class HubdbStandardError < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::HubdbStandardError,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Specifies the main category of the error, determining the broad area of issue.
        sig { returns(String) }
        attr_accessor :category

        # An object containing context-specific information pertinent to the error.
        sig { returns(T::Hash[Symbol, T::Array[String]]) }
        attr_accessor :context

        # The detailed error objects.
        sig { returns(T::Array[HubspotSDK::ErrorDetail]) }
        attr_accessor :errors

        # An object containing links related to the error, such as documentation URLs or
        # support contact pages.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :links

        # A detailed message describing the error.
        sig { returns(String) }
        attr_accessor :message

        # The HTTP status code associated with the error.
        sig { returns(String) }
        attr_accessor :status

        # Identifies the subcategory of the error, providing more specific context within
        # the main category.
        sig { returns(T.anything) }
        attr_accessor :sub_category

        # The unique ID of the error instance.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Ye olde error
        sig do
          params(
            category: String,
            context: T::Hash[Symbol, T::Array[String]],
            errors: T::Array[HubspotSDK::ErrorDetail::OrHash],
            links: T::Hash[Symbol, String],
            message: String,
            status: String,
            sub_category: T.anything,
            id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the main category of the error, determining the broad area of issue.
          category:,
          # An object containing context-specific information pertinent to the error.
          context:,
          # The detailed error objects.
          errors:,
          # An object containing links related to the error, such as documentation URLs or
          # support contact pages.
          links:,
          # A detailed message describing the error.
          message:,
          # The HTTP status code associated with the error.
          status:,
          # Identifies the subcategory of the error, providing more specific context within
          # the main category.
          sub_category:,
          # The unique ID of the error instance.
          id: nil
        )
        end

        sig do
          override.returns(
            {
              category: String,
              context: T::Hash[Symbol, T::Array[String]],
              errors: T::Array[HubspotSDK::ErrorDetail],
              links: T::Hash[Symbol, String],
              message: String,
              status: String,
              sub_category: T.anything,
              id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
