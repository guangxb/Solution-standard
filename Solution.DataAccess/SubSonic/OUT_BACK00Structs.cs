 
using System;
using SubSonic.Schema;
using SubSonic.DataProviders;
using System.Data;

namespace Solution.DataAccess.DataModel {
        /// <summary>
        /// Table: OUT_BACK00
        /// Primary Key: Id
        /// </summary>

        public class OUT_BACK00Structs: DatabaseTable {
            
            public OUT_BACK00Structs(IDataProvider provider):base("OUT_BACK00",provider){
                ClassName = "OUT_BACK00";
                SchemaName = "dbo";
                

                Columns.Add(new DatabaseColumn("Id", this)
                {
	                IsPrimaryKey = true,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = true,
	                IsForeignKey = false,
	                MaxLength = 0,
					PropertyName = "Id"
                });

                Columns.Add(new DatabaseColumn("SHOP_ID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.AnsiString,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 10,
					PropertyName = "SHOP_ID"
                });

                Columns.Add(new DatabaseColumn("BK_ID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.AnsiString,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 30,
					PropertyName = "BK_ID"
                });

                Columns.Add(new DatabaseColumn("STATUS", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Int32,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0,
					PropertyName = "STATUS"
                });

                Columns.Add(new DatabaseColumn("INPUT_DATE", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.DateTime,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0,
					PropertyName = "INPUT_DATE"
                });

                Columns.Add(new DatabaseColumn("IN_SHOP", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.AnsiString,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 10,
					PropertyName = "IN_SHOP"
                });

                Columns.Add(new DatabaseColumn("STOCK_ID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.AnsiString,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 6,
					PropertyName = "STOCK_ID"
                });

                Columns.Add(new DatabaseColumn("USER_ID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.AnsiString,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 10,
					PropertyName = "USER_ID"
                });

                Columns.Add(new DatabaseColumn("APP_USER", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.AnsiString,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 10,
					PropertyName = "APP_USER"
                });

                Columns.Add(new DatabaseColumn("APP_DATETIME", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.DateTime,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0,
					PropertyName = "APP_DATETIME"
                });

                Columns.Add(new DatabaseColumn("RELATE_ID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.AnsiString,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 30,
					PropertyName = "RELATE_ID"
                });

                Columns.Add(new DatabaseColumn("Exported", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Byte,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0,
					PropertyName = "Exported"
                });

                Columns.Add(new DatabaseColumn("Exported_ID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.AnsiString,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 30,
					PropertyName = "Exported_ID"
                });

                Columns.Add(new DatabaseColumn("Memo", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.AnsiString,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 200,
					PropertyName = "Memo"
                });

                Columns.Add(new DatabaseColumn("LOCKED", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Byte,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0,
					PropertyName = "LOCKED"
                });

                Columns.Add(new DatabaseColumn("CRT_DATETIME", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.DateTime,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0,
					PropertyName = "CRT_DATETIME"
                });

                Columns.Add(new DatabaseColumn("CRT_USER_ID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.AnsiString,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 10,
					PropertyName = "CRT_USER_ID"
                });

                Columns.Add(new DatabaseColumn("MOD_DATETIME", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.DateTime,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0,
					PropertyName = "MOD_DATETIME"
                });

                Columns.Add(new DatabaseColumn("MOD_USER_ID", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.AnsiString,
	                IsNullable = true,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 10,
					PropertyName = "MOD_USER_ID"
                });

                Columns.Add(new DatabaseColumn("LAST_UPDATE", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.DateTime,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0,
					PropertyName = "LAST_UPDATE"
                });

                Columns.Add(new DatabaseColumn("Trans_STATUS", this)
                {
	                IsPrimaryKey = false,
	                DataType = DbType.Byte,
	                IsNullable = false,
	                AutoIncrement = false,
	                IsForeignKey = false,
	                MaxLength = 0,
					PropertyName = "Trans_STATUS"
                });
                    
                
                
            }

            public IColumn Id{
                get{
                    return this.GetColumn("Id");
                }
            }
				
            
            public IColumn SHOP_ID{
                get{
                    return this.GetColumn("SHOP_ID");
                }
            }
				
            
            public IColumn BK_ID{
                get{
                    return this.GetColumn("BK_ID");
                }
            }
				
            
            public IColumn STATUS{
                get{
                    return this.GetColumn("STATUS");
                }
            }
				
            
            public IColumn INPUT_DATE{
                get{
                    return this.GetColumn("INPUT_DATE");
                }
            }
				
            
            public IColumn IN_SHOP{
                get{
                    return this.GetColumn("IN_SHOP");
                }
            }
				
            
            public IColumn STOCK_ID{
                get{
                    return this.GetColumn("STOCK_ID");
                }
            }
				
            
            public IColumn USER_ID{
                get{
                    return this.GetColumn("USER_ID");
                }
            }
				
            
            public IColumn APP_USER{
                get{
                    return this.GetColumn("APP_USER");
                }
            }
				
            
            public IColumn APP_DATETIME{
                get{
                    return this.GetColumn("APP_DATETIME");
                }
            }
				
            
            public IColumn RELATE_ID{
                get{
                    return this.GetColumn("RELATE_ID");
                }
            }
				
            
            public IColumn Exported{
                get{
                    return this.GetColumn("Exported");
                }
            }
				
            
            public IColumn Exported_ID{
                get{
                    return this.GetColumn("Exported_ID");
                }
            }
				
            
            public IColumn Memo{
                get{
                    return this.GetColumn("Memo");
                }
            }
				
            
            public IColumn LOCKED{
                get{
                    return this.GetColumn("LOCKED");
                }
            }
				
            
            public IColumn CRT_DATETIME{
                get{
                    return this.GetColumn("CRT_DATETIME");
                }
            }
				
            
            public IColumn CRT_USER_ID{
                get{
                    return this.GetColumn("CRT_USER_ID");
                }
            }
				
            
            public IColumn MOD_DATETIME{
                get{
                    return this.GetColumn("MOD_DATETIME");
                }
            }
				
            
            public IColumn MOD_USER_ID{
                get{
                    return this.GetColumn("MOD_USER_ID");
                }
            }
				
            
            public IColumn LAST_UPDATE{
                get{
                    return this.GetColumn("LAST_UPDATE");
                }
            }
				
            
            public IColumn Trans_STATUS{
                get{
                    return this.GetColumn("Trans_STATUS");
                }
            }
				
            
                    
        }
        
}
