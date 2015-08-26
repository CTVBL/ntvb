<cfcomponent>
	<CF_AssignDBLogicalValues databasetype="#APPLICATION.DatabaseType#">
	<cfset refkey = "yogionekenobi">

	<cffunction name="DetailQuery" returntype="query">
    	<cfquery name="rsDetailQuery" datasource="#APPLICATION.Dsn#">
		Select * From ReferenceTable
		Where Reference_ID = #ARGUMENTS.ReferenceID#
		</cfquery>

		<cfreturn rsDetailQuery>
	</cffunction>

	<cffunction name="Delete" returntype="numeric">
    	<cfquery name="DeleteQuery" datasource="#APPLICATION.Dsn#">
		Delete From ReferenceTable
		Where Reference_ID = #ARGUMENTS.ReferenceID#
		</cfquery>

		<cfreturn 1>
	</cffunction>

	<cffunction name="getCreditCardKeys">
		<cfloop index="i" from="1" to="4">
			<cfset keyindex = Mid(ARGUMENTS.KeyList, i, 1)>
			<cfquery name="rsKey" datasource="#APPLICATION.Dsn#">
			Select Reference_Value From ReferenceTable
			Where Reference_Name = 'KEY#keyindex#'
			</cfquery>	

			<cfscript>
			refvalue = Decrypt(rsKey.Reference_Value, refkey);
			if (i IS 1) {
				card.key1 = refvalue;
			} else {
				if (i IS 2) {
					card.key2 = refvalue;
				} else {
					if (i IS 3) {
						card.key3 = refvalue;
					} else {
						card.key4 = refvalue;
					}
				}					
			}
			</cfscript>
		</cfloop>		
		
		<cfreturn card>
	</cffunction>
	
	<cffunction name="getEncryptionKey" returntype="string">
 		<cfreturn refkey>
	</cffunction>

	<cffunction name="getNextReferenceValue" returntype="string">
	    <cflock name="#ARGUMENTS.ReferenceName#ID" type="EXCLUSIVE" timeout="10">
		<cfquery name="rsItem" datasource="#APPLICATION.Dsn#">
			Select * From ReferenceTable
			Where Reference_Name = '#ARGUMENTS.ReferenceName#'
		</cfquery>
	
		<cfset refvalue = rsItem.Reference_Value + 1>
		<cfquery name="IncrementReference" datasource="#APPLICATION.Dsn#">
			Update ReferenceTable
			Set Reference_Value = '#refvalue#'
			Where Reference_Name = '#ARGUMENTS.ReferenceName#'
		</cfquery>
		</cflock>

		<cfreturn refvalue>
	</cffunction>
	
	<cffunction name="getReferenceValue" returntype="string">
		<cfquery name="rsItem" datasource="#APPLICATION.Dsn#">
		Select * From ReferenceTable
		Where Reference_Name = '#ARGUMENTS.ReferenceName#'
		</cfquery>	
		
		<cfscript>
		if (rsItem.Is_Encrypted) {
			refvalue = Decrypt(rsItem.Reference_Value, refkey);
		} else {
			refvalue = Trim(rsItem.Reference_Value);
		}	
		</cfscript>
		<cfreturn refvalue>
	</cffunction>
	
	<cffunction name="ListQuery" returntype="query">
		<cfquery name="rsListQuery" datasource="#APPLICATION.Dsn#">
		Select * From ReferenceTable
		Order By Reference_Name
		</cfquery>

		<cfreturn rsListQuery>
	</cffunction>

	<cffunction name="putReferenceValue">
		<cfquery name="rsItem" datasource="#APPLICATION.Dsn#">
		Update ReferenceTable
		Set Reference_Value = '#ARGUMENTS.ReferenceValue#'
		Where Reference_Name = '#ARGUMENTS.ReferenceName#'
		</cfquery>	
		
	</cffunction>
	
	<cffunction name="Save">
		<cfparam name="ARGUMENTS.IsEncrypted" default="#dbfalse#">

		<cfscript>
		if (ARGUMENTS.IsEncrypted IS dbTrue) {
			if (ARGUMENTS.ReferenceValue IS NOT "") {
				refvalue = Encrypt(ARGUMENTS.ReferenceValue, refkey);
				refvalue = Replace(refvalue, "\", "\\", "ALL");
			} else {
				refvalue = "";
			}	
		} else {
			refvalue = ARGUMENTS.ReferenceValue;
		}
		</cfscript>
		
		<cfif ARGUMENTS.ReferenceID IS -1>
			<cfquery name="InsertRecord" datasource="#APPLICATION.Dsn#">
			Insert Into ReferenceTable (Reference_Name, Reference_Value, Description, Is_Encrypted)
			Values ('#ARGUMENTS.ReferenceName#', '#refvalue#', '#ARGUMENTS.Description#', #ARGUMENTS.IsEncrypted#)
			</cfquery>			
		<cfelse>	
			<cfquery name="UpdateRecord" datasource="#APPLICATION.Dsn#">
			Update ReferenceTable
			Set Reference_Name = '#ARGUMENTS.ReferenceName#',
			 Reference_Value = '#refvalue#',
			 Description = '#ARGUMENTS.Description#',
			 Is_Encrypted = #ARGUMENTS.IsEncrypted#,
			 Time_Updated = #Now()#
			Where Reference_ID = #ARGUMENTS.ReferenceID#
			</cfquery>
		</cfif>

		<cfreturn ARGUMENTS.ReferenceID>
	</cffunction>

</cfcomponent>


