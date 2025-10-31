# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ContentSearchResult < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::ContentSearchResult,
              HubspotSDK::Internal::AnyHash
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
          returns(HubspotSDK::Cms::ContentSearchResult::Type::TaggedSymbol)
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

        # For knowledge articles, the category of the article.
        sig { returns(T.nilable(String)) }
        attr_reader :category

        sig { params(category: String).void }
        attr_writer :category

        # The ID of the document in HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :combined_id

        sig { params(combined_id: String).void }
        attr_writer :combined_id

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

        # The document's language.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language: HubspotSDK::Cms::ContentSearchResult::Language::OrSymbol
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

        # An individual search result.
        sig do
          params(
            id: Integer,
            domain: String,
            score: Float,
            type: HubspotSDK::Cms::ContentSearchResult::Type::OrSymbol,
            url: String,
            author_full_name: String,
            category: String,
            combined_id: String,
            description: String,
            featured_image_url: String,
            language: HubspotSDK::Cms::ContentSearchResult::Language::OrSymbol,
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
          # For knowledge articles, the category of the article.
          category: nil,
          # The ID of the document in HubSpot.
          combined_id: nil,
          # The result's description. The content will be determined by the value of
          # `length` in the request.
          description: nil,
          # URL of the featured image.
          featured_image_url: nil,
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
              type: HubspotSDK::Cms::ContentSearchResult::Type::TaggedSymbol,
              url: String,
              author_full_name: String,
              category: String,
              combined_id: String,
              description: String,
              featured_image_url: String,
              language:
                HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol,
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
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::ContentSearchResult::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubspotSDK::Cms::ContentSearchResult::Type::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubspotSDK::Cms::ContentSearchResult::Type::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubspotSDK::Cms::ContentSearchResult::Type::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubspotSDK::Cms::ContentSearchResult::Type::TaggedSymbol
            )
          LISTING_PAGE =
            T.let(
              :LISTING_PAGE,
              HubspotSDK::Cms::ContentSearchResult::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::ContentSearchResult::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The document's language.
        module Language
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::ContentSearchResult::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AF =
            T.let(
              :af,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AF_NA =
            T.let(
              :"af-na",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AF_ZA =
            T.let(
              :"af-za",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AGQ =
            T.let(
              :agq,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AGQ_CM =
            T.let(
              :"agq-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AK =
            T.let(
              :ak,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AK_GH =
            T.let(
              :"ak-gh",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-et",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_001 =
            T.let(
              :"ar-001",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-ae",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-bh",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_DJ =
            T.let(
              :"ar-dj",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-dz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-eg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_EH =
            T.let(
              :"ar-eh",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_ER =
            T.let(
              :"ar-er",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-il",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-iq",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-jo",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_KM =
            T.let(
              :"ar-km",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-kw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-lb",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_LY =
            T.let(
              :"ar-ly",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-ma",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-mr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-om",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-ps",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-qa",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-sa",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_SD =
            T.let(
              :"ar-sd",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_SO =
            T.let(
              :"ar-so",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_SS =
            T.let(
              :"ar-ss",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_SY =
            T.let(
              :"ar-sy",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_TD =
            T.let(
              :"ar-td",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-tn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-ye",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AS_IN =
            T.let(
              :"as-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ASA =
            T.let(
              :asa,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ASA_TZ =
            T.let(
              :"asa-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AST =
            T.let(
              :ast,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AST_ES =
            T.let(
              :"ast-es",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-az",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BAS =
            T.let(
              :bas,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BAS_CM =
            T.let(
              :"bas-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BE_BY =
            T.let(
              :"be-by",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BEM =
            T.let(
              :bem,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BEM_ZM =
            T.let(
              :"bem-zm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BEZ =
            T.let(
              :bez,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BEZ_TZ =
            T.let(
              :"bez-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-bg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BM =
            T.let(
              :bm,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BM_ML =
            T.let(
              :"bm-ml",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-bd",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BO_CN =
            T.let(
              :"bo-cn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BO_IN =
            T.let(
              :"bo-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BR_FR =
            T.let(
              :"br-fr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BRX =
            T.let(
              :brx,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BRX_IN =
            T.let(
              :"brx-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-ba",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CA_AD =
            T.let(
              :"ca-ad",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-es",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CA_FR =
            T.let(
              :"ca-fr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CA_IT =
            T.let(
              :"ca-it",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CCP =
            T.let(
              :ccp,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CCP_BD =
            T.let(
              :"ccp-bd",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CCP_IN =
            T.let(
              :"ccp-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CE =
            T.let(
              :ce,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CE_RU =
            T.let(
              :"ce-ru",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CEB =
            T.let(
              :ceb,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CEB_PH =
            T.let(
              :"ceb-ph",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CGG =
            T.let(
              :cgg,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CGG_UG =
            T.let(
              :"cgg-ug",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CHR =
            T.let(
              :chr,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CHR_US =
            T.let(
              :"chr-us",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CKB =
            T.let(
              :ckb,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CKB_IQ =
            T.let(
              :"ckb-iq",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CKB_IR =
            T.let(
              :"ckb-ir",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-cz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CU =
            T.let(
              :cu,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CU_RU =
            T.let(
              :"cu-ru",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-gb",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-dk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DA_GL =
            T.let(
              :"da-gl",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DAV =
            T.let(
              :dav,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DAV_KE =
            T.let(
              :"dav-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-at",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_BE =
            T.let(
              :"de-be",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-ch",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-de",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_GR =
            T.let(
              :"de-gr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_IT =
            T.let(
              :"de-it",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_LI =
            T.let(
              :"de-li",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DE_LU =
            T.let(
              :"de-lu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DJE =
            T.let(
              :dje,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DJE_NE =
            T.let(
              :"dje-ne",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DOI =
            T.let(
              :doi,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DOI_IN =
            T.let(
              :"doi-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DSB =
            T.let(
              :dsb,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DSB_DE =
            T.let(
              :"dsb-de",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DUA =
            T.let(
              :dua,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DUA_CM =
            T.let(
              :"dua-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DYO =
            T.let(
              :dyo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DYO_SN =
            T.let(
              :"dyo-sn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DZ =
            T.let(
              :dz,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          DZ_BT =
            T.let(
              :"dz-bt",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EBU =
            T.let(
              :ebu,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EBU_KE =
            T.let(
              :"ebu-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EE =
            T.let(
              :ee,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EE_GH =
            T.let(
              :"ee-gh",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EE_TG =
            T.let(
              :"ee-tg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EL_CY =
            T.let(
              :"el-cy",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-gr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_001 =
            T.let(
              :"en-001",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_150 =
            T.let(
              :"en-150",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_AE =
            T.let(
              :"en-ae",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_AG =
            T.let(
              :"en-ag",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_AI =
            T.let(
              :"en-ai",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_AS =
            T.let(
              :"en-as",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_AT =
            T.let(
              :"en-at",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-au",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BB =
            T.let(
              :"en-bb",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BE =
            T.let(
              :"en-be",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BI =
            T.let(
              :"en-bi",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BM =
            T.let(
              :"en-bm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BS =
            T.let(
              :"en-bs",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BW =
            T.let(
              :"en-bw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_BZ =
            T.let(
              :"en-bz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-ca",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CC =
            T.let(
              :"en-cc",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CH =
            T.let(
              :"en-ch",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CK =
            T.let(
              :"en-ck",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CM =
            T.let(
              :"en-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CN =
            T.let(
              :"en-cn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CX =
            T.let(
              :"en-cx",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_CY =
            T.let(
              :"en-cy",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_DE =
            T.let(
              :"en-de",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_DG =
            T.let(
              :"en-dg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_DK =
            T.let(
              :"en-dk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_DM =
            T.let(
              :"en-dm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_ER =
            T.let(
              :"en-er",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_FI =
            T.let(
              :"en-fi",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_FJ =
            T.let(
              :"en-fj",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_FK =
            T.let(
              :"en-fk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_FM =
            T.let(
              :"en-fm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-gb",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GD =
            T.let(
              :"en-gd",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GG =
            T.let(
              :"en-gg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-gh",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GI =
            T.let(
              :"en-gi",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GM =
            T.let(
              :"en-gm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GU =
            T.let(
              :"en-gu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_GY =
            T.let(
              :"en-gy",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-hk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-ie",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_IL =
            T.let(
              :"en-il",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_IM =
            T.let(
              :"en-im",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_IO =
            T.let(
              :"en-io",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_JE =
            T.let(
              :"en-je",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_JM =
            T.let(
              :"en-jm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_KI =
            T.let(
              :"en-ki",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_KN =
            T.let(
              :"en-kn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_KY =
            T.let(
              :"en-ky",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_LC =
            T.let(
              :"en-lc",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_LR =
            T.let(
              :"en-lr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_LS =
            T.let(
              :"en-ls",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_LU =
            T.let(
              :"en-lu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MG =
            T.let(
              :"en-mg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MH =
            T.let(
              :"en-mh",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MO =
            T.let(
              :"en-mo",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MP =
            T.let(
              :"en-mp",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MS =
            T.let(
              :"en-ms",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MT =
            T.let(
              :"en-mt",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MU =
            T.let(
              :"en-mu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MW =
            T.let(
              :"en-mw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MX =
            T.let(
              :"en-mx",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_MY =
            T.let(
              :"en-my",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NA =
            T.let(
              :"en-na",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NF =
            T.let(
              :"en-nf",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-ng",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NL =
            T.let(
              :"en-nl",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NR =
            T.let(
              :"en-nr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NU =
            T.let(
              :"en-nu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-nz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PG =
            T.let(
              :"en-pg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-ph",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-pk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PN =
            T.let(
              :"en-pn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PR =
            T.let(
              :"en-pr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_PW =
            T.let(
              :"en-pw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_RW =
            T.let(
              :"en-rw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SB =
            T.let(
              :"en-sb",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SC =
            T.let(
              :"en-sc",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SD =
            T.let(
              :"en-sd",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SE =
            T.let(
              :"en-se",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-sg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SH =
            T.let(
              :"en-sh",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SI =
            T.let(
              :"en-si",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SL =
            T.let(
              :"en-sl",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SS =
            T.let(
              :"en-ss",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SX =
            T.let(
              :"en-sx",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_SZ =
            T.let(
              :"en-sz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TC =
            T.let(
              :"en-tc",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TK =
            T.let(
              :"en-tk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TO =
            T.let(
              :"en-to",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TT =
            T.let(
              :"en-tt",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TV =
            T.let(
              :"en-tv",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_UG =
            T.let(
              :"en-ug",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_UM =
            T.let(
              :"en-um",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-us",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_VC =
            T.let(
              :"en-vc",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_VG =
            T.let(
              :"en-vg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_VI =
            T.let(
              :"en-vi",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_VU =
            T.let(
              :"en-vu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_WS =
            T.let(
              :"en-ws",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-za",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_ZM =
            T.let(
              :"en-zm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EN_ZW =
            T.let(
              :"en-zw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EO =
            T.let(
              :eo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EO_001 =
            T.let(
              :"eo-001",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_419 =
            T.let(
              :"es-419",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-ar",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-bo",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_BR =
            T.let(
              :"es-br",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_BZ =
            T.let(
              :"es-bz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-cl",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-co",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-cr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_CU =
            T.let(
              :"es-cu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-do",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_EA =
            T.let(
              :"es-ea",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-ec",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-es",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_GQ =
            T.let(
              :"es-gq",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-gt",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-hn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_IC =
            T.let(
              :"es-ic",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-mx",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-ni",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-pa",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-pe",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_PH =
            T.let(
              :"es-ph",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-pr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-py",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-sv",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-us",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-uy",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-ve",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-ee",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-es",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EWO =
            T.let(
              :ewo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          EWO_CM =
            T.let(
              :"ewo-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FA_AF =
            T.let(
              :"fa-af",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-ir",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF =
            T.let(
              :ff,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_BF =
            T.let(
              :"ff-bf",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_CM =
            T.let(
              :"ff-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_GH =
            T.let(
              :"ff-gh",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_GM =
            T.let(
              :"ff-gm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_GN =
            T.let(
              :"ff-gn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_GW =
            T.let(
              :"ff-gw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_LR =
            T.let(
              :"ff-lr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_MR =
            T.let(
              :"ff-mr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_NE =
            T.let(
              :"ff-ne",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_NG =
            T.let(
              :"ff-ng",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_SL =
            T.let(
              :"ff-sl",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FF_SN =
            T.let(
              :"ff-sn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-fi",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FIL =
            T.let(
              :fil,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-ph",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FO_DK =
            T.let(
              :"fo-dk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FO_FO =
            T.let(
              :"fo-fo",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-be",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_BF =
            T.let(
              :"fr-bf",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_BI =
            T.let(
              :"fr-bi",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_BJ =
            T.let(
              :"fr-bj",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_BL =
            T.let(
              :"fr-bl",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-ca",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CD =
            T.let(
              :"fr-cd",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CF =
            T.let(
              :"fr-cf",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CG =
            T.let(
              :"fr-cg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-ch",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CI =
            T.let(
              :"fr-ci",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_CM =
            T.let(
              :"fr-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_DJ =
            T.let(
              :"fr-dj",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_DZ =
            T.let(
              :"fr-dz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-fr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_GA =
            T.let(
              :"fr-ga",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_GF =
            T.let(
              :"fr-gf",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_GN =
            T.let(
              :"fr-gn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_GP =
            T.let(
              :"fr-gp",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_GQ =
            T.let(
              :"fr-gq",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_HT =
            T.let(
              :"fr-ht",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_KM =
            T.let(
              :"fr-km",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_LU =
            T.let(
              :"fr-lu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MA =
            T.let(
              :"fr-ma",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MC =
            T.let(
              :"fr-mc",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MF =
            T.let(
              :"fr-mf",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MG =
            T.let(
              :"fr-mg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_ML =
            T.let(
              :"fr-ml",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MQ =
            T.let(
              :"fr-mq",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MR =
            T.let(
              :"fr-mr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_MU =
            T.let(
              :"fr-mu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_NC =
            T.let(
              :"fr-nc",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_NE =
            T.let(
              :"fr-ne",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_PF =
            T.let(
              :"fr-pf",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_PM =
            T.let(
              :"fr-pm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_RE =
            T.let(
              :"fr-re",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_RW =
            T.let(
              :"fr-rw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_SC =
            T.let(
              :"fr-sc",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_SN =
            T.let(
              :"fr-sn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_SY =
            T.let(
              :"fr-sy",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_TD =
            T.let(
              :"fr-td",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_TG =
            T.let(
              :"fr-tg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_TN =
            T.let(
              :"fr-tn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_VU =
            T.let(
              :"fr-vu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_WF =
            T.let(
              :"fr-wf",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FR_YT =
            T.let(
              :"fr-yt",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FUR =
            T.let(
              :fur,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FUR_IT =
            T.let(
              :"fur-it",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FY =
            T.let(
              :fy,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          FY_NL =
            T.let(
              :"fy-nl",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GA_GB =
            T.let(
              :"ga-gb",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GA_IE =
            T.let(
              :"ga-ie",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GD =
            T.let(
              :gd,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GD_GB =
            T.let(
              :"gd-gb",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-es",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GSW =
            T.let(
              :gsw,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GSW_CH =
            T.let(
              :"gsw-ch",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GSW_FR =
            T.let(
              :"gsw-fr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GSW_LI =
            T.let(
              :"gsw-li",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GUZ =
            T.let(
              :guz,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GUZ_KE =
            T.let(
              :"guz-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GV =
            T.let(
              :gv,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          GV_IM =
            T.let(
              :"gv-im",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HA_GH =
            T.let(
              :"ha-gh",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HA_NE =
            T.let(
              :"ha-ne",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HA_NG =
            T.let(
              :"ha-ng",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HAW_US =
            T.let(
              :"haw-us",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HR_BA =
            T.let(
              :"hr-ba",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-hr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HSB =
            T.let(
              :hsb,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HSB_DE =
            T.let(
              :"hsb-de",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-hu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-am",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IA =
            T.let(
              :ia,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IA_001 =
            T.let(
              :"ia-001",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IG =
            T.let(
              :ig,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IG_NG =
            T.let(
              :"ig-ng",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          II =
            T.let(
              :ii,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          II_CN =
            T.let(
              :"ii-cn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-id",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-is",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-ch",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-it",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IT_SM =
            T.let(
              :"it-sm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          IT_VA =
            T.let(
              :"it-va",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          HE_IL =
            T.let(
              :"he-il",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-jp",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JGO =
            T.let(
              :jgo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JGO_CM =
            T.let(
              :"jgo-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YI_001 =
            T.let(
              :"yi-001",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JMC =
            T.let(
              :jmc,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JMC_TZ =
            T.let(
              :"jmc-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JV =
            T.let(
              :jv,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-id",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-ge",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KAB =
            T.let(
              :kab,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KAB_DZ =
            T.let(
              :"kab-dz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KAM =
            T.let(
              :kam,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KAM_KE =
            T.let(
              :"kam-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KDE =
            T.let(
              :kde,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KDE_TZ =
            T.let(
              :"kde-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KEA =
            T.let(
              :kea,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KEA_CV =
            T.let(
              :"kea-cv",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KHQ =
            T.let(
              :khq,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KHQ_ML =
            T.let(
              :"khq-ml",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KI =
            T.let(
              :ki,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KI_KE =
            T.let(
              :"ki-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-kz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KKJ =
            T.let(
              :kkj,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KKJ_CM =
            T.let(
              :"kkj-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KL =
            T.let(
              :kl,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KL_GL =
            T.let(
              :"kl-gl",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KLN =
            T.let(
              :kln,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KLN_KE =
            T.let(
              :"kln-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-kh",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KO_KP =
            T.let(
              :"ko-kp",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-kr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KOK =
            T.let(
              :kok,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KOK_IN =
            T.let(
              :"kok-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KS =
            T.let(
              :ks,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KS_IN =
            T.let(
              :"ks-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KSB =
            T.let(
              :ksb,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KSB_TZ =
            T.let(
              :"ksb-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KSF =
            T.let(
              :ksf,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KSF_CM =
            T.let(
              :"ksf-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KSH =
            T.let(
              :ksh,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KSH_DE =
            T.let(
              :"ksh-de",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KW =
            T.let(
              :kw,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KW_GB =
            T.let(
              :"kw-gb",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KU =
            T.let(
              :ku,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KU_TR =
            T.let(
              :"ku-tr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KY =
            T.let(
              :ky,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          KY_KG =
            T.let(
              :"ky-kg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LAG =
            T.let(
              :lag,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LAG_TZ =
            T.let(
              :"lag-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LB_LU =
            T.let(
              :"lb-lu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LG =
            T.let(
              :lg,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LG_UG =
            T.let(
              :"lg-ug",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LKT =
            T.let(
              :lkt,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LKT_US =
            T.let(
              :"lkt-us",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LN_AO =
            T.let(
              :"ln-ao",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LN_CD =
            T.let(
              :"ln-cd",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LN_CF =
            T.let(
              :"ln-cf",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LN_CG =
            T.let(
              :"ln-cg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-la",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LRC =
            T.let(
              :lrc,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LRC_IQ =
            T.let(
              :"lrc-iq",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LRC_IR =
            T.let(
              :"lrc-ir",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-lt",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LU =
            T.let(
              :lu,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LU_CD =
            T.let(
              :"lu-cd",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LUO =
            T.let(
              :luo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LUO_KE =
            T.let(
              :"luo-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LUY =
            T.let(
              :luy,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LUY_KE =
            T.let(
              :"luy-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-lv",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MAI =
            T.let(
              :mai,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MAI_IN =
            T.let(
              :"mai-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MAS =
            T.let(
              :mas,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MAS_KE =
            T.let(
              :"mas-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MAS_TZ =
            T.let(
              :"mas-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MER =
            T.let(
              :mer,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MER_KE =
            T.let(
              :"mer-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MFE =
            T.let(
              :mfe,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MFE_MU =
            T.let(
              :"mfe-mu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MG_MG =
            T.let(
              :"mg-mg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MGH =
            T.let(
              :mgh,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MGH_MZ =
            T.let(
              :"mgh-mz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MGO =
            T.let(
              :mgo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MGO_CM =
            T.let(
              :"mgo-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MI_NZ =
            T.let(
              :"mi-nz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-mk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-mn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MNI =
            T.let(
              :mni,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MNI_IN =
            T.let(
              :"mni-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MS_BN =
            T.let(
              :"ms-bn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MS_ID =
            T.let(
              :"ms-id",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-my",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MS_SG =
            T.let(
              :"ms-sg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MT_MT =
            T.let(
              :"mt-mt",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MUA =
            T.let(
              :mua,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MUA_CM =
            T.let(
              :"mua-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-mm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MZN =
            T.let(
              :mzn,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          MZN_IR =
            T.let(
              :"mzn-ir",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NAQ =
            T.let(
              :naq,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NAQ_NA =
            T.let(
              :"naq-na",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-no",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NB_SJ =
            T.let(
              :"nb-sj",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ND =
            T.let(
              :nd,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ND_ZW =
            T.let(
              :"nd-zw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NDS =
            T.let(
              :nds,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NDS_DE =
            T.let(
              :"nds-de",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NDS_NL =
            T.let(
              :"nds-nl",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NE_IN =
            T.let(
              :"ne-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-np",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_AW =
            T.let(
              :"nl-aw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-be",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_CH =
            T.let(
              :"nl-ch",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_BQ =
            T.let(
              :"nl-bq",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_CW =
            T.let(
              :"nl-cw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_LU =
            T.let(
              :"nl-lu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-nl",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_SR =
            T.let(
              :"nl-sr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NL_SX =
            T.let(
              :"nl-sx",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NMG =
            T.let(
              :nmg,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NMG_CM =
            T.let(
              :"nmg-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NN_NO =
            T.let(
              :"nn-no",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NNH =
            T.let(
              :nnh,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NNH_CM =
            T.let(
              :"nnh-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-no",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NUS =
            T.let(
              :nus,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NUS_SS =
            T.let(
              :"nus-ss",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NYN =
            T.let(
              :nyn,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          NYN_UG =
            T.let(
              :"nyn-ug",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OM =
            T.let(
              :om,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OM_ET =
            T.let(
              :"om-et",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OM_KE =
            T.let(
              :"om-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OR =
            T.let(
              :or,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OR_IN =
            T.let(
              :"or-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OS =
            T.let(
              :os,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OS_GE =
            T.let(
              :"os-ge",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          OS_RU =
            T.let(
              :"os-ru",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PA_IN =
            T.let(
              :"pa-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PA_PK =
            T.let(
              :"pa-pk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PCM =
            T.let(
              :pcm,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PCM_NG =
            T.let(
              :"pcm-ng",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-pl",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PRG =
            T.let(
              :prg,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PRG_001 =
            T.let(
              :"prg-001",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PS_AF =
            T.let(
              :"ps-af",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PS_PK =
            T.let(
              :"ps-pk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_AO =
            T.let(
              :"pt-ao",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-br",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_CH =
            T.let(
              :"pt-ch",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_CV =
            T.let(
              :"pt-cv",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_GQ =
            T.let(
              :"pt-gq",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_GW =
            T.let(
              :"pt-gw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_LU =
            T.let(
              :"pt-lu",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_MO =
            T.let(
              :"pt-mo",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_MZ =
            T.let(
              :"pt-mz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-pt",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_ST =
            T.let(
              :"pt-st",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          PT_TL =
            T.let(
              :"pt-tl",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          QU =
            T.let(
              :qu,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          QU_BO =
            T.let(
              :"qu-bo",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          QU_EC =
            T.let(
              :"qu-ec",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          QU_PE =
            T.let(
              :"qu-pe",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RM =
            T.let(
              :rm,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RM_CH =
            T.let(
              :"rm-ch",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RN =
            T.let(
              :rn,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RN_BI =
            T.let(
              :"rn-bi",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RO_MD =
            T.let(
              :"ro-md",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-ro",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ROF =
            T.let(
              :rof,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ROF_TZ =
            T.let(
              :"rof-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU_BY =
            T.let(
              :"ru-by",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU_KG =
            T.let(
              :"ru-kg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU_KZ =
            T.let(
              :"ru-kz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU_MD =
            T.let(
              :"ru-md",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-ru",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RU_UA =
            T.let(
              :"ru-ua",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RW =
            T.let(
              :rw,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-rw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RWK =
            T.let(
              :rwk,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          RWK_TZ =
            T.let(
              :"rwk-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SA_IN =
            T.let(
              :"sa-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SAH =
            T.let(
              :sah,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SAH_RU =
            T.let(
              :"sah-ru",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SAQ =
            T.let(
              :saq,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SAQ_KE =
            T.let(
              :"saq-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SAT =
            T.let(
              :sat,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SAT_IN =
            T.let(
              :"sat-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SBP =
            T.let(
              :sbp,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SBP_TZ =
            T.let(
              :"sbp-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SD_IN =
            T.let(
              :"sd-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SD_PK =
            T.let(
              :"sd-pk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SE =
            T.let(
              :se,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SE_FI =
            T.let(
              :"se-fi",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SE_NO =
            T.let(
              :"se-no",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SE_SE =
            T.let(
              :"se-se",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SEH =
            T.let(
              :seh,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SEH_MZ =
            T.let(
              :"seh-mz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SES =
            T.let(
              :ses,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SES_ML =
            T.let(
              :"ses-ml",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SG =
            T.let(
              :sg,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SG_CF =
            T.let(
              :"sg-cf",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SHI =
            T.let(
              :shi,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SHI_MA =
            T.let(
              :"shi-ma",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-lk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-sk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-si",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SMN =
            T.let(
              :smn,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SMN_FI =
            T.let(
              :"smn-fi",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SN_ZW =
            T.let(
              :"sn-zw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SO_DJ =
            T.let(
              :"so-dj",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SO_ET =
            T.let(
              :"so-et",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SO_KE =
            T.let(
              :"so-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SO_SO =
            T.let(
              :"so-so",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-al",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SQ_MK =
            T.let(
              :"sq-mk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SQ_XK =
            T.let(
              :"sq-xk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SR_BA =
            T.let(
              :"sr-ba",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SR_CS =
            T.let(
              :"sr-cs",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SR_ME =
            T.let(
              :"sr-me",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-rs",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SR_XK =
            T.let(
              :"sr-xk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-id",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SV_AX =
            T.let(
              :"sv-ax",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SV_FI =
            T.let(
              :"sv-fi",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-se",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SW_CD =
            T.let(
              :"sw-cd",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SW_UG =
            T.let(
              :"sw-ug",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          SY =
            T.let(
              :sy,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-lk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-my",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-sg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TEO =
            T.let(
              :teo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TEO_KE =
            T.let(
              :"teo-ke",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TEO_UG =
            T.let(
              :"teo-ug",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TG_TJ =
            T.let(
              :"tg-tj",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-th",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TI =
            T.let(
              :ti,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TI_ER =
            T.let(
              :"ti-er",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TI_ET =
            T.let(
              :"ti-et",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TK_TM =
            T.let(
              :"tk-tm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TO =
            T.let(
              :to,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TO_TO =
            T.let(
              :"to-to",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TR_CY =
            T.let(
              :"tr-cy",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-tr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TT_RU =
            T.let(
              :"tt-ru",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TWQ =
            T.let(
              :twq,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TWQ_NE =
            T.let(
              :"twq-ne",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TZM =
            T.let(
              :tzm,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          TZM_MA =
            T.let(
              :"tzm-ma",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UG =
            T.let(
              :ug,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UG_CN =
            T.let(
              :"ug-cn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-ua",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-in",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-pk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UZ_AF =
            T.let(
              :"uz-af",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-uz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VAI =
            T.let(
              :vai,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VAI_LR =
            T.let(
              :"vai-lr",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-vn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VO =
            T.let(
              :vo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VO_001 =
            T.let(
              :"vo-001",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VUN =
            T.let(
              :vun,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          VUN_TZ =
            T.let(
              :"vun-tz",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          WAE =
            T.let(
              :wae,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          WAE_CH =
            T.let(
              :"wae-ch",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          WO =
            T.let(
              :wo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          WO_SN =
            T.let(
              :"wo-sn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          XH =
            T.let(
              :xh,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-za",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          XOG =
            T.let(
              :xog,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          XOG_UG =
            T.let(
              :"xog-ug",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YAV =
            T.let(
              :yav,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YAV_CM =
            T.let(
              :"yav-cm",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YO_BJ =
            T.let(
              :"yo-bj",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YO_NG =
            T.let(
              :"yo-ng",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YUE_CN =
            T.let(
              :"yue-cn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          YUE_HK =
            T.let(
              :"yue-hk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZGH =
            T.let(
              :zgh,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZGH_MA =
            T.let(
              :"zgh-ma",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_CN =
            T.let(
              :"zh-cn",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_HK =
            T.let(
              :"zh-hk",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_MO =
            T.let(
              :"zh-mo",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_SG =
            T.let(
              :"zh-sg",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-tw",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_HANS =
            T.let(
              :"zh-hans",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZH_HANT =
            T.let(
              :"zh-hant",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-za",
              HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::ContentSearchResult::Language::TaggedSymbol
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
