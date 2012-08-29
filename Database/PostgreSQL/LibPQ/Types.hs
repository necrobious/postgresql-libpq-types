module Database.PostgreSQL.LibPQ.Types where

import Database.PostgreSQL.LibPQ
import Data.ByteString (ByteString)

-- postgres types, defined in from pg_type.h

{-
create a 1:1 of PostgreSQL data types as a distinct Haskell data types, using 
type values defined in pg_type.h from the PostgreSQL source code.

future versions of this code should probably extract the CInt value of the type using the FFI, rather than hard coded values here.
-}

-- A Typeclass for marking a type as having an oid-type value within libpq.
-- We use this typeclass to mark types 1:1 for types found in the pg_type.h and pg_type table. 
class PqOid oidtype where
  pqoid :: oidtype -> Oid 

-- A Typeclass for marking a type a having the ability to be transformed into and out of LibPQ values.
class LibPQ a where
  oidPQ  :: a -> Oid 
  toPQ   :: a -> Maybe (ByteString, Format)
  fromPQ :: Maybe ByteString -> Maybe a

-- BOOLOID
data BOOL = BOOL
instance PqOid BOOL where
  pqoid BOOL   = Oid 16

-- BYTEAOID
data BYTEA = BYTEA
instance PqOid BYTEA where
  pqoid BYTEA   = Oid 17

-- CHAROID
data CHAR = CHAR
instance PqOid CHAR where
  pqoid CHAR   = Oid 18

-- NAMEOID
data NAME = NAME
instance PqOid NAME where
  pqoid NAME   = Oid 19

-- INT8OID
data INT8 = INT8
instance PqOid INT8 where
  pqoid INT8   = Oid 20

-- INT2OID
data INT2 = INT2
instance PqOid INT2 where
  pqoid INT2   = Oid 21

-- INT2VECTOROID
data INT2VECTOR = INT2VECTOR
instance PqOid INT2VECTOR where
  pqoid INT2VECTOR   = Oid 22

-- INT4OID
data INT4 = INT4
instance PqOid INT4 where
  pqoid INT4   = Oid 23

-- REGPROCOID
data REGPROC = REGPROC
instance PqOid REGPROC where
  pqoid REGPROC   = Oid 24

-- TEXTOID
data TEXT = TEXT
instance PqOid TEXT where
  pqoid TEXT   = Oid 25

-- OIDOID
data OID = OID
instance PqOid OID where
  pqoid OID   = Oid 26

-- TIDOID
data TID = TID
instance PqOid TID where
  pqoid TID   = Oid 27

-- XIDOID
data XID = XID
instance PqOid XID where
  pqoid XID   = Oid 28

-- CIDOID
data CID = CID
instance PqOid CID where
  pqoid CID   = Oid 29

-- OIDVECTOROID
data OIDVECTOR = OIDVECTOR
instance PqOid OIDVECTOR where
  pqoid OIDVECTOR   = Oid 30

-- JSONOID
data JSON = JSON
instance PqOid JSON where
  pqoid JSON   = Oid 114

-- XMLOID
data XML = XML
instance PqOid XML where
  pqoid XML   = Oid 142

-- PGNODETREEOID
data PGNODETREE = PGNODETREE
instance PqOid PGNODETREE where
  pqoid PGNODETREE   = Oid 194

-- POINTOID
data POINT = POINT
instance PqOid POINT where
  pqoid POINT   = Oid 600

-- LSEGOID
data LSEG = LSEG
instance PqOid LSEG where
  pqoid LSEG   = Oid 601

-- PATHOID
data PATH = PATH
instance PqOid PATH where
  pqoid PATH   = Oid 602

-- BOXOID
data BOX = BOX
instance PqOid BOX where
  pqoid BOX   = Oid 603

-- POLYGONOID
data POLYGON = POLYGON
instance PqOid POLYGON where
  pqoid POLYGON   = Oid 604

-- LINEOID
data LINE = LINE
instance PqOid LINE where
  pqoid LINE   = Oid 628

-- FLOAT4OID
data FLOAT4 = FLOAT4
instance PqOid FLOAT4 where
  pqoid FLOAT4   = Oid 700

-- FLOAT8OID
data FLOAT8 = FLOAT8
instance PqOid FLOAT8 where
  pqoid FLOAT8   = Oid 701

-- ABSTIMEOID
data ABSTIME = ABSTIME
instance PqOid ABSTIME where
  pqoid ABSTIME   = Oid 702

-- RELTIMEOID
data RELTIME = RELTIME
instance PqOid RELTIME where
  pqoid RELTIME   = Oid 703

-- TINTERVALOID
data TINTERVAL = TINTERVAL
instance PqOid TINTERVAL where
  pqoid TINTERVAL   = Oid 704

-- UNKNOWNOID
data UNKNOWN = UNKNOWN
instance PqOid UNKNOWN where
  pqoid UNKNOWN   = Oid 705

-- CIRCLEOID
data CIRCLE = CIRCLE
instance PqOid CIRCLE where
  pqoid CIRCLE   = Oid 718

-- CASHOID
data CASH = CASH
instance PqOid CASH where
  pqoid CASH   = Oid 790

-- MACADDROID
data MACADDR = MACADDR
instance PqOid MACADDR where
  pqoid MACADDR   = Oid 829

-- INETOID
data INET = INET
instance PqOid INET where
  pqoid INET   = Oid 869

-- CIDROID
data CIDR = CIDR
instance PqOid CIDR where
  pqoid CIDR   = Oid 650

-- INT4ARRAYOID
data INT4ARRAY = INT4ARRAY
instance PqOid INT4ARRAY where
  pqoid INT4ARRAY   = Oid 1007

-- TEXTARRAYOID
data TEXTARRAY = TEXTARRAY
instance PqOid TEXTARRAY where
  pqoid TEXTARRAY   = Oid 1009

-- FLOAT4ARRAYOID
data FLOAT4ARRAY = FLOAT4ARRAY
instance PqOid FLOAT4ARRAY where
  pqoid FLOAT4ARRAY   = Oid 1021

-- ACLITEMOID
data ACLITEM = ACLITEM
instance PqOid ACLITEM where
  pqoid ACLITEM   = Oid 1033

-- CSTRINGARRAYOID
data CSTRINGARRAY = CSTRINGARRAY
instance PqOid CSTRINGARRAY where
  pqoid CSTRINGARRAY   = Oid 1263

-- BPCHAROID
data BPCHAR = BPCHAR
instance PqOid BPCHAR where
  pqoid BPCHAR   = Oid 1042

-- VARCHAROID
data VARCHAR = VARCHAR
instance PqOid VARCHAR where
  pqoid VARCHAR   = Oid 1043

-- DATEOID
data DATE = DATE
instance PqOid DATE where
  pqoid DATE   = Oid 1082

-- TIMEOID
data TIME = TIME
instance PqOid TIME where
  pqoid TIME   = Oid 1083

-- TIMESTAMPOID
data TIMESTAMP = TIMESTAMP
instance PqOid TIMESTAMP where
  pqoid TIMESTAMP   = Oid 1114

-- TIMESTAMPTZOID
data TIMESTAMPTZ = TIMESTAMPTZ
instance PqOid TIMESTAMPTZ where
  pqoid TIMESTAMPTZ   = Oid 1184

-- INTERVALOID
data INTERVAL = INTERVAL
instance PqOid INTERVAL where
  pqoid INTERVAL   = Oid 1186

-- TIMETZOID
data TIMETZ = TIMETZ
instance PqOid TIMETZ where
  pqoid TIMETZ   = Oid 1266

-- BITOID
data BIT = BIT
instance PqOid BIT where
  pqoid BIT   = Oid 1560

-- VARBITOID
data VARBIT = VARBIT
instance PqOid VARBIT where
  pqoid VARBIT   = Oid 1562

-- NUMERICOID
data NUMERIC = NUMERIC
instance PqOid NUMERIC where
  pqoid NUMERIC   = Oid 1700

-- REFCURSOROID
data REFCURSOR = REFCURSOR
instance PqOid REFCURSOR where
  pqoid REFCURSOR   = Oid 1790

-- REGPROCEDUREOID
data REGPROCEDURE = REGPROCEDURE
instance PqOid REGPROCEDURE where
  pqoid REGPROCEDURE   = Oid 2202

-- REGOPEROID
data REGOPER = REGOPER
instance PqOid REGOPER where
  pqoid REGOPER   = Oid 2203

-- REGOPERATOROID
data REGOPERATOR = REGOPERATOR
instance PqOid REGOPERATOR where
  pqoid REGOPERATOR   = Oid 2204

-- REGCLASSOID
data REGCLASS = REGCLASS
instance PqOid REGCLASS where
  pqoid REGCLASS   = Oid 2205

-- REGTYPEOID
data REGTYPE = REGTYPE
instance PqOid REGTYPE where
  pqoid REGTYPE   = Oid 2206

-- REGTYPEARRAYOID
data REGTYPEARRAY = REGTYPEARRAY
instance PqOid REGTYPEARRAY where
  pqoid REGTYPEARRAY   = Oid 2211

-- TSVECTOROID
data TSVECTOR = TSVECTOR
instance PqOid TSVECTOR where
  pqoid TSVECTOR   = Oid 3614

-- GTSVECTOROID
data GTSVECTOR = GTSVECTOR
instance PqOid GTSVECTOR where
  pqoid GTSVECTOR   = Oid 3642

-- TSQUERYOID
data TSQUERY = TSQUERY
instance PqOid TSQUERY where
  pqoid TSQUERY   = Oid 3615

-- REGCONFIGOID
data REGCONFIG = REGCONFIG
instance PqOid REGCONFIG where
  pqoid REGCONFIG   = Oid 3734

-- REGDICTIONARYOID
data REGDICTIONARY = REGDICTIONARY
instance PqOid REGDICTIONARY where
  pqoid REGDICTIONARY   = Oid 3769

-- INT4RANGEOID
data INT4RANGE = INT4RANGE
instance PqOid INT4RANGE where
  pqoid INT4RANGE   = Oid 3904

-- RECORDOID
data RECORD = RECORD
instance PqOid RECORD where
  pqoid RECORD   = Oid 2249

-- RECORDARRAYOID
data RECORDARRAY = RECORDARRAY
instance PqOid RECORDARRAY where
  pqoid RECORDARRAY   = Oid 2287

-- CSTRINGOID
data CSTRING = CSTRING
instance PqOid CSTRING where
  pqoid CSTRING   = Oid 2275

-- ANYOID
data ANY = ANY
instance PqOid ANY where
  pqoid ANY   = Oid 2276

-- ANYARRAYOID
data ANYARRAY = ANYARRAY
instance PqOid ANYARRAY where
  pqoid ANYARRAY   = Oid 2277

-- VOIDOID
data VOID = VOID
instance PqOid VOID where
  pqoid VOID   = Oid 2278

-- TRIGGEROID
data TRIGGER = TRIGGER
instance PqOid TRIGGER where
  pqoid TRIGGER   = Oid 2279

-- EVTTRIGGEROID
data EVTTRIGGER = EVTTRIGGER
instance PqOid EVTTRIGGER where
  pqoid EVTTRIGGER   = Oid 3838

-- LANGUAGE_HANDLEROID
data LANGUAGE_HANDLER = LANGUAGE_HANDLER
instance PqOid LANGUAGE_HANDLER where
  pqoid LANGUAGE_HANDLER   = Oid 2280

-- INTERNALOID
data INTERNAL = INTERNAL
instance PqOid INTERNAL where
  pqoid INTERNAL   = Oid 2281

-- OPAQUEOID
data OPAQUE = OPAQUE
instance PqOid OPAQUE where
  pqoid OPAQUE   = Oid 2282

-- ANYELEMENTOID
data ANYELEMENT = ANYELEMENT
instance PqOid ANYELEMENT where
  pqoid ANYELEMENT   = Oid 2283

-- ANYNONARRAYOID
data ANYNONARRAY = ANYNONARRAY
instance PqOid ANYNONARRAY where
  pqoid ANYNONARRAY   = Oid 2776

-- ANYENUMOID
data ANYENUM = ANYENUM
instance PqOid ANYENUM where
  pqoid ANYENUM   = Oid 3500

-- FDW_HANDLEROID
data FDW_HANDLER = FDW_HANDLER
instance PqOid FDW_HANDLER where
  pqoid FDW_HANDLER   = Oid 3115

-- ANYRANGEOID
data ANYRANGE = ANYRANGE
instance PqOid ANYRANGE where
  pqoid ANYRANGE   = Oid 3831

-- UUID
data UUID = UUID
instance PqOid UUID where
  pqoid UUID   = Oid 2950
