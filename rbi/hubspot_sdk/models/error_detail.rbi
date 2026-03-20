# typed: strong

module HubspotSDK
  module Models
    class ErrorDetail < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::ErrorDetail, HubspotSDK::Internal::AnyHash)
        end

      # A human readable message describing the error along with remediation steps where
      # appropriate
      sig { returns(String) }
      attr_accessor :message

      # The status code associated with the error detail
      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      # Context about the error condition
      sig { returns(T.nilable(T::Hash[Symbol, T::Array[String]])) }
      attr_reader :context

      sig { params(context: T::Hash[Symbol, T::Array[String]]).void }
      attr_writer :context

      # The name of the field or parameter in which the error was found.
      sig { returns(T.nilable(String)) }
      attr_reader :in_

      sig { params(in_: String).void }
      attr_writer :in_

      # A specific category that contains more specific detail about the error.
      sig { returns(T.nilable(String)) }
      attr_reader :sub_category

      sig { params(sub_category: String).void }
      attr_writer :sub_category

      sig do
        params(
          message: String,
          code: String,
          context: T::Hash[Symbol, T::Array[String]],
          in_: String,
          sub_category: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A human readable message describing the error along with remediation steps where
        # appropriate
        message:,
        # The status code associated with the error detail
        code: nil,
        # Context about the error condition
        context: nil,
        # The name of the field or parameter in which the error was found.
        in_: nil,
        # A specific category that contains more specific detail about the error.
        sub_category: nil
      )
      end

      sig do
        override.returns(
          {
            message: String,
            code: String,
            context: T::Hash[Symbol, T::Array[String]],
            in_: String,
            sub_category: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
