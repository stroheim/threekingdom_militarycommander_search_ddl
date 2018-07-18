SET QUOTED_IDENTIFIER ON
GO

--------------------------------------------------
-- L0010:性別マスタ
--------------------------------------------------
-- 表削除
--DROP TABLE "sex_div";
--go


-- 表作成
CREATE TABLE "sex_div"
(
 "sex_div_id"		INT																	NOT NULL
,"sex_div_name"		VARCHAR(10)															NOT NULL
,"is_disabled"		BIT			CONSTRAINT "DF_sex_div_is_disabled" DEFAULT 0			NOT NULL
,"created_at"		DATETIME2	CONSTRAINT "DF_sex_div_created_at" 	DEFAULT GETDATE()	NOT NULL
,"created_user"		VARCHAR(100)														NOT NULL
,"updated_at"		DATETIME2		
,"updated_user"		VARCHAR(100)		
,"version_no"		ROWVERSION															NOT NULL

);
go

-- PK作成
ALTER TABLE "sex_div" ADD CONSTRAINT "PK_sex_div" PRIMARY KEY("sex_div_id")
;
go

-- UNIQUE制約作成
--ALTER TABLE "M10_ANKEN_PROPERTY_KANRI" ADD CONSTRAINT "M01106_2_3_4_UNQ" UNIQUE("CONTENTS_ID","SOURCE_FIELD","SOURCE_FIELD_INDEX")
--;
--go

-- コメント設定
-- テーブルコメント
EXECUTE sp_addextendedproperty N'MS_Description', N'L0010:性別マスタ', N'user', N'dbo', N'table', N'sex_div';

-- カラムコメント
EXECUTE sp_addextendedproperty N'MS_Description', N'性別区分', N'user', N'dbo', N'table', N'sex_div', N'column', N'sex_div_id';
EXECUTE sp_addextendedproperty N'MS_Description', N'性別区分名', N'user', N'dbo', N'table', N'sex_div', N'column', N'sex_div_name';
EXECUTE sp_addextendedproperty N'MS_Description', N'無効化フラグ', N'user', N'dbo', N'table', N'sex_div', N'column', N'is_disabled';
EXECUTE sp_addextendedproperty N'MS_Description', N'登録日', N'user', N'dbo', N'table', N'sex_div', N'column', N'created_at';
EXECUTE sp_addextendedproperty N'MS_Description', N'登録者', N'user', N'dbo', N'table', N'sex_div', N'column', N'created_user';
EXECUTE sp_addextendedproperty N'MS_Description', N'更新日', N'user', N'dbo', N'table', N'sex_div', N'column', N'updated_at';
EXECUTE sp_addextendedproperty N'MS_Description', N'更新者', N'user', N'dbo', N'table', N'sex_div', N'column', N'updated_user';
EXECUTE sp_addextendedproperty N'MS_Description', N'バージョン番号', N'user', N'dbo', N'table', N'sex_div', N'column', N'version_no';

-- FK設定
