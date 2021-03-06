 
using System;

namespace Solution.DataAccess.Model
{
    /// <summary>
    /// TAKEIN11表实体类
    /// </summary>
    public partial class TAKEIN11
    {

		int _Id = 0;
		/// <summary>
		/// 
		/// </summary>
		public int Id
		{
			get { return _Id; }
			set { _Id = value; }
		}

		string _SHOP_ID = "";
		/// <summary>
		/// 分店编号
		/// </summary>
		public string SHOP_ID
		{
			get { return _SHOP_ID; }
			set { _SHOP_ID = value; }
		}

		string _TAKEIN_ID = "";
		/// <summary>
		/// 进货单
		/// </summary>
		public string TAKEIN_ID
		{
			get { return _TAKEIN_ID; }
			set { _TAKEIN_ID = value; }
		}

		int _SNo = 0;
		/// <summary>
		/// 序号
		/// </summary>
		public int SNo
		{
			get { return _SNo; }
			set { _SNo = value; }
		}

		string _PROD_ID = "";
		/// <summary>
		/// 商品编号
		/// </summary>
		public string PROD_ID
		{
			get { return _PROD_ID; }
			set { _PROD_ID = value; }
		}

		decimal _QUANTITY = 0;
		/// <summary>
		/// 数量
		/// </summary>
		public decimal QUANTITY
		{
			get { return _QUANTITY; }
			set { _QUANTITY = value; }
		}

		string _STD_UNIT = "";
		/// <summary>
		/// 验收单位
		/// </summary>
		public string STD_UNIT
		{
			get { return _STD_UNIT; }
			set { _STD_UNIT = value; }
		}

		int _STD_CONVERT = 0;
		/// <summary>
		/// 标准转换量
		/// </summary>
		public int STD_CONVERT
		{
			get { return _STD_CONVERT; }
			set { _STD_CONVERT = value; }
		}

		decimal _STD_QUAN = 0;
		/// <summary>
		/// 验收量
		/// </summary>
		public decimal STD_QUAN
		{
			get { return _STD_QUAN; }
			set { _STD_QUAN = value; }
		}

		decimal _STD_PRICE = 0;
		/// <summary>
		/// 标准单价
		/// </summary>
		public decimal STD_PRICE
		{
			get { return _STD_PRICE; }
			set { _STD_PRICE = value; }
		}

		decimal _Tax = 0;
		/// <summary>
		/// 税额
		/// </summary>
		public decimal Tax
		{
			get { return _Tax; }
			set { _Tax = value; }
		}

		decimal _QUAN1 = 0;
		/// <summary>
		/// 采购量
		/// </summary>
		public decimal QUAN1
		{
			get { return _QUAN1; }
			set { _QUAN1 = value; }
		}

		decimal _QUAN2 = 0;
		/// <summary>
		/// 取消量
		/// </summary>
		public decimal QUAN2
		{
			get { return _QUAN2; }
			set { _QUAN2 = value; }
		}

		decimal _Item_DISC_Amt = 0;
		/// <summary>
		/// 折价金额
		/// </summary>
		public decimal Item_DISC_Amt
		{
			get { return _Item_DISC_Amt; }
			set { _Item_DISC_Amt = value; }
		}

		string _MEMO = "";
		/// <summary>
		/// 备注
		/// </summary>
		public string MEMO
		{
			get { return _MEMO; }
			set { _MEMO = value; }
		}

		string _BAT_NO = "";
		/// <summary>
		/// 批号
		/// </summary>
		public string BAT_NO
		{
			get { return _BAT_NO; }
			set { _BAT_NO = value; }
		}

		DateTime _Exp_DateTime = new DateTime(1900,1,1);
		/// <summary>
		/// 有效日期
		/// </summary>
		public DateTime Exp_DateTime
		{
			get { return _Exp_DateTime; }
			set { _Exp_DateTime = value; }
		}
    } 

}


