 
using System;

namespace Solution.DataAccess.Model
{
    /// <summary>
    /// SHOP_PRICE_AREA表实体类
    /// </summary>
    public partial class SHOP_PRICE_AREA
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

		string _PRCAREA_ID = "";
		/// <summary>
		/// 
		/// </summary>
		public string PRCAREA_ID
		{
			get { return _PRCAREA_ID; }
			set { _PRCAREA_ID = value; }
		}

		string _PRCAREA_NAME = "";
		/// <summary>
		/// 
		/// </summary>
		public string PRCAREA_NAME
		{
			get { return _PRCAREA_NAME; }
			set { _PRCAREA_NAME = value; }
		}

		byte _ENABLE = 0;
		/// <summary>
		/// 
		/// </summary>
		public byte ENABLE
		{
			get { return _ENABLE; }
			set { _ENABLE = value; }
		}

		string _PRCAREA_MEMO = "";
		/// <summary>
		/// 
		/// </summary>
		public string PRCAREA_MEMO
		{
			get { return _PRCAREA_MEMO; }
			set { _PRCAREA_MEMO = value; }
		}

		DateTime _CRT_DATETIME = new DateTime(1900,1,1);
		/// <summary>
		/// 
		/// </summary>
		public DateTime CRT_DATETIME
		{
			get { return _CRT_DATETIME; }
			set { _CRT_DATETIME = value; }
		}

		string _CRT_USER_ID = "";
		/// <summary>
		/// 
		/// </summary>
		public string CRT_USER_ID
		{
			get { return _CRT_USER_ID; }
			set { _CRT_USER_ID = value; }
		}

		DateTime _MOD_DATETIME = new DateTime(1900,1,1);
		/// <summary>
		/// 
		/// </summary>
		public DateTime MOD_DATETIME
		{
			get { return _MOD_DATETIME; }
			set { _MOD_DATETIME = value; }
		}

		string _MOD_USER_ID = "";
		/// <summary>
		/// 
		/// </summary>
		public string MOD_USER_ID
		{
			get { return _MOD_USER_ID; }
			set { _MOD_USER_ID = value; }
		}

		DateTime _LAST_UPDATE = new DateTime(1900,1,1);
		/// <summary>
		/// 
		/// </summary>
		public DateTime LAST_UPDATE
		{
			get { return _LAST_UPDATE; }
			set { _LAST_UPDATE = value; }
		}

		byte _STATUS = 0;
		/// <summary>
		/// 
		/// </summary>
		public byte STATUS
		{
			get { return _STATUS; }
			set { _STATUS = value; }
		}
    } 

}


