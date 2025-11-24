# typed: strong

module HubspotSDK
  module Models
    class BatchReadInputPropertyName < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::BatchReadInputPropertyName,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :archived

      sig do
        returns(
          HubspotSDK::BatchReadInputPropertyName::DataSensitivity::OrSymbol
        )
      end
      attr_accessor :data_sensitivity

      sig { returns(T::Array[HubspotSDK::PropertyName]) }
      attr_accessor :inputs

      sig do
        params(
          archived: T::Boolean,
          data_sensitivity:
            HubspotSDK::BatchReadInputPropertyName::DataSensitivity::OrSymbol,
          inputs: T::Array[HubspotSDK::PropertyName::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(archived:, data_sensitivity:, inputs:)
      end

      sig do
        override.returns(
          {
            archived: T::Boolean,
            data_sensitivity:
              HubspotSDK::BatchReadInputPropertyName::DataSensitivity::OrSymbol,
            inputs: T::Array[HubspotSDK::PropertyName]
          }
        )
      end
      def to_hash
      end

      module DataSensitivity
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubspotSDK::BatchReadInputPropertyName::DataSensitivity
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HIGHLY_SENSITIVE =
          T.let(
            :highly_sensitive,
            HubspotSDK::BatchReadInputPropertyName::DataSensitivity::TaggedSymbol
          )
        NON_SENSITIVE =
          T.let(
            :non_sensitive,
            HubspotSDK::BatchReadInputPropertyName::DataSensitivity::TaggedSymbol
          )
        SENSITIVE =
          T.let(
            :sensitive,
            HubspotSDK::BatchReadInputPropertyName::DataSensitivity::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::BatchReadInputPropertyName::DataSensitivity::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
