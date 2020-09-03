List<String> tradCodes = [ 'AAMRANET', 'AAMRATECH', 'ABB1STMF',
       'ABBANK', 'ACFL', 'ACI', 'ACIFORMULA', 'ACMELAB', 'ACTIVEFINE',
       'ADNTEL', 'ADVENT', 'AFCAGRO', 'AFTABAUTO', 'AGNISYSL', 'AGRANINS',
       'AIBL1STIMF', 'AIL', 'AL-HAJTEX', 'ALARABANK', 'ALIF', 'ALLTEX',
       'AMANFEED', 'AMBEEPHA', 'AMCL(PRAN)', 'ANLIMAYARN', 'ANWARGALV',
       'APEXFOODS', 'APEXFOOT', 'APEXSPINN', 'APEXTANRY', 'APOLOISPAT',
       'APSCLBOND', 'ARAMIT', 'ARAMITCEM', 'ARGONDENIM', 'ASIAINS',
       'ASIAPACINS', 'ATCSLGF', 'ATLASBANG', 'AZIZPIPES', 'BANGAS',
       'BANKASIA', 'BARKAPOWER', 'BATASHOE', 'BATBC', 'BAYLEASING', 'BBS',
       'BBSCABLES', 'BDAUTOCA', 'BDCOM', 'BDFINANCE', 'BDLAMPS',
       'BDSERVICE', 'BDTHAI', 'BDWELDING', 'BEACHHATCH', 'BEACONPHAR',
       'BENGALWTL', 'BERGERPBL', 'BEXIMCO', 'BGIC', 'BIFC', 'BNICL',
       'BPML', 'BRACBANK', 'BSC', 'BSCCL', 'BSRMLTD', 'BSRMSTEEL',
       'BXPHARMA', 'BXSYNTH', 'CAPMBDBLMF', 'CAPMIBBLMF', 'CENTRALINS',
       'CENTRALPHL', 'CITYBANK', 'CITYGENINS', 'CNATEX', 'CONFIDCEM',
       'CONTININS', 'COPPERTECH', 'CVOPRL', 'DACCADYE', 'DAFODILCOM',
       'DBH', 'DBH1STMF', 'DEBARACEM', 'DEBBDLUGG', 'DEBBDWELD',
       'DEBBDZIPP', 'DEBBXDENIM', 'DEBBXFISH', 'DEBBXKNI', 'DEBBXTEX',
       'DELTALIFE', 'DELTASPINN', 'DESCO', 'DESHBANDHU', 'DHAKABANK',
       'DHAKAINS', 'DOREENPWR', 'DSHGARME', 'DSSL', 'DULAMIACOT',
       'DUTCHBANGL', 'EASTERNINS', 'EASTLAND', 'EASTRNLUB', 'EBL',
       'EBL1STMF', 'EBLNRBMF', 'ECABLES', 'EHL', 'EMERALDOIL', 'ENVOYTEX',
       'ESQUIRENIT', 'ETL', 'EXIM1STMF', 'EXIMBANK', 'FAMILYTEX',
       'FARCHEM', 'FAREASTFIN', 'FAREASTLIF', 'FASFIN', 'FBFIF',
       'FEDERALINS', 'FEKDIL', 'FINEFOODS', 'FIRSTFIN', 'FIRSTSBANK',
       'FORTUNE', 'FUWANGCER', 'FUWANGFOOD', 'GBBPOWER', 'GEMINISEA',
       'GENEXIL', 'GENNEXT', 'GHAIL', 'GHCL', 'GLAXOSMITH', 'GLOBALINS',
       'GOLDENSON', 'GP', 'GPHISPAT', 'GQBALLPEN', 'GRAMEENS2',
       'GREENDELMF', 'GREENDELT', 'GSPFINANCE', 'HAKKANIPUL',
       'HEIDELBCEM', 'HFL', 'HRTEX', 'HWAWELLTEX', 'IBBLPBOND', 'IBNSINA',
       'IBP', 'ICB', 'ICB3RDNRB', 'ICBAGRANI1', 'ICBAMCL2ND',
       'ICBEPMF1S1', 'ICBIBANK', 'ICBSONALI1', 'IDLC', 'IFADAUTOS',
       'IFIC', 'IFIC1STMF', 'IFILISLMF1', 'ILFSL', 'IMAMBUTTON', 'INTECH',
       'INTRACO', 'IPDC', 'ISLAMIBANK', 'ISLAMICFIN', 'ISLAMIINS',
       'ISNLTD', 'ITC', 'JAMUNABANK', 'JAMUNAOIL', 'JANATAINS', 'JMISMDL',
       'JUTESPINN', 'KARNAPHULI', 'KAY&QUE', 'KBPPWBIL', 'KDSALTD',
       'KEYACOSMET', 'KOHINOOR', 'KPCL', 'KPPL', 'KTL', 'LANKABAFIN',
       'LEGACYFOOT', 'LHBL', 'LIBRAINFU', 'LINDEBD', 'LRGLOBMF1',
       'MAKSONSPIN', 'MALEKSPIN', 'MARICO', 'MATINSPINN', 'MBL1STMF',
       'MEGCONMILK', 'MEGHNACEM', 'MEGHNALIFE', 'MEGHNAPET', 'MERCANBANK',
       'MERCINS', 'METROSPIN', 'MHSML', 'MICEMENT', 'MIDASFIN',
       'MIRACLEIND', 'MITHUNKNIT', 'MJLBD', 'MLDYEING', 'MONNOCERA',
       'MONNOSTAF', 'MPETROLEUM', 'MTB', 'NAHEEACP', 'NATLIFEINS',
       'NAVANACNG', 'NBL', 'NCCBANK', 'NCCBLMF1', 'NEWLINE', 'NFML',
       'NHFIL', 'NITOLINS', 'NLI1STMF', 'NORTHERN', 'NORTHRNINS',
       'NPOLYMAR', 'NTC', 'NTLTUBES', 'NURANI', 'OAL', 'OIMEX', 'OLYMPIC',
       'ONEBANKLTD', 'ORIONINFU', 'ORIONPHARM', 'PADMALIFE', 'PADMAOIL',
       'PARAMOUNT', 'PDL', 'PENINSULA', 'PEOPLESINS', 'PF1STMF',
       'PHARMAID', 'PHENIXINS', 'PHOENIXFIN', 'PHPMF1', 'PIONEERINS',
       'PLFSL', 'POPULAR1MF', 'POPULARLIF', 'POWERGRID', 'PRAGATIINS',
       'PRAGATILIF', 'PREMIERBAN', 'PREMIERCEM', 'PREMIERLEA',
       'PRIME1ICBA', 'PRIMEBANK', 'PRIMEFIN', 'PRIMEINSUR', 'PRIMELIFE',
       'PRIMETEX', 'PROGRESLIF', 'PROVATIINS', 'PTL', 'PUBALIBANK',
       'PURABIGEN', 'QUASEMIND', 'QUEENSOUTH', 'RAHIMTEXT', 'RAKCERAMIC',
       'RANFOUNDRY', 'RDFOOD', 'RECKITTBEN', 'REGENTTEX', 'RELIANCE1',
       'RELIANCINS', 'RENATA', 'RENWICKJA', 'REPUBLIC', 'RINGSHINE',
       'RNSPIN', 'RSRMSTEEL', 'RUNNERAUTO', 'RUPALIBANK', 'RUPALIINS',
       'RUPALILIFE', 'SAFKOSPINN', 'SAIFPOWER', 'SAIHAMCOT', 'SAIHAMTEX',
       'SALAMCRST', 'SALVOCHEM', 'SAMATALETH', 'SAMORITA', 'SANDHANINS',
       'SAPORTL', 'SAVAREFR', 'SEAPEARL', 'SEBL1STMF', 'SEMLFBSLGF',
       'SEMLIBBLSF', 'SEMLLECMF', 'SHAHJABANK', 'SHASHADNIM', 'SHEPHERD',
       'SHURWID', 'SHYAMPSUG', 'SIBL', 'SILCOPHL', 'SILVAPHL', 'SIMTEX',
       'SINGERBD', 'SINOBANGLA', 'SKTRIMS', 'SONALIANSH', 'SONALIPAPR',
       'SONARBAINS', 'SONARGAON', 'SOUTHEASTB', 'SPCERAMICS', 'SPCL',
       'SQUARETEXT', 'SQURPHARMA', 'SSSTEEL', 'STANCERAM', 'STANDARINS',
       'STANDBANKL', 'STYLECRAFT', 'SUMITPOWER', 'SUNLIFEINS', 'T05Y0715',
       'T05Y0815', 'T10Y0117', 'T10Y0118', 'T10Y0119', 'T10Y0121',
       'T10Y0214', 'T10Y0215', 'T10Y0216', 'T10Y0217', 'T10Y0218',
       'T10Y0219', 'T10Y0220', 'T10Y0221', 'T10Y0317', 'T10Y0318',
       'T10Y0319', 'T10Y0320', 'T10Y0321', 'T10Y0414', 'T10Y0415',
       'T10Y0416', 'T10Y0418', 'T10Y0419', 'T10Y0420', 'T10Y0421',
       'T10Y0517', 'T10Y0518', 'T10Y0519', 'T10Y0520', 'T10Y0521',
       'T10Y0614', 'T10Y0615', 'T10Y0616', 'T10Y0617', 'T10Y0618',
       'T10Y0619', 'T10Y0620', 'T10Y0621', 'T10Y0717', 'T10Y0718',
       'T10Y0719', 'T10Y0720', 'T10Y0721', 'T10Y0814', 'T10Y0816',
       'T10Y0817', 'T10Y0818', 'T10Y0819', 'T10Y0820', 'T10Y0821',
       'T10Y0916', 'T10Y0917', 'T10Y0918', 'T10Y0919', 'T10Y0920',
       'T10Y0921', 'T10Y1014', 'T10Y1016', 'T10Y1017', 'T10Y1018',
       'T10Y1019', 'T10Y1116', 'T10Y1117', 'T10Y1118', 'T10Y1120',
       'T10Y1213', 'T10Y1214', 'T10Y1215', 'T10Y1216', 'T10Y1217',
       'T10Y1218', 'T10Y1219', 'T10Y1220', 'T15Y0123', 'T15Y0124',
       'T15Y0125', 'T15Y0223', 'T15Y0224', 'T15Y0225', 'T15Y0226',
       'T15Y0323', 'T15Y0324', 'T15Y0325', 'T15Y0326', 'T15Y0423',
       'T15Y0424', 'T15Y0425', 'T15Y0426', 'T15Y0523', 'T15Y0524',
       'T15Y0525', 'T15Y0526', 'T15Y0623', 'T15Y0624', 'T15Y0625',
       'T15Y0626', 'T15Y0722', 'T15Y0723', 'T15Y0724', 'T15Y0725',
       'T15Y0822', 'T15Y0823', 'T15Y0824', 'T15Y0825', 'T15Y0826',
       'T15Y0922', 'T15Y0923', 'T15Y0924', 'T15Y0925', 'T15Y0926',
       'T15Y1022', 'T15Y1023', 'T15Y1024', 'T15Y1025', 'T15Y1122',
       'T15Y1123', 'T15Y1125', 'T15Y1222', 'T15Y1223', 'T15Y1224',
       'T15Y1225', 'T20Y0128', 'T20Y0129', 'T20Y0131', 'T20Y0228',
       'T20Y0229', 'T20Y0230', 'T20Y0231', 'T20Y0328', 'T20Y0329',
       'T20Y0330', 'T20Y0428', 'T20Y0429', 'T20Y0430', 'T20Y0431',
       'T20Y0528', 'T20Y0530', 'T20Y0531', 'T20Y0628', 'T20Y0629',
       'T20Y0630', 'T20Y0631', 'T20Y0727', 'T20Y0728', 'T20Y0729',
       'T20Y0730', 'T20Y0731', 'T20Y0827', 'T20Y0828', 'T20Y0829',
       'T20Y0830', 'T20Y0831', 'T20Y0927', 'T20Y0928', 'T20Y0930',
       'T20Y0931', 'T20Y1027', 'T20Y1028', 'T20Y1029', 'T20Y1030',
       'T20Y1127', 'T20Y1128', 'T20Y1130', 'T20Y1227', 'T20Y1228',
       'T20Y1229', 'T20Y1230', 'T5Y0112', 'T5Y0113', 'T5Y0114', 'T5Y0115',
       'T5Y0116', 'T5Y0212', 'T5Y0213', 'T5Y0214', 'T5Y0215', 'T5Y0216',
       'T5Y0313', 'T5Y0314', 'T5Y0315', 'T5Y0316', 'T5Y0412', 'T5Y0414',
       'T5Y0415', 'T5Y0416', 'T5Y0514', 'T5Y0516', 'T5Y0613', 'T5Y0615',
       'T5Y0616', 'T5Y0712', 'T5Y0713', 'T5Y0714', 'T5Y0716', 'T5Y0811',
       'T5Y0812', 'T5Y0813', 'T5Y0814', 'T5Y0816', 'T5Y0911', 'T5Y0912',
       'T5Y0913', 'T5Y0914', 'T5Y0915', 'T5Y0916', 'T5Y1011', 'T5Y1012',
       'T5Y1013', 'T5Y1014', 'T5Y1015', 'T5Y1111', 'T5Y1112', 'T5Y1113',
       'T5Y1114', 'T5Y1115', 'T5Y1211', 'T5Y1212', 'T5Y1213', 'T5Y1214',
       'T5Y1215', 'TAKAFULINS', 'TALLUSPIN', 'TITASGAS', 'TOSRIFA',
       'TRUSTB1MF', 'TRUSTBANK', 'TUNGHAI', 'UCB', 'UNIONCAP',
       'UNIQUEHRL', 'UNITEDAIR', 'UNITEDFIN', 'UNITEDINS', 'UPGDCL',
       'USMANIAGL', 'UTTARABANK', 'UTTARAFIN', 'VAMLBDMF1', 'VAMLRBBF',
       'VFSTDL', 'WATACHEM', 'WMSHIPYARD', 'YPL', 'ZAHEENSPIN',
       'ZAHINTEX', 'ZEALBANGLA'];