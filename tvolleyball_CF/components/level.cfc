<cfcomponent>
	<cfset dbTrue = APPLICATION.dbTrue>
	<cfset dbFalse = APPLICATION.dbFalse>

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

	<cffunction name="ListboxQuery" returntype="query">
		<cfparam name="AddSelect" default="#dbTrue#">
		<cfquery name="rsListQuery" datasource="#APPLICATION.Dsn#">
		Select Level_ID, Level_Name From Levels
		Order By Level_Name
		</cfquery>

		<cfscript>
		QueryAddRow(rsListQuery);
		QuerySetCell(rsListQuery, "Level_ID", -1);
		QuerySetCell(rsListQuery, "Level_Name", "--- Select Level ---");
		</cfscript>
		<cfreturn rsListQuery>
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


