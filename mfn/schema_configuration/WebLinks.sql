USE specify_test;

UPDATE spappresourcedata T1
       INNER JOIN spappresource T2
               ON T1.`SpAppResourceID` = T2.`SpAppResourceID`
   SET `data` =  REPLACE(`data`, '</vector>', '
  <weblinkdef>
    <name><![CDATA[MfNMedia]]></name>
    <tableName><![CDATA[collectionobject]]></tableName>
    <desc><![CDATA[]]></desc>
    <baseURLStr><![CDATA[http://coll.mfn-berlin.de/u/<reservedText>.html]]></baseURLStr>
    <args>
      <weblinkdefarg>
        <name><![CDATA[reservedText]]></name>
        <title><![CDATA[GIN]]></title>
        <prompt><![CDATA[false]]></prompt>
        <isEditable><![CDATA[false]]></isEditable>
      </weblinkdefarg>
    </args>
    <usedByList>
      <usedby>
        <tableName><![CDATA[collectionobject]]></tableName>
      </usedby>
    </usedByList>
  </weblinkdef>
</vector>')
 WHERE T2.`name` = 'weblinks'
   AND T1.`data` NOT LIKE '%[MfNMedia]%';


UPDATE spappresourcedata T1
       INNER JOIN spappresource T2
               ON T1.`SpAppResourceID` = T2.`SpAppResourceID`
   SET `data` =  REPLACE(`data`, '</vector>', '
  <weblinkdef>
    <name><![CDATA[CatalogueOfLife]]></name>
    <desc><![CDATA[]]></desc>
    <baseURLStr><![CDATA[http://www.catalogueoflife.org/col/search/all/key/<parent>]]></baseURLStr>
    <args>
      <weblinkdefarg>
        <name><![CDATA[parent]]></name>
        <prompt><![CDATA[true]]></prompt>
        <isEditable><![CDATA[false]]></isEditable>
      </weblinkdefarg>
    </args>
    <usedByList>
      <usedby>
        <tableName><![CDATA[taxon]]></tableName>
      </usedby>
    </usedByList>
  </weblinkdef>
</vector>')
 WHERE T2.`name` = 'weblinks'
   AND T1.`data` NOT LIKE '%[CatalogueOfLife]%';

UPDATE spappresourcedata T1
       INNER JOIN spappresource T2
               ON T1.`SpAppResourceID` = T2.`SpAppResourceID`
   SET `data` =  REPLACE(`data`, '</vector>', '
  <weblinkdef>
    <name><![CDATA[WilsonReeder]]></name>
    <desc><![CDATA[]]></desc>
    <baseURLStr><![CDATA[http://www.departments.bucknell.edu/biology/resources/msw3/search.asp?s=<parent>]]></baseURLStr>
    <args>
      <weblinkdefarg>
        <name><![CDATA[parent]]></name>
        <prompt><![CDATA[true]]></prompt>
        <isEditable><![CDATA[false]]></isEditable>
      </weblinkdefarg>
    </args>
    <usedByList>
      <usedby>
        <tableName><![CDATA[taxon]]></tableName>
      </usedby>
    </usedByList>
  </weblinkdef>
</vector>')
 WHERE T2.`name` = 'weblinks'
   AND T1.`data` NOT LIKE '%[WilsonReeder]%';
