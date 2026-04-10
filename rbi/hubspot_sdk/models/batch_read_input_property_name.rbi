# typed: strong

module HubSpotSDK
  module Models
    class BatchReadInputPropertyName < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::BatchReadInputPropertyName,
            HubSpotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :archived

      sig do
        returns(
          HubSpotSDK::BatchReadInputPropertyName::DataSensitivity::OrSymbol
        )
      end
      attr_accessor :data_sensitivity

      sig { returns(T::Array[HubSpotSDK::PropertyName]) }
      attr_accessor :inputs

      sig do
        params(
          archived: T::Boolean,
          data_sensitivity:
            HubSpotSDK::BatchReadInputPropertyName::DataSensitivity::OrSymbol,
          inputs: T::Array[HubSpotSDK::PropertyName::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(archived:, data_sensitivity:, inputs:)
      end

      sig do
        override.returns(
          {
            archived: T::Boolean,
            data_sensitivity:
              HubSpotSDK::BatchReadInputPropertyName::DataSensitivity::OrSymbol,
            inputs: T::Array[HubSpotSDK::PropertyName]
          }
        )
      end
      def to_hash
      end

      module DataSensitivity
        extend HubSpotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubSpotSDK::BatchReadInputPropertyName::DataSensitivity
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HIGHLY_SENSITIVE =
          T.let(
            :highly_sensitive,
            HubSpotSDK::BatchReadInputPropertyName::DataSensitivity::TaggedSymbol
          )
        NON_SENSITIVE =
          T.let(
            :non_sensitive,
            HubSpotSDK::BatchReadInputPropertyName::DataSensitivity::TaggedSymbol
          )
        SENSITIVE =
          T.let(
            :sensitive,
            HubSpotSDK::BatchReadInputPropertyName::DataSensitivity::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubSpotSDK::BatchReadInputPropertyName::DataSensitivity::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
