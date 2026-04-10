# typed: strong

module HubSpotSDK
  module Models
    class VersionUser < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::VersionUser, HubSpotSDK::Internal::AnyHash)
        end

      # The unique ID of the User.
      sig { returns(String) }
      attr_accessor :id

      # The email address of the user.
      sig { returns(String) }
      attr_accessor :email

      # The first and last name of the User.
      sig { returns(String) }
      attr_accessor :full_name

      sig do
        params(id: String, email: String, full_name: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The unique ID of the User.
        id:,
        # The email address of the user.
        email:,
        # The first and last name of the User.
        full_name:
      )
      end

      sig { override.returns({ id: String, email: String, full_name: String }) }
      def to_hash
      end
    end
  end
end
