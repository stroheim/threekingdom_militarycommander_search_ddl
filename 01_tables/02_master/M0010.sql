SET QUOTED_IDENTIFIER ON
GO

--------------------------------------------------
-- M0010:�����}�X�^
--------------------------------------------------
-- �\�폜
--DROP TABLE "military_commander";
--go


-- �\�쐬
CREATE TABLE "military_commander"
(
 "military_commander_id"			INT		IDENTITY																				NOT NULL
,"military_commander_name"			NVARCHAR(20)																						NOT NULL
,"phonetic"							VARCHAR(20)																						NOT NULL
,"sex_div_id"						INT																								NOT NULL
,"birth_year"						INT																								NOT NULL
,"death_year"						INT																								NOT NULL
,"leadership"						INT																								NOT NULL
,"military_force"					INT																								NOT NULL
,"intellect"						INT																								NOT NULL
,"politics"							INT																								NOT NULL
,"is_dynasty_warriors_appeared"		BIT			CONSTRAINT "DF_military_commander_is_dynasty_warriors_appeared" DEFAULT 0			NOT NULL
,"display_order"					INT			
,"is_disabled"						BIT			CONSTRAINT "DF_military_commander_is_disabled" 					DEFAULT 0			NOT NULL
,"created_at"						DATETIME2	CONSTRAINT "DF_military_commander_created_at" 					DEFAULT GETDATE()	NOT NULL
,"created_user"						VARCHAR(100)																					NOT NULL
,"updated_at"						DATETIME2		
,"updated_user"						VARCHAR(100)																					
,"version_no"						ROWVERSION																						NOT NULL
);
go

-- PK�쐬
ALTER TABLE "military_commander" ADD CONSTRAINT "PK_military_commander" PRIMARY KEY("military_commander_id")
;
go

-- UNIQUE����쐬

-- �R�����g�ݒ�
-- �e�[�u���R�����g
EXECUTE sp_addextendedproperty N'MS_Description', N'M0010:�����}�X�^', N'user', N'dbo', N'table', N'military_commander';

-- �J�����R�����g
EXECUTE sp_addextendedproperty N'MS_Description', N'����ID', N'user', N'dbo', N'table', N'military_commander', N'column', N'military_commander_id';
EXECUTE sp_addextendedproperty N'MS_Description', N'������', N'user', N'dbo', N'table', N'military_commander', N'column', N'military_commander_name';
EXECUTE sp_addextendedproperty N'MS_Description', N'�J�i', N'user', N'dbo', N'table', N'military_commander', N'column', N'phonetic';
EXECUTE sp_addextendedproperty N'MS_Description', N'���ʋ敪(FK)', N'user', N'dbo', N'table', N'military_commander', N'column', N'sex_div_id';
EXECUTE sp_addextendedproperty N'MS_Description', N'���N', N'user', N'dbo', N'table', N'military_commander', N'column', N'birth_year';
EXECUTE sp_addextendedproperty N'MS_Description', N'�v�N', N'user', N'dbo', N'table', N'military_commander', N'column', N'death_year';
EXECUTE sp_addextendedproperty N'MS_Description', N'����', N'user', N'dbo', N'table', N'military_commander', N'column', N'leadership';
EXECUTE sp_addextendedproperty N'MS_Description', N'����', N'user', N'dbo', N'table', N'military_commander', N'column', N'military_force';
EXECUTE sp_addextendedproperty N'MS_Description', N'�m��', N'user', N'dbo', N'table', N'military_commander', N'column', N'intellect';
EXECUTE sp_addextendedproperty N'MS_Description', N'����', N'user', N'dbo', N'table', N'military_commander', N'column', N'politics';
EXECUTE sp_addextendedproperty N'MS_Description', N'���o�o��t���O', N'user', N'dbo', N'table', N'military_commander', N'column', N'is_dynasty_warriors_appeared';
EXECUTE sp_addextendedproperty N'MS_Description', N'�\����', N'user', N'dbo', N'table', N'military_commander', N'column', N'display_order';
EXECUTE sp_addextendedproperty N'MS_Description', N'�������t���O', N'user', N'dbo', N'table', N'military_commander', N'column', N'is_disabled';
EXECUTE sp_addextendedproperty N'MS_Description', N'�o�^��', N'user', N'dbo', N'table', N'military_commander', N'column', N'created_at';
EXECUTE sp_addextendedproperty N'MS_Description', N'�o�^��', N'user', N'dbo', N'table', N'military_commander', N'column', N'created_user';
EXECUTE sp_addextendedproperty N'MS_Description', N'�X�V��', N'user', N'dbo', N'table', N'military_commander', N'column', N'updated_at';
EXECUTE sp_addextendedproperty N'MS_Description', N'�X�V��', N'user', N'dbo', N'table', N'military_commander', N'column', N'updated_user';
EXECUTE sp_addextendedproperty N'MS_Description', N'�o�[�W�����ԍ�', N'user', N'dbo', N'table', N'military_commander', N'column', N'version_no';

-- FK�ݒ�
ALTER TABLE "military_commander" ADD CONSTRAINT "FK_military_commander_sex_div" FOREIGN KEY("sex_div_id") REFERENCES "sex_div"("sex_div_id");
