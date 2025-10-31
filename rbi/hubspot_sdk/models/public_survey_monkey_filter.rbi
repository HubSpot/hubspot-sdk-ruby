# typed: strong

module HubspotSDK
  module Models
    class PublicSurveyMonkeyFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicSurveyMonkeyFilter,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig do
        returns(HubspotSDK::PublicSurveyMonkeyFilter::FilterType::OrSymbol)
      end
      attr_accessor :filter_type

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(String) }
      attr_accessor :survey_id

      sig do
        params(
          filter_type:
            HubspotSDK::PublicSurveyMonkeyFilter::FilterType::OrSymbol,
          operator: String,
          survey_id: String
        ).returns(T.attached_class)
      end
      def self.new(filter_type:, operator:, survey_id:)
      end

      sig do
        override.returns(
          {
            filter_type:
              HubspotSDK::PublicSurveyMonkeyFilter::FilterType::OrSymbol,
            operator: String,
            survey_id: String
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicSurveyMonkeyFilter::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SURVEY_MONKEY =
          T.let(
            :SURVEY_MONKEY,
            HubspotSDK::PublicSurveyMonkeyFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicSurveyMonkeyFilter::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
