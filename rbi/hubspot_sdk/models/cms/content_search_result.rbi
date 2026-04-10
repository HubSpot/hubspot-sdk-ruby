# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ContentSearchResult < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::ContentSearchResult,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The ID of the content.
        sig { returns(Integer) }
        attr_accessor :id

        # The domain the document is hosted on.
        sig { returns(String) }
        attr_accessor :domain

        # The matching score of the document.
        sig { returns(Float) }
        attr_accessor :score

        # The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        # `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
        sig do
          returns(HubSpotSDK::Cms::ContentSearchResult::Type::TaggedSymbol)
        end
        attr_accessor :type

        # The url of the document.
        sig { returns(String) }
        attr_accessor :url

        # Name of the author.
        sig { returns(T.nilable(String)) }
        attr_reader :author_full_name

        sig { params(author_full_name: String).void }
        attr_writer :author_full_name

        # The error category
        sig { returns(T.nilable(String)) }
        attr_reader :category

        sig { params(category: String).void }
        attr_writer :category

        # The ID of the document in HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :combined_id

        sig { params(combined_id: String).void }
        attr_writer :combined_id

        sig { returns(T.nilable(String)) }
        attr_reader :content_type

        sig { params(content_type: String).void }
        attr_writer :content_type

        # The result's description. The content will be determined by the value of
        # `length` in the request.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # URL of the featured image.
        sig { returns(T.nilable(String)) }
        attr_reader :featured_image_url

        sig { params(featured_image_url: String).void }
        attr_writer :featured_image_url

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :in_beta

        sig { params(in_beta: T::Boolean).void }
        attr_writer :in_beta

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_private

        sig { params(is_private: T::Boolean).void }
        attr_writer :is_private

        # The document's language.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language: HubSpotSDK::Cms::ContentSearchResult::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # The date the content was published.
        sig { returns(T.nilable(Integer)) }
        attr_reader :published_date

        sig { params(published_date: Integer).void }
        attr_writer :published_date

        # If a dynamic page, the row ID in the HubDB table.
        sig { returns(T.nilable(Integer)) }
        attr_reader :row_id

        sig { params(row_id: Integer).void }
        attr_writer :row_id

        # For knowledge articles, the subcategory of the article.
        sig { returns(T.nilable(String)) }
        attr_reader :subcategory

        sig { params(subcategory: String).void }
        attr_writer :subcategory

        # If a dynamic page, the ID of the HubDB table.
        sig { returns(T.nilable(Integer)) }
        attr_reader :table_id

        sig { params(table_id: Integer).void }
        attr_writer :table_id

        # If a blog post, the tags associated with it.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # The title of the returned document.
        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig do
          params(
            id: Integer,
            domain: String,
            score: Float,
            type: HubSpotSDK::Cms::ContentSearchResult::Type::OrSymbol,
            url: String,
            author_full_name: String,
            category: String,
            combined_id: String,
            content_type: String,
            description: String,
            featured_image_url: String,
            in_beta: T::Boolean,
            is_private: T::Boolean,
            language: HubSpotSDK::Cms::ContentSearchResult::Language::OrSymbol,
            published_date: Integer,
            row_id: Integer,
            subcategory: String,
            table_id: Integer,
            tags: T::Array[String],
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the content.
          id:,
          # The domain the document is hosted on.
          domain:,
          # The matching score of the document.
          score:,
          # The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
          # `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
          type:,
          # The url of the document.
          url:,
          # Name of the author.
          author_full_name: nil,
          # The error category
          category: nil,
          # The ID of the document in HubSpot.
          combined_id: nil,
          content_type: nil,
          # The result's description. The content will be determined by the value of
          # `length` in the request.
          description: nil,
          # URL of the featured image.
          featured_image_url: nil,
          in_beta: nil,
          is_private: nil,
          # The document's language.
          language: nil,
          # The date the content was published.
          published_date: nil,
          # If a dynamic page, the row ID in the HubDB table.
          row_id: nil,
          # For knowledge articles, the subcategory of the article.
          subcategory: nil,
          # If a dynamic page, the ID of the HubDB table.
          table_id: nil,
          # If a blog post, the tags associated with it.
          tags: nil,
          # The title of the returned document.
          title: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              domain: String,
              score: Float,
              type: HubSpotSDK::Cms::ContentSearchResult::Type::TaggedSymbol,
              url: String,
              author_full_name: String,
              category: String,
              combined_id: String,
              content_type: String,
              description: String,
              featured_image_url: String,
              in_beta: T::Boolean,
              is_private: T::Boolean,
              language:
                HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol,
              published_date: Integer,
              row_id: Integer,
              subcategory: String,
              table_id: Integer,
              tags: T::Array[String],
              title: String
            }
          )
        end
        def to_hash
        end

        # The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        # `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::ContentSearchResult::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubSpotSDK::Cms::ContentSearchResult::Type::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubSpotSDK::Cms::ContentSearchResult::Type::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubSpotSDK::Cms::ContentSearchResult::Type::TaggedSymbol
            )
          LISTING_PAGE =
            T.let(
              :LISTING_PAGE,
              HubSpotSDK::Cms::ContentSearchResult::Type::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubSpotSDK::Cms::ContentSearchResult::Type::TaggedSymbol
            )
          STRUCTURED_CONTENT =
            T.let(
              :STRUCTURED_CONTENT,
              HubSpotSDK::Cms::ContentSearchResult::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::ContentSearchResult::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The document's language.
        module Language
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::ContentSearchResult::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AA =
            T.let(
              :aa,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AB =
            T.let(
              :ab,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AE =
            T.let(
              :ae,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AF =
            T.let(
              :af,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AF_NA =
            T.let(
              :"af-na",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AF_ZA =
            T.let(
              :"af-za",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AGQ =
            T.let(
              :agq,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AGQ_CM =
            T.let(
              :"agq-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AK =
            T.let(
              :ak,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AK_GH =
            T.let(
              :"ak-gh",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-et",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AN =
            T.let(
              :an,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ANN =
            T.let(
              :ann,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ANN_NG =
            T.let(
              :"ann-ng",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_001 =
            T.let(
              :"ar-001",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-ae",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-bh",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_DJ =
            T.let(
              :"ar-dj",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-dz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_EH =
            T.let(
              :"ar-eh",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_ER =
            T.let(
              :"ar-er",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-il",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-iq",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-jo",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_KM =
            T.let(
              :"ar-km",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-kw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-lb",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_LY =
            T.let(
              :"ar-ly",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-ma",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-mr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-om",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-ps",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-qa",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-sa",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_SD =
            T.let(
              :"ar-sd",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_SO =
            T.let(
              :"ar-so",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_SS =
            T.let(
              :"ar-ss",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_SY =
            T.let(
              :"ar-sy",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_TD =
            T.let(
              :"ar-td",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-tn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-ye",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AS_IN =
            T.let(
              :"as-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ASA =
            T.let(
              :asa,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ASA_TZ =
            T.let(
              :"asa-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AST =
            T.let(
              :ast,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AST_ES =
            T.let(
              :"ast-es",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AV =
            T.let(
              :av,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AY =
            T.let(
              :ay,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-az",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BAS =
            T.let(
              :bas,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BAS_CM =
            T.let(
              :"bas-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BE_BY =
            T.let(
              :"be-by",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BEM =
            T.let(
              :bem,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BEM_ZM =
            T.let(
              :"bem-zm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BEZ =
            T.let(
              :bez,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BEZ_TZ =
            T.let(
              :"bez-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-bg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BGC =
            T.let(
              :bgc,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BGC_IN =
            T.let(
              :"bgc-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BHO =
            T.let(
              :bho,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BHO_IN =
            T.let(
              :"bho-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BI =
            T.let(
              :bi,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BM =
            T.let(
              :bm,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BM_ML =
            T.let(
              :"bm-ml",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-bd",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BO_CN =
            T.let(
              :"bo-cn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BO_IN =
            T.let(
              :"bo-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BR_FR =
            T.let(
              :"br-fr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BRX =
            T.let(
              :brx,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BRX_IN =
            T.let(
              :"brx-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-ba",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CA_AD =
            T.let(
              :"ca-ad",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CA_FR =
            T.let(
              :"ca-fr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CA_IT =
            T.let(
              :"ca-it",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CCP =
            T.let(
              :ccp,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CCP_BD =
            T.let(
              :"ccp-bd",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CCP_IN =
            T.let(
              :"ccp-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CE =
            T.let(
              :ce,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CE_RU =
            T.let(
              :"ce-ru",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CEB =
            T.let(
              :ceb,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CEB_PH =
            T.let(
              :"ceb-ph",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CGG =
            T.let(
              :cgg,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CGG_UG =
            T.let(
              :"cgg-ug",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CH =
            T.let(
              :ch,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CHR =
            T.let(
              :chr,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CHR_US =
            T.let(
              :"chr-us",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CKB =
            T.let(
              :ckb,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CKB_IQ =
            T.let(
              :"ckb-iq",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CKB_IR =
            T.let(
              :"ckb-ir",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CO =
            T.let(
              :co,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CR =
            T.let(
              :cr,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-cz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CU =
            T.let(
              :cu,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CU_RU =
            T.let(
              :"cu-ru",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CV =
            T.let(
              :cv,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CV_RU =
            T.let(
              :"cv-ru",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-gb",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-dk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DA_GL =
            T.let(
              :"da-gl",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DAV =
            T.let(
              :dav,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DAV_KE =
            T.let(
              :"dav-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-at",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_BE =
            T.let(
              :"de-be",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-ch",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-de",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_GR =
            T.let(
              :"de-gr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_IT =
            T.let(
              :"de-it",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_LI =
            T.let(
              :"de-li",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_LU =
            T.let(
              :"de-lu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DJE =
            T.let(
              :dje,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DJE_NE =
            T.let(
              :"dje-ne",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DOI =
            T.let(
              :doi,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DOI_IN =
            T.let(
              :"doi-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DSB =
            T.let(
              :dsb,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DSB_DE =
            T.let(
              :"dsb-de",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DUA =
            T.let(
              :dua,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DUA_CM =
            T.let(
              :"dua-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DV =
            T.let(
              :dv,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DYO =
            T.let(
              :dyo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DYO_SN =
            T.let(
              :"dyo-sn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DZ =
            T.let(
              :dz,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DZ_BT =
            T.let(
              :"dz-bt",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EBU =
            T.let(
              :ebu,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EBU_KE =
            T.let(
              :"ebu-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EE_GH =
            T.let(
              :"ee-gh",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EE_TG =
            T.let(
              :"ee-tg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EL_CY =
            T.let(
              :"el-cy",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-gr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_001 =
            T.let(
              :"en-001",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_150 =
            T.let(
              :"en-150",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_AE =
            T.let(
              :"en-ae",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_AG =
            T.let(
              :"en-ag",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_AI =
            T.let(
              :"en-ai",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_AS =
            T.let(
              :"en-as",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_AT =
            T.let(
              :"en-at",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-au",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BB =
            T.let(
              :"en-bb",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BE =
            T.let(
              :"en-be",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BI =
            T.let(
              :"en-bi",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BM =
            T.let(
              :"en-bm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BS =
            T.let(
              :"en-bs",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BW =
            T.let(
              :"en-bw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BZ =
            T.let(
              :"en-bz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-ca",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CC =
            T.let(
              :"en-cc",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CH =
            T.let(
              :"en-ch",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CK =
            T.let(
              :"en-ck",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CM =
            T.let(
              :"en-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CN =
            T.let(
              :"en-cn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CX =
            T.let(
              :"en-cx",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CY =
            T.let(
              :"en-cy",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_DE =
            T.let(
              :"en-de",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_DG =
            T.let(
              :"en-dg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_DK =
            T.let(
              :"en-dk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_DM =
            T.let(
              :"en-dm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_EE =
            T.let(
              :"en-ee",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_EG =
            T.let(
              :"en-eg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_ER =
            T.let(
              :"en-er",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_ES =
            T.let(
              :"en-es",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_FI =
            T.let(
              :"en-fi",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_FJ =
            T.let(
              :"en-fj",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_FK =
            T.let(
              :"en-fk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_FM =
            T.let(
              :"en-fm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_FR =
            T.let(
              :"en-fr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-gb",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GD =
            T.let(
              :"en-gd",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GG =
            T.let(
              :"en-gg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-gh",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GI =
            T.let(
              :"en-gi",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GM =
            T.let(
              :"en-gm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GU =
            T.let(
              :"en-gu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GY =
            T.let(
              :"en-gy",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-hk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_ID =
            T.let(
              :"en-id",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-ie",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_IL =
            T.let(
              :"en-il",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_IM =
            T.let(
              :"en-im",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_IO =
            T.let(
              :"en-io",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_JE =
            T.let(
              :"en-je",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_JM =
            T.let(
              :"en-jm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_KI =
            T.let(
              :"en-ki",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_KN =
            T.let(
              :"en-kn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_KY =
            T.let(
              :"en-ky",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_LC =
            T.let(
              :"en-lc",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_LR =
            T.let(
              :"en-lr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_LS =
            T.let(
              :"en-ls",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_LU =
            T.let(
              :"en-lu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MG =
            T.let(
              :"en-mg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MH =
            T.let(
              :"en-mh",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MO =
            T.let(
              :"en-mo",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MP =
            T.let(
              :"en-mp",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MS =
            T.let(
              :"en-ms",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MT =
            T.let(
              :"en-mt",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MU =
            T.let(
              :"en-mu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MV =
            T.let(
              :"en-mv",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MW =
            T.let(
              :"en-mw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MX =
            T.let(
              :"en-mx",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MY =
            T.let(
              :"en-my",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NA =
            T.let(
              :"en-na",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NF =
            T.let(
              :"en-nf",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-ng",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NL =
            T.let(
              :"en-nl",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NR =
            T.let(
              :"en-nr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NU =
            T.let(
              :"en-nu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-nz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PG =
            T.let(
              :"en-pg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-ph",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-pk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PN =
            T.let(
              :"en-pn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PR =
            T.let(
              :"en-pr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PT =
            T.let(
              :"en-pt",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PW =
            T.let(
              :"en-pw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_RW =
            T.let(
              :"en-rw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SB =
            T.let(
              :"en-sb",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SC =
            T.let(
              :"en-sc",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SD =
            T.let(
              :"en-sd",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SE =
            T.let(
              :"en-se",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-sg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SH =
            T.let(
              :"en-sh",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SI =
            T.let(
              :"en-si",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SL =
            T.let(
              :"en-sl",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SS =
            T.let(
              :"en-ss",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SX =
            T.let(
              :"en-sx",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SZ =
            T.let(
              :"en-sz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TC =
            T.let(
              :"en-tc",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TH =
            T.let(
              :"en-th",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TK =
            T.let(
              :"en-tk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TN =
            T.let(
              :"en-tn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TO =
            T.let(
              :"en-to",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TT =
            T.let(
              :"en-tt",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TV =
            T.let(
              :"en-tv",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_UG =
            T.let(
              :"en-ug",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_UM =
            T.let(
              :"en-um",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-us",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_VC =
            T.let(
              :"en-vc",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_VG =
            T.let(
              :"en-vg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_VI =
            T.let(
              :"en-vi",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_VN =
            T.let(
              :"en-vn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_VU =
            T.let(
              :"en-vu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_WS =
            T.let(
              :"en-ws",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-za",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_ZM =
            T.let(
              :"en-zm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_ZW =
            T.let(
              :"en-zw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EO_001 =
            T.let(
              :"eo-001",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-ar",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-bo",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_BR =
            T.let(
              :"es-br",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_BZ =
            T.let(
              :"es-bz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-cl",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-co",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-cr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_CU =
            T.let(
              :"es-cu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-do",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_EA =
            T.let(
              :"es-ea",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-ec",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-es",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_GQ =
            T.let(
              :"es-gq",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-gt",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-hn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_IC =
            T.let(
              :"es-ic",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-ni",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-pa",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-pe",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_PH =
            T.let(
              :"es-ph",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-pr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-py",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-sv",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-us",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-uy",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-ve",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-ee",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-es",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EWO =
            T.let(
              :ewo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EWO_CM =
            T.let(
              :"ewo-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FA_AF =
            T.let(
              :"fa-af",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-ir",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF =
            T.let(
              :ff,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_BF =
            T.let(
              :"ff-bf",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_CM =
            T.let(
              :"ff-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_GH =
            T.let(
              :"ff-gh",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_GM =
            T.let(
              :"ff-gm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_GN =
            T.let(
              :"ff-gn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_GW =
            T.let(
              :"ff-gw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_LR =
            T.let(
              :"ff-lr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_MR =
            T.let(
              :"ff-mr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_NE =
            T.let(
              :"ff-ne",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_NG =
            T.let(
              :"ff-ng",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_SL =
            T.let(
              :"ff-sl",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_SN =
            T.let(
              :"ff-sn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-fi",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-ph",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FJ =
            T.let(
              :fj,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FO_DK =
            T.let(
              :"fo-dk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FO_FO =
            T.let(
              :"fo-fo",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-be",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_BF =
            T.let(
              :"fr-bf",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_BI =
            T.let(
              :"fr-bi",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_BJ =
            T.let(
              :"fr-bj",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_BL =
            T.let(
              :"fr-bl",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CD =
            T.let(
              :"fr-cd",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CF =
            T.let(
              :"fr-cf",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CG =
            T.let(
              :"fr-cg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-ch",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CI =
            T.let(
              :"fr-ci",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CM =
            T.let(
              :"fr-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_DJ =
            T.let(
              :"fr-dj",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_DZ =
            T.let(
              :"fr-dz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-fr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_GA =
            T.let(
              :"fr-ga",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_GF =
            T.let(
              :"fr-gf",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_GN =
            T.let(
              :"fr-gn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_GP =
            T.let(
              :"fr-gp",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_GQ =
            T.let(
              :"fr-gq",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_HT =
            T.let(
              :"fr-ht",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_KM =
            T.let(
              :"fr-km",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_LU =
            T.let(
              :"fr-lu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MA =
            T.let(
              :"fr-ma",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MC =
            T.let(
              :"fr-mc",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MF =
            T.let(
              :"fr-mf",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MG =
            T.let(
              :"fr-mg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_ML =
            T.let(
              :"fr-ml",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MQ =
            T.let(
              :"fr-mq",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MR =
            T.let(
              :"fr-mr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MU =
            T.let(
              :"fr-mu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_NC =
            T.let(
              :"fr-nc",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_NE =
            T.let(
              :"fr-ne",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_PF =
            T.let(
              :"fr-pf",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_PM =
            T.let(
              :"fr-pm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_RE =
            T.let(
              :"fr-re",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_RW =
            T.let(
              :"fr-rw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_SC =
            T.let(
              :"fr-sc",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_SN =
            T.let(
              :"fr-sn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_SY =
            T.let(
              :"fr-sy",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_TD =
            T.let(
              :"fr-td",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_TG =
            T.let(
              :"fr-tg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_TN =
            T.let(
              :"fr-tn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_VU =
            T.let(
              :"fr-vu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_WF =
            T.let(
              :"fr-wf",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_YT =
            T.let(
              :"fr-yt",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FRR =
            T.let(
              :frr,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FRR_DE =
            T.let(
              :"frr-de",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FUR =
            T.let(
              :fur,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FUR_IT =
            T.let(
              :"fur-it",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FY_NL =
            T.let(
              :"fy-nl",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GA_GB =
            T.let(
              :"ga-gb",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GA_IE =
            T.let(
              :"ga-ie",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GD =
            T.let(
              :gd,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GD_GB =
            T.let(
              :"gd-gb",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-es",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GN =
            T.let(
              :gn,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GSW =
            T.let(
              :gsw,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GSW_CH =
            T.let(
              :"gsw-ch",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GSW_FR =
            T.let(
              :"gsw-fr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GSW_LI =
            T.let(
              :"gsw-li",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GUZ =
            T.let(
              :guz,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GUZ_KE =
            T.let(
              :"guz-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GV =
            T.let(
              :gv,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GV_IM =
            T.let(
              :"gv-im",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HA_GH =
            T.let(
              :"ha-gh",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HA_NE =
            T.let(
              :"ha-ne",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HA_NG =
            T.let(
              :"ha-ng",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HAW_US =
            T.let(
              :"haw-us",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HMN =
            T.let(
              :hmn,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HO =
            T.let(
              :ho,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HR_BA =
            T.let(
              :"hr-ba",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-hr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HSB =
            T.let(
              :hsb,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HSB_DE =
            T.let(
              :"hsb-de",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HT =
            T.let(
              :ht,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-hu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-am",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HZ =
            T.let(
              :hz,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IA_001 =
            T.let(
              :"ia-001",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-id",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IE =
            T.let(
              :ie,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IG =
            T.let(
              :ig,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IG_NG =
            T.let(
              :"ig-ng",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          II =
            T.let(
              :ii,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          II_CN =
            T.let(
              :"ii-cn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IK =
            T.let(
              :ik,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IO =
            T.let(
              :io,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-is",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-ch",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-it",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IT_SM =
            T.let(
              :"it-sm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IT_VA =
            T.let(
              :"it-va",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IU =
            T.let(
              :iu,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-jp",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JGO =
            T.let(
              :jgo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JGO_CM =
            T.let(
              :"jgo-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JMC =
            T.let(
              :jmc,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JMC_TZ =
            T.let(
              :"jmc-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JV =
            T.let(
              :jv,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-id",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-ge",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KAB =
            T.let(
              :kab,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KAB_DZ =
            T.let(
              :"kab-dz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KAM =
            T.let(
              :kam,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KAM_KE =
            T.let(
              :"kam-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KAR =
            T.let(
              :kar,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KDE =
            T.let(
              :kde,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KDE_TZ =
            T.let(
              :"kde-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KEA =
            T.let(
              :kea,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KEA_CV =
            T.let(
              :"kea-cv",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KG =
            T.let(
              :kg,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KGP =
            T.let(
              :kgp,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KGP_BR =
            T.let(
              :"kgp-br",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KH =
            T.let(
              :kh,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KHQ =
            T.let(
              :khq,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KHQ_ML =
            T.let(
              :"khq-ml",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KI =
            T.let(
              :ki,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KI_KE =
            T.let(
              :"ki-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KJ =
            T.let(
              :kj,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-kz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KKJ =
            T.let(
              :kkj,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KKJ_CM =
            T.let(
              :"kkj-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KL =
            T.let(
              :kl,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KL_GL =
            T.let(
              :"kl-gl",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KLN =
            T.let(
              :kln,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KLN_KE =
            T.let(
              :"kln-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-kh",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KO_KP =
            T.let(
              :"ko-kp",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-kr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KOK =
            T.let(
              :kok,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KOK_IN =
            T.let(
              :"kok-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KR =
            T.let(
              :kr,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KS =
            T.let(
              :ks,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KS_IN =
            T.let(
              :"ks-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KSB =
            T.let(
              :ksb,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KSB_TZ =
            T.let(
              :"ksb-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KSF =
            T.let(
              :ksf,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KSF_CM =
            T.let(
              :"ksf-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KSH =
            T.let(
              :ksh,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KSH_DE =
            T.let(
              :"ksh-de",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KU =
            T.let(
              :ku,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KU_TR =
            T.let(
              :"ku-tr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KV =
            T.let(
              :kv,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KW =
            T.let(
              :kw,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KW_GB =
            T.let(
              :"kw-gb",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KY =
            T.let(
              :ky,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KY_KG =
            T.let(
              :"ky-kg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LA =
            T.let(
              :la,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LAG =
            T.let(
              :lag,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LAG_TZ =
            T.let(
              :"lag-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LB_LU =
            T.let(
              :"lb-lu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LG =
            T.let(
              :lg,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LG_UG =
            T.let(
              :"lg-ug",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LI =
            T.let(
              :li,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LKT =
            T.let(
              :lkt,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LKT_US =
            T.let(
              :"lkt-us",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LN_AO =
            T.let(
              :"ln-ao",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LN_CD =
            T.let(
              :"ln-cd",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LN_CF =
            T.let(
              :"ln-cf",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LN_CG =
            T.let(
              :"ln-cg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-la",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LRC =
            T.let(
              :lrc,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LRC_IQ =
            T.let(
              :"lrc-iq",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LRC_IR =
            T.let(
              :"lrc-ir",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-lt",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LU =
            T.let(
              :lu,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LU_CD =
            T.let(
              :"lu-cd",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LUO =
            T.let(
              :luo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LUO_KE =
            T.let(
              :"luo-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LUY =
            T.let(
              :luy,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LUY_KE =
            T.let(
              :"luy-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-lv",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MAI =
            T.let(
              :mai,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MAI_IN =
            T.let(
              :"mai-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MAS =
            T.let(
              :mas,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MAS_KE =
            T.let(
              :"mas-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MAS_TZ =
            T.let(
              :"mas-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MDF =
            T.let(
              :mdf,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MDF_RU =
            T.let(
              :"mdf-ru",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MER =
            T.let(
              :mer,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MER_KE =
            T.let(
              :"mer-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MFE =
            T.let(
              :mfe,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MFE_MU =
            T.let(
              :"mfe-mu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MG_MG =
            T.let(
              :"mg-mg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MGH =
            T.let(
              :mgh,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MGH_MZ =
            T.let(
              :"mgh-mz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MGO =
            T.let(
              :mgo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MGO_CM =
            T.let(
              :"mgo-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MH =
            T.let(
              :mh,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MI_NZ =
            T.let(
              :"mi-nz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-mk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-mn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MNI =
            T.let(
              :mni,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MNI_IN =
            T.let(
              :"mni-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MS_BN =
            T.let(
              :"ms-bn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MS_ID =
            T.let(
              :"ms-id",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-my",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MS_SG =
            T.let(
              :"ms-sg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MT_MT =
            T.let(
              :"mt-mt",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MUA =
            T.let(
              :mua,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MUA_CM =
            T.let(
              :"mua-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-mm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MZN_IR =
            T.let(
              :"mzn-ir",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NA =
            T.let(
              :na,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NAQ =
            T.let(
              :naq,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NAQ_NA =
            T.let(
              :"naq-na",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-no",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NB_SJ =
            T.let(
              :"nb-sj",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ND =
            T.let(
              :nd,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ND_ZW =
            T.let(
              :"nd-zw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NDS =
            T.let(
              :nds,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NDS_DE =
            T.let(
              :"nds-de",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NDS_NL =
            T.let(
              :"nds-nl",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NE_IN =
            T.let(
              :"ne-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-np",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NG =
            T.let(
              :ng,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_AW =
            T.let(
              :"nl-aw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-be",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_BQ =
            T.let(
              :"nl-bq",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_CH =
            T.let(
              :"nl-ch",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_CW =
            T.let(
              :"nl-cw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_LU =
            T.let(
              :"nl-lu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-nl",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_SR =
            T.let(
              :"nl-sr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_SX =
            T.let(
              :"nl-sx",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NMG =
            T.let(
              :nmg,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NMG_CM =
            T.let(
              :"nmg-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NN_NO =
            T.let(
              :"nn-no",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NNH =
            T.let(
              :nnh,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NNH_CM =
            T.let(
              :"nnh-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NR =
            T.let(
              :nr,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NUS =
            T.let(
              :nus,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NUS_SS =
            T.let(
              :"nus-ss",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NV =
            T.let(
              :nv,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NY =
            T.let(
              :ny,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NYN =
            T.let(
              :nyn,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NYN_UG =
            T.let(
              :"nyn-ug",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OC =
            T.let(
              :oc,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OC_ES =
            T.let(
              :"oc-es",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OC_FR =
            T.let(
              :"oc-fr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OJ =
            T.let(
              :oj,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OM =
            T.let(
              :om,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OM_ET =
            T.let(
              :"om-et",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OM_KE =
            T.let(
              :"om-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OR =
            T.let(
              :or,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OR_IN =
            T.let(
              :"or-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OS =
            T.let(
              :os,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OS_GE =
            T.let(
              :"os-ge",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OS_RU =
            T.let(
              :"os-ru",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PA_IN =
            T.let(
              :"pa-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PA_PK =
            T.let(
              :"pa-pk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PCM_NG =
            T.let(
              :"pcm-ng",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PI =
            T.let(
              :pi,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PIS =
            T.let(
              :pis,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PIS_SB =
            T.let(
              :"pis-sb",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-pl",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PRG =
            T.let(
              :prg,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PRG_001 =
            T.let(
              :"prg-001",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PS_AF =
            T.let(
              :"ps-af",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PS_PK =
            T.let(
              :"ps-pk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_AO =
            T.let(
              :"pt-ao",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_CH =
            T.let(
              :"pt-ch",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_CV =
            T.let(
              :"pt-cv",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_GQ =
            T.let(
              :"pt-gq",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_GW =
            T.let(
              :"pt-gw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_LU =
            T.let(
              :"pt-lu",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_MO =
            T.let(
              :"pt-mo",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_MZ =
            T.let(
              :"pt-mz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-pt",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_ST =
            T.let(
              :"pt-st",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_TL =
            T.let(
              :"pt-tl",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          QU =
            T.let(
              :qu,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          QU_BO =
            T.let(
              :"qu-bo",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          QU_EC =
            T.let(
              :"qu-ec",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          QU_PE =
            T.let(
              :"qu-pe",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RAJ =
            T.let(
              :raj,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RAJ_IN =
            T.let(
              :"raj-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RM =
            T.let(
              :rm,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RM_CH =
            T.let(
              :"rm-ch",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RN =
            T.let(
              :rn,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RN_BI =
            T.let(
              :"rn-bi",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RO_MD =
            T.let(
              :"ro-md",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-ro",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ROF =
            T.let(
              :rof,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ROF_TZ =
            T.let(
              :"rof-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU_BY =
            T.let(
              :"ru-by",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU_KG =
            T.let(
              :"ru-kg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU_KZ =
            T.let(
              :"ru-kz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU_MD =
            T.let(
              :"ru-md",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-ru",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU_UA =
            T.let(
              :"ru-ua",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RW =
            T.let(
              :rw,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-rw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RWK =
            T.let(
              :rwk,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RWK_TZ =
            T.let(
              :"rwk-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SA_IN =
            T.let(
              :"sa-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SAH =
            T.let(
              :sah,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SAH_RU =
            T.let(
              :"sah-ru",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SAQ =
            T.let(
              :saq,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SAQ_KE =
            T.let(
              :"saq-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SAT =
            T.let(
              :sat,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SAT_IN =
            T.let(
              :"sat-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SBP =
            T.let(
              :sbp,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SBP_TZ =
            T.let(
              :"sbp-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SC =
            T.let(
              :sc,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SC_IT =
            T.let(
              :"sc-it",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SD_IN =
            T.let(
              :"sd-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SD_PK =
            T.let(
              :"sd-pk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SE_FI =
            T.let(
              :"se-fi",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SE_NO =
            T.let(
              :"se-no",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SE_SE =
            T.let(
              :"se-se",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SEH =
            T.let(
              :seh,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SEH_MZ =
            T.let(
              :"seh-mz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SES_ML =
            T.let(
              :"ses-ml",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SG_CF =
            T.let(
              :"sg-cf",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SHI =
            T.let(
              :shi,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SHI_MA =
            T.let(
              :"shi-ma",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-lk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-sk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-si",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SM =
            T.let(
              :sm,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SMN =
            T.let(
              :smn,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SMN_FI =
            T.let(
              :"smn-fi",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SMS =
            T.let(
              :sms,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SMS_FI =
            T.let(
              :"sms-fi",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SN_ZW =
            T.let(
              :"sn-zw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SO_DJ =
            T.let(
              :"so-dj",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SO_ET =
            T.let(
              :"so-et",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SO_KE =
            T.let(
              :"so-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SO_SO =
            T.let(
              :"so-so",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-al",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SQ_MK =
            T.let(
              :"sq-mk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SQ_XK =
            T.let(
              :"sq-xk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SR_BA =
            T.let(
              :"sr-ba",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SR_CS =
            T.let(
              :"sr-cs",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SR_ME =
            T.let(
              :"sr-me",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-rs",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SR_XK =
            T.let(
              :"sr-xk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SS =
            T.let(
              :ss,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ST =
            T.let(
              :st,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-id",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SV_AX =
            T.let(
              :"sv-ax",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SV_FI =
            T.let(
              :"sv-fi",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-se",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SW_CD =
            T.let(
              :"sw-cd",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SW_UG =
            T.let(
              :"sw-ug",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SY =
            T.let(
              :sy,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-lk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-my",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-sg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TEO =
            T.let(
              :teo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TEO_KE =
            T.let(
              :"teo-ke",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TEO_UG =
            T.let(
              :"teo-ug",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TG_TJ =
            T.let(
              :"tg-tj",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-th",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TI =
            T.let(
              :ti,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TI_ER =
            T.let(
              :"ti-er",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TI_ET =
            T.let(
              :"ti-et",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TK_TM =
            T.let(
              :"tk-tm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TN =
            T.let(
              :tn,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TO_TO =
            T.let(
              :"to-to",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TOK =
            T.let(
              :tok,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TOK_001 =
            T.let(
              :"tok-001",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TR_CY =
            T.let(
              :"tr-cy",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-tr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TS =
            T.let(
              :ts,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TT_RU =
            T.let(
              :"tt-ru",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TW =
            T.let(
              :tw,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TWQ =
            T.let(
              :twq,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TWQ_NE =
            T.let(
              :"twq-ne",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TY =
            T.let(
              :ty,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TZM =
            T.let(
              :tzm,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TZM_MA =
            T.let(
              :"tzm-ma",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UG_CN =
            T.let(
              :"ug-cn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-ua",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-in",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-pk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UZ_AF =
            T.let(
              :"uz-af",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-uz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VAI =
            T.let(
              :vai,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VAI_LR =
            T.let(
              :"vai-lr",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VE =
            T.let(
              :ve,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-vn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VO =
            T.let(
              :vo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VO_001 =
            T.let(
              :"vo-001",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VUN =
            T.let(
              :vun,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VUN_TZ =
            T.let(
              :"vun-tz",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          WA =
            T.let(
              :wa,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          WAE =
            T.let(
              :wae,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          WAE_CH =
            T.let(
              :"wae-ch",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          WO =
            T.let(
              :wo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          WO_SN =
            T.let(
              :"wo-sn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          XH =
            T.let(
              :xh,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-za",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          XOG =
            T.let(
              :xog,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          XOG_UG =
            T.let(
              :"xog-ug",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YAV =
            T.let(
              :yav,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YAV_CM =
            T.let(
              :"yav-cm",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YI_001 =
            T.let(
              :"yi-001",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YO_BJ =
            T.let(
              :"yo-bj",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YO_NG =
            T.let(
              :"yo-ng",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YRL =
            T.let(
              :yrl,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YRL_BR =
            T.let(
              :"yrl-br",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YRL_CO =
            T.let(
              :"yrl-co",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YRL_VE =
            T.let(
              :"yrl-ve",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YUE_CN =
            T.let(
              :"yue-cn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YUE_HK =
            T.let(
              :"yue-hk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZA =
            T.let(
              :za,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZGH =
            T.let(
              :zgh,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZGH_MA =
            T.let(
              :"zgh-ma",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_MO =
            T.let(
              :"zh-mo",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_SG =
            T.let(
              :"zh-sg",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-za",
              HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
