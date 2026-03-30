# typed: strong

module HubspotSDK
  module Models
    class StandardError < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::StandardError, HubspotSDK::Internal::AnyHash)
        end

      # Error category.
      sig { returns(String) }
      attr_accessor :category

      # Error context.
      sig { returns(T::Hash[Symbol, T::Array[String]]) }
      attr_accessor :context

      # List of error details.
      sig { returns(T::Array[HubspotSDK::ErrorDetail]) }
      attr_accessor :errors

      # Error links.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :links

      # Error message.
      sig { returns(String) }
      attr_accessor :message

      # Error status.
      sig { returns(String) }
      attr_accessor :status

      # Error ID.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Error subcategory.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :sub_category

      sig { params(sub_category: T.anything).void }
      attr_writer :sub_category

      # Ye olde error
      sig do
        params(
          category: String,
          context: T::Hash[Symbol, T::Array[String]],
          errors: T::Array[HubspotSDK::ErrorDetail::OrHash],
          links: T::Hash[Symbol, String],
          message: String,
          status: String,
          id: String,
          sub_category: T.anything
        ).returns(T.attached_class)
      end
      def self.new(
        # Error category.
        category:,
        # Error context.
        context:,
        # List of error details.
        errors:,
        # Error links.
        links:,
        # Error message.
        message:,
        # Error status.
        status:,
        # Error ID.
        id: nil,
        # Error subcategory.
        sub_category: nil
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
            id: String,
            sub_category: T.anything
          }
        )
      end
      def to_hash
      end
    end
  end
end
