using System; 
using System.Collections.Generic; 
using System.Text; 
using System.Runtime.Serialization; 
using System.ComponentModel; 
 
namespace ProfilesRNSDLL.BO.ORNG
{ 
    public partial class AppRegistry
    { 
        public override int TableId { get { return 3701;} }
        public enum FieldNames : int { nodeid = 44252, appId = 44253, visibility = 44254, createdDT = 44255 }
        public override string TableSchemaName { get { return "ORNG"; } }
    } 
} 
