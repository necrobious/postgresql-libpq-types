module Database.PostgreSQL.LibPQTypes where

import Database.PostgreSQL.LibPQ

-- postgres types, defined in from pg_type.h

{-
create a 1:1 of PostgreSQL data types as a distinct Haskell data types, using 
type values defined in pg_type.h from the PostgreSQL source code.

future versions of this code should probably extract the CInt value of the type using the FFI, rather than hard coded values here.
-}

class PgOid oidtype where
  pgoid :: oidtype -> Oid 

-- BOOLOID
data BOOL = BOOL
instance PgOid BOOL where
  pgoid BOOL   = Oid 16

-- BYTEAOID
data BYTEA = BYTEA
instance PgOid BYTEA where
  pgoid BYTEA   = Oid 17

-- CHAROID
data CHAR = CHAR
instance PgOid CHAR where
  pgoid CHAR   = Oid 18

-- NAMEOID
data NAME = NAME
instance PgOid NAME where
  pgoid NAME   = Oid 19

-- INT8OID
data INT8 = INT8
instance PgOid INT8 where
  pgoid INT8   = Oid 20

-- INT2OID
data INT2 = INT2
instance PgOid INT2 where
  pgoid INT2   = Oid 21

-- INT2VECTOROID
data INT2VECTOR = INT2VECTOR
instance PgOid INT2VECTOR where
  pgoid INT2VECTOR   = Oid 22

-- INT4OID
data INT4 = INT4
instance PgOid INT4 where
  pgoid INT4   = Oid 23

-- REGPROCOID
data REGPROC = REGPROC
instance PgOid REGPROC where
  pgoid REGPROC   = Oid 24

-- TEXTOID
data TEXT = TEXT
instance PgOid TEXT where
  pgoid TEXT   = Oid 25

-- OIDOID
data OID = OID
instance PgOid OID where
  pgoid OID   = Oid 26

-- TIDOID
data TID = TID
instance PgOid TID where
  pgoid TID   = Oid 27

-- XIDOID
data XID = XID
instance PgOid XID where
  pgoid XID   = Oid 28

-- CIDOID
data CID = CID
instance PgOid CID where
  pgoid CID   = Oid 29

-- OIDVECTOROID
data OIDVECTOR = OIDVECTOR
instance PgOid OIDVECTOR where
  pgoid OIDVECTOR   = Oid 30

-- JSONOID
data JSON = JSON
instance PgOid JSON where
  pgoid JSON   = Oid 114

-- XMLOID
data XML = XML
instance PgOid XML where
  pgoid XML   = Oid 142

-- PGNODETREEOID
data PGNODETREE = PGNODETREE
instance PgOid PGNODETREE where
  pgoid PGNODETREE   = Oid 194

-- POINTOID
data POINT = POINT
instance PgOid POINT where
  pgoid POINT   = Oid 600

-- LSEGOID
data LSEG = LSEG
instance PgOid LSEG where
  pgoid LSEG   = Oid 601

-- PATHOID
data PATH = PATH
instance PgOid PATH where
  pgoid PATH   = Oid 602

-- BOXOID
data BOX = BOX
instance PgOid BOX where
  pgoid BOX   = Oid 603

-- POLYGONOID
data POLYGON = POLYGON
instance PgOid POLYGON where
  pgoid POLYGON   = Oid 604

-- LINEOID
data LINE = LINE
instance PgOid LINE where
  pgoid LINE   = Oid 628

-- FLOAT4OID
data FLOAT4 = FLOAT4
instance PgOid FLOAT4 where
  pgoid FLOAT4   = Oid 700

-- FLOAT8OID
data FLOAT8 = FLOAT8
instance PgOid FLOAT8 where
  pgoid FLOAT8   = Oid 701

-- ABSTIMEOID
data ABSTIME = ABSTIME
instance PgOid ABSTIME where
  pgoid ABSTIME   = Oid 702

-- RELTIMEOID
data RELTIME = RELTIME
instance PgOid RELTIME where
  pgoid RELTIME   = Oid 703

-- TINTERVALOID
data TINTERVAL = TINTERVAL
instance PgOid TINTERVAL where
  pgoid TINTERVAL   = Oid 704

-- UNKNOWNOID
data UNKNOWN = UNKNOWN
instance PgOid UNKNOWN where
  pgoid UNKNOWN   = Oid 705

-- CIRCLEOID
data CIRCLE = CIRCLE
instance PgOid CIRCLE where
  pgoid CIRCLE   = Oid 718

-- CASHOID
data CASH = CASH
instance PgOid CASH where
  pgoid CASH   = Oid 790

-- MACADDROID
data MACADDR = MACADDR
instance PgOid MACADDR where
  pgoid MACADDR   = Oid 829

-- INETOID
data INET = INET
instance PgOid INET where
  pgoid INET   = Oid 869

-- CIDROID
data CIDR = CIDR
instance PgOid CIDR where
  pgoid CIDR   = Oid 650

-- INT4ARRAYOID
data INT4ARRAY = INT4ARRAY
instance PgOid INT4ARRAY where
  pgoid INT4ARRAY   = Oid 1007

-- TEXTARRAYOID
data TEXTARRAY = TEXTARRAY
instance PgOid TEXTARRAY where
  pgoid TEXTARRAY   = Oid 1009

-- FLOAT4ARRAYOID
data FLOAT4ARRAY = FLOAT4ARRAY
instance PgOid FLOAT4ARRAY where
  pgoid FLOAT4ARRAY   = Oid 1021

-- ACLITEMOID
data ACLITEM = ACLITEM
instance PgOid ACLITEM where
  pgoid ACLITEM   = Oid 1033

-- CSTRINGARRAYOID
data CSTRINGARRAY = CSTRINGARRAY
instance PgOid CSTRINGARRAY where
  pgoid CSTRINGARRAY   = Oid 1263

-- BPCHAROID
data BPCHAR = BPCHAR
instance PgOid BPCHAR where
  pgoid BPCHAR   = Oid 1042

-- VARCHAROID
data VARCHAR = VARCHAR
instance PgOid VARCHAR where
  pgoid VARCHAR   = Oid 1043

-- DATEOID
data DATE = DATE
instance PgOid DATE where
  pgoid DATE   = Oid 1082

-- TIMEOID
data TIME = TIME
instance PgOid TIME where
  pgoid TIME   = Oid 1083

-- TIMESTAMPOID
data TIMESTAMP = TIMESTAMP
instance PgOid TIMESTAMP where
  pgoid TIMESTAMP   = Oid 1114

-- TIMESTAMPTZOID
data TIMESTAMPTZ = TIMESTAMPTZ
instance PgOid TIMESTAMPTZ where
  pgoid TIMESTAMPTZ   = Oid 1184

-- INTERVALOID
data INTERVAL = INTERVAL
instance PgOid INTERVAL where
  pgoid INTERVAL   = Oid 1186

-- TIMETZOID
data TIMETZ = TIMETZ
instance PgOid TIMETZ where
  pgoid TIMETZ   = Oid 1266

-- BITOID
data BIT = BIT
instance PgOid BIT where
  pgoid BIT   = Oid 1560

-- VARBITOID
data VARBIT = VARBIT
instance PgOid VARBIT where
  pgoid VARBIT   = Oid 1562

-- NUMERICOID
data NUMERIC = NUMERIC
instance PgOid NUMERIC where
  pgoid NUMERIC   = Oid 1700

-- REFCURSOROID
data REFCURSOR = REFCURSOR
instance PgOid REFCURSOR where
  pgoid REFCURSOR   = Oid 1790

-- REGPROCEDUREOID
data REGPROCEDURE = REGPROCEDURE
instance PgOid REGPROCEDURE where
  pgoid REGPROCEDURE   = Oid 2202

-- REGOPEROID
data REGOPER = REGOPER
instance PgOid REGOPER where
  pgoid REGOPER   = Oid 2203

-- REGOPERATOROID
data REGOPERATOR = REGOPERATOR
instance PgOid REGOPERATOR where
  pgoid REGOPERATOR   = Oid 2204

-- REGCLASSOID
data REGCLASS = REGCLASS
instance PgOid REGCLASS where
  pgoid REGCLASS   = Oid 2205

-- REGTYPEOID
data REGTYPE = REGTYPE
instance PgOid REGTYPE where
  pgoid REGTYPE   = Oid 2206

-- REGTYPEARRAYOID
data REGTYPEARRAY = REGTYPEARRAY
instance PgOid REGTYPEARRAY where
  pgoid REGTYPEARRAY   = Oid 2211

-- TSVECTOROID
data TSVECTOR = TSVECTOR
instance PgOid TSVECTOR where
  pgoid TSVECTOR   = Oid 3614

-- GTSVECTOROID
data GTSVECTOR = GTSVECTOR
instance PgOid GTSVECTOR where
  pgoid GTSVECTOR   = Oid 3642

-- TSQUERYOID
data TSQUERY = TSQUERY
instance PgOid TSQUERY where
  pgoid TSQUERY   = Oid 3615

-- REGCONFIGOID
data REGCONFIG = REGCONFIG
instance PgOid REGCONFIG where
  pgoid REGCONFIG   = Oid 3734

-- REGDICTIONARYOID
data REGDICTIONARY = REGDICTIONARY
instance PgOid REGDICTIONARY where
  pgoid REGDICTIONARY   = Oid 3769

-- INT4RANGEOID
data INT4RANGE = INT4RANGE
instance PgOid INT4RANGE where
  pgoid INT4RANGE   = Oid 3904

-- RECORDOID
data RECORD = RECORD
instance PgOid RECORD where
  pgoid RECORD   = Oid 2249

-- RECORDARRAYOID
data RECORDARRAY = RECORDARRAY
instance PgOid RECORDARRAY where
  pgoid RECORDARRAY   = Oid 2287

-- CSTRINGOID
data CSTRING = CSTRING
instance PgOid CSTRING where
  pgoid CSTRING   = Oid 2275

-- ANYOID
data ANY = ANY
instance PgOid ANY where
  pgoid ANY   = Oid 2276

-- ANYARRAYOID
data ANYARRAY = ANYARRAY
instance PgOid ANYARRAY where
  pgoid ANYARRAY   = Oid 2277

-- VOIDOID
data VOID = VOID
instance PgOid VOID where
  pgoid VOID   = Oid 2278

-- TRIGGEROID
data TRIGGER = TRIGGER
instance PgOid TRIGGER where
  pgoid TRIGGER   = Oid 2279

-- EVTTRIGGEROID
data EVTTRIGGER = EVTTRIGGER
instance PgOid EVTTRIGGER where
  pgoid EVTTRIGGER   = Oid 3838

-- LANGUAGE_HANDLEROID
data LANGUAGE_HANDLER = LANGUAGE_HANDLER
instance PgOid LANGUAGE_HANDLER where
  pgoid LANGUAGE_HANDLER   = Oid 2280

-- INTERNALOID
data INTERNAL = INTERNAL
instance PgOid INTERNAL where
  pgoid INTERNAL   = Oid 2281

-- OPAQUEOID
data OPAQUE = OPAQUE
instance PgOid OPAQUE where
  pgoid OPAQUE   = Oid 2282

-- ANYELEMENTOID
data ANYELEMENT = ANYELEMENT
instance PgOid ANYELEMENT where
  pgoid ANYELEMENT   = Oid 2283

-- ANYNONARRAYOID
data ANYNONARRAY = ANYNONARRAY
instance PgOid ANYNONARRAY where
  pgoid ANYNONARRAY   = Oid 2776

-- ANYENUMOID
data ANYENUM = ANYENUM
instance PgOid ANYENUM where
  pgoid ANYENUM   = Oid 3500

-- FDW_HANDLEROID
data FDW_HANDLER = FDW_HANDLER
instance PgOid FDW_HANDLER where
  pgoid FDW_HANDLER   = Oid 3115

-- ANYRANGEOID
data ANYRANGE = ANYRANGE
instance PgOid ANYRANGE where
  pgoid ANYRANGE   = Oid 3831

-- UUID
data UUID = UUID
instance PgOid UUID where
  pgoid UUID   = Oid 2950
