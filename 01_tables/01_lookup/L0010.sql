SET QUOTED_IDENTIFIER ON
GO

--------------------------------------------------
-- L0010:���ʃ}�X�^
--------------------------------------------------
-- �\�폜
--DROP TABLE "sex_div";
--go


-- �\�쐬
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

-- PK�쐬
ALTER TABLE "sex_div" ADD CONSTRAINT "PK_sex_div" PRIMARY KEY("sex_div_id")
;
go

-- UNIQUE����쐬
--ALTER TABLE "M10_ANKEN_PROPERTY_KANRI" ADD CONSTRAINT "M01106_2_3_4_UNQ" UNIQUE("CONTENTS_ID","SOURCE_FIELD","SOURCE_FIELD_INDEX")
--;
--go

-- �R�����g�ݒ�
-- �e�[�u���R�����g
EXECUTE sp_addextendedproperty N'MS_Description', N'L0010:���ʃ}�X�^', N'user', N'dbo', N'table', N'sex_div';

-- �J�����R�����g
EXECUTE sp_addextendedproperty N'MS_Description', N'���ʋ敪', N'user', N'dbo', N'table', N'sex_div', N'column', N'sex_div_id';
EXECUTE sp_addextendedproperty N'MS_Description', N'���ʋ敪��', N'user', N'dbo', N'table', N'sex_div', N'column', N'sex_div_name';
EXECUTE sp_addextendedproperty N'MS_Description', N'�������t���O', N'user', N'dbo', N'table', N'sex_div', N'column', N'is_disabled';
EXECUTE sp_addextendedproperty N'MS_Description', N'�o�^��', N'user', N'dbo', N'table', N'sex_div', N'column', N'created_at';
EXECUTE sp_addextendedproperty N'MS_Description', N'�o�^��', N'user', N'dbo', N'table', N'sex_div', N'column', N'created_user';
EXECUTE sp_addextendedproperty N'MS_Description', N'�X�V��', N'user', N'dbo', N'table', N'sex_div', N'column', N'updated_at';
EXECUTE sp_addextendedproperty N'MS_Description', N'�X�V��', N'user', N'dbo', N'table', N'sex_div', N'column', N'updated_user';
EXECUTE sp_addextendedproperty N'MS_Description', N'�o�[�W�����ԍ�', N'user', N'dbo', N'table', N'sex_div', N'column', N'version_no';

-- FK�ݒ�
