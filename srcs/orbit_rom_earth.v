module orbit_rom_earth (
    input wire        [8:0]  angle_index,  // 0-359
    output reg signed [10:0] x_out,
    output reg signed [10:0] y_out
);

always @(*) begin
    case (angle_index)
       9'd0: begin x_out = 1460; y_out = 540; end
       9'd1: begin x_out = 1459; y_out = 531; end
       9'd2: begin x_out = 1459; y_out = 522; end
       9'd3: begin x_out = 1459; y_out = 513; end
       9'd4: begin x_out = 1458; y_out = 505; end
       9'd5: begin x_out = 1458; y_out = 496; end
       9'd6: begin x_out = 1457; y_out = 487; end
       9'd7: begin x_out = 1456; y_out = 479; end
       9'd8: begin x_out = 1455; y_out = 470; end
       9'd9: begin x_out = 1453; y_out = 461; end
       9'd10: begin x_out = 1452; y_out = 453; end
       9'd11: begin x_out = 1450; y_out = 444; end
       9'd12: begin x_out = 1449; y_out = 436; end
       9'd13: begin x_out = 1447; y_out = 427; end
       9'd14: begin x_out = 1445; y_out = 419; end
       9'd15: begin x_out = 1442; y_out = 410; end
       9'd16: begin x_out = 1440; y_out = 402; end
       9'd17: begin x_out = 1438; y_out = 393; end
       9'd18: begin x_out = 1435; y_out = 385; end
       9'd19: begin x_out = 1432; y_out = 377; end
       9'd20: begin x_out = 1429; y_out = 368; end
       9'd21: begin x_out = 1426; y_out = 360; end
       9'd22: begin x_out = 1423; y_out = 352; end
       9'd23: begin x_out = 1420; y_out = 344; end
       9'd24: begin x_out = 1416; y_out = 336; end
       9'd25: begin x_out = 1413; y_out = 328; end
       9'd26: begin x_out = 1409; y_out = 320; end
       9'd27: begin x_out = 1405; y_out = 313; end
       9'd28: begin x_out = 1401; y_out = 305; end
       9'd29: begin x_out = 1397; y_out = 297; end
       9'd30: begin x_out = 1393; y_out = 290; end
       9'd31: begin x_out = 1388; y_out = 282; end
       9'd32: begin x_out = 1384; y_out = 275; end
       9'd33: begin x_out = 1379; y_out = 267; end
       9'd34: begin x_out = 1374; y_out = 260; end
       9'd35: begin x_out = 1369; y_out = 253; end
       9'd36: begin x_out = 1364; y_out = 246; end
       9'd37: begin x_out = 1359; y_out = 239; end
       9'd38: begin x_out = 1354; y_out = 232; end
       9'd39: begin x_out = 1348; y_out = 225; end
       9'd40: begin x_out = 1343; y_out = 218; end
       9'd41: begin x_out = 1337; y_out = 211; end
       9'd42: begin x_out = 1331; y_out = 205; end
       9'd43: begin x_out = 1325; y_out = 199; end
       9'd44: begin x_out = 1319; y_out = 192; end
       9'd45: begin x_out = 1313; y_out = 186; end
       9'd46: begin x_out = 1307; y_out = 180; end
       9'd47: begin x_out = 1300; y_out = 174; end
       9'd48: begin x_out = 1294; y_out = 168; end
       9'd49: begin x_out = 1288; y_out = 162; end
       9'd50: begin x_out = 1281; y_out = 156; end
       9'd51: begin x_out = 1274; y_out = 151; end
       9'd52: begin x_out = 1267; y_out = 145; end
       9'd53: begin x_out = 1260; y_out = 140; end
       9'd54: begin x_out = 1253; y_out = 135; end
       9'd55: begin x_out = 1246; y_out = 130; end
       9'd56: begin x_out = 1239; y_out = 125; end
       9'd57: begin x_out = 1232; y_out = 120; end
       9'd58: begin x_out = 1224; y_out = 115; end
       9'd59: begin x_out = 1217; y_out = 111; end
       9'd60: begin x_out = 1210; y_out = 106; end
       9'd61: begin x_out = 1202; y_out = 102; end
       9'd62: begin x_out = 1194; y_out = 98; end
       9'd63: begin x_out = 1186; y_out = 94; end
       9'd64: begin x_out = 1179; y_out = 90; end
       9'd65: begin x_out = 1171; y_out = 86; end
       9'd66: begin x_out = 1163; y_out = 83; end
       9'd67: begin x_out = 1155; y_out = 79; end
       9'd68: begin x_out = 1147; y_out = 76; end
       9'd69: begin x_out = 1139; y_out = 73; end
       9'd70: begin x_out = 1131; y_out = 70; end
       9'd71: begin x_out = 1122; y_out = 67; end
       9'd72: begin x_out = 1114; y_out = 64; end
       9'd73: begin x_out = 1106; y_out = 61; end
       9'd74: begin x_out = 1097; y_out = 59; end
       9'd75: begin x_out = 1089; y_out = 57; end
       9'd76: begin x_out = 1080; y_out = 54; end
       9'd77: begin x_out = 1072; y_out = 52; end
       9'd78: begin x_out = 1063; y_out = 50; end
       9'd79: begin x_out = 1055; y_out = 49; end
       9'd80: begin x_out = 1046; y_out = 47; end
       9'd81: begin x_out = 1038; y_out = 46; end
       9'd82: begin x_out = 1029; y_out = 44; end
       9'd83: begin x_out = 1020; y_out = 43; end
       9'd84: begin x_out = 1012; y_out = 42; end
       9'd85: begin x_out = 1003; y_out = 41; end
       9'd86: begin x_out = 994; y_out = 41; end
       9'd87: begin x_out = 986; y_out = 40; end
       9'd88: begin x_out = 977; y_out = 40; end
       9'd89: begin x_out = 968; y_out = 40; end
       9'd90: begin x_out = 960; y_out = 40; end
       9'd91: begin x_out = 951; y_out = 40; end
       9'd92: begin x_out = 942; y_out = 40; end
       9'd93: begin x_out = 933; y_out = 40; end
       9'd94: begin x_out = 925; y_out = 41; end
       9'd95: begin x_out = 916; y_out = 41; end
       9'd96: begin x_out = 907; y_out = 42; end
       9'd97: begin x_out = 899; y_out = 43; end
       9'd98: begin x_out = 890; y_out = 44; end
       9'd99: begin x_out = 881; y_out = 46; end
       9'd100: begin x_out = 873; y_out = 47; end
       9'd101: begin x_out = 864; y_out = 49; end
       9'd102: begin x_out = 856; y_out = 50; end
       9'd103: begin x_out = 847; y_out = 52; end
       9'd104: begin x_out = 839; y_out = 54; end
       9'd105: begin x_out = 830; y_out = 57; end
       9'd106: begin x_out = 822; y_out = 59; end
       9'd107: begin x_out = 813; y_out = 61; end
       9'd108: begin x_out = 805; y_out = 64; end
       9'd109: begin x_out = 797; y_out = 67; end
       9'd110: begin x_out = 788; y_out = 70; end
       9'd111: begin x_out = 780; y_out = 73; end
       9'd112: begin x_out = 772; y_out = 76; end
       9'd113: begin x_out = 764; y_out = 79; end
       9'd114: begin x_out = 756; y_out = 83; end
       9'd115: begin x_out = 748; y_out = 86; end
       9'd116: begin x_out = 740; y_out = 90; end
       9'd117: begin x_out = 733; y_out = 94; end
       9'd118: begin x_out = 725; y_out = 98; end
       9'd119: begin x_out = 717; y_out = 102; end
       9'd120: begin x_out = 710; y_out = 106; end
       9'd121: begin x_out = 702; y_out = 111; end
       9'd122: begin x_out = 695; y_out = 115; end
       9'd123: begin x_out = 687; y_out = 120; end
       9'd124: begin x_out = 680; y_out = 125; end
       9'd125: begin x_out = 673; y_out = 130; end
       9'd126: begin x_out = 666; y_out = 135; end
       9'd127: begin x_out = 659; y_out = 140; end
       9'd128: begin x_out = 652; y_out = 145; end
       9'd129: begin x_out = 645; y_out = 151; end
       9'd130: begin x_out = 638; y_out = 156; end
       9'd131: begin x_out = 631; y_out = 162; end
       9'd132: begin x_out = 625; y_out = 168; end
       9'd133: begin x_out = 619; y_out = 174; end
       9'd134: begin x_out = 612; y_out = 180; end
       9'd135: begin x_out = 606; y_out = 186; end
       9'd136: begin x_out = 600; y_out = 192; end
       9'd137: begin x_out = 594; y_out = 199; end
       9'd138: begin x_out = 588; y_out = 205; end
       9'd139: begin x_out = 582; y_out = 211; end
       9'd140: begin x_out = 576; y_out = 218; end
       9'd141: begin x_out = 571; y_out = 225; end
       9'd142: begin x_out = 565; y_out = 232; end
       9'd143: begin x_out = 560; y_out = 239; end
       9'd144: begin x_out = 555; y_out = 246; end
       9'd145: begin x_out = 550; y_out = 253; end
       9'd146: begin x_out = 545; y_out = 260; end
       9'd147: begin x_out = 540; y_out = 267; end
       9'd148: begin x_out = 535; y_out = 275; end
       9'd149: begin x_out = 531; y_out = 282; end
       9'd150: begin x_out = 526; y_out = 290; end
       9'd151: begin x_out = 522; y_out = 297; end
       9'd152: begin x_out = 518; y_out = 305; end
       9'd153: begin x_out = 514; y_out = 313; end
       9'd154: begin x_out = 510; y_out = 320; end
       9'd155: begin x_out = 506; y_out = 328; end
       9'd156: begin x_out = 503; y_out = 336; end
       9'd157: begin x_out = 499; y_out = 344; end
       9'd158: begin x_out = 496; y_out = 352; end
       9'd159: begin x_out = 493; y_out = 360; end
       9'd160: begin x_out = 490; y_out = 368; end
       9'd161: begin x_out = 487; y_out = 377; end
       9'd162: begin x_out = 484; y_out = 385; end
       9'd163: begin x_out = 481; y_out = 393; end
       9'd164: begin x_out = 479; y_out = 402; end
       9'd165: begin x_out = 477; y_out = 410; end
       9'd166: begin x_out = 474; y_out = 419; end
       9'd167: begin x_out = 472; y_out = 427; end
       9'd168: begin x_out = 470; y_out = 436; end
       9'd169: begin x_out = 469; y_out = 444; end
       9'd170: begin x_out = 467; y_out = 453; end
       9'd171: begin x_out = 466; y_out = 461; end
       9'd172: begin x_out = 464; y_out = 470; end
       9'd173: begin x_out = 463; y_out = 479; end
       9'd174: begin x_out = 462; y_out = 487; end
       9'd175: begin x_out = 461; y_out = 496; end
       9'd176: begin x_out = 461; y_out = 505; end
       9'd177: begin x_out = 460; y_out = 513; end
       9'd178: begin x_out = 460; y_out = 522; end
       9'd179: begin x_out = 460; y_out = 531; end
       9'd180: begin x_out = 460; y_out = 539; end
       9'd181: begin x_out = 460; y_out = 548; end
       9'd182: begin x_out = 460; y_out = 557; end
       9'd183: begin x_out = 460; y_out = 566; end
       9'd184: begin x_out = 461; y_out = 574; end
       9'd185: begin x_out = 461; y_out = 583; end
       9'd186: begin x_out = 462; y_out = 592; end
       9'd187: begin x_out = 463; y_out = 600; end
       9'd188: begin x_out = 464; y_out = 609; end
       9'd189: begin x_out = 466; y_out = 618; end
       9'd190: begin x_out = 467; y_out = 626; end
       9'd191: begin x_out = 469; y_out = 635; end
       9'd192: begin x_out = 470; y_out = 643; end
       9'd193: begin x_out = 472; y_out = 652; end
       9'd194: begin x_out = 474; y_out = 660; end
       9'd195: begin x_out = 477; y_out = 669; end
       9'd196: begin x_out = 479; y_out = 677; end
       9'd197: begin x_out = 481; y_out = 686; end
       9'd198: begin x_out = 484; y_out = 694; end
       9'd199: begin x_out = 487; y_out = 702; end
       9'd200: begin x_out = 490; y_out = 711; end
       9'd201: begin x_out = 493; y_out = 719; end
       9'd202: begin x_out = 496; y_out = 727; end
       9'd203: begin x_out = 499; y_out = 735; end
       9'd204: begin x_out = 503; y_out = 743; end
       9'd205: begin x_out = 506; y_out = 751; end
       9'd206: begin x_out = 510; y_out = 759; end
       9'd207: begin x_out = 514; y_out = 766; end
       9'd208: begin x_out = 518; y_out = 774; end
       9'd209: begin x_out = 522; y_out = 782; end
       9'd210: begin x_out = 526; y_out = 790; end
       9'd211: begin x_out = 531; y_out = 797; end
       9'd212: begin x_out = 535; y_out = 804; end
       9'd213: begin x_out = 540; y_out = 812; end
       9'd214: begin x_out = 545; y_out = 819; end
       9'd215: begin x_out = 550; y_out = 826; end
       9'd216: begin x_out = 555; y_out = 833; end
       9'd217: begin x_out = 560; y_out = 840; end
       9'd218: begin x_out = 565; y_out = 847; end
       9'd219: begin x_out = 571; y_out = 854; end
       9'd220: begin x_out = 576; y_out = 861; end
       9'd221: begin x_out = 582; y_out = 868; end
       9'd222: begin x_out = 588; y_out = 874; end
       9'd223: begin x_out = 594; y_out = 880; end
       9'd224: begin x_out = 600; y_out = 887; end
       9'd225: begin x_out = 606; y_out = 893; end
       9'd226: begin x_out = 612; y_out = 899; end
       9'd227: begin x_out = 619; y_out = 905; end
       9'd228: begin x_out = 625; y_out = 911; end
       9'd229: begin x_out = 631; y_out = 917; end
       9'd230: begin x_out = 638; y_out = 923; end
       9'd231: begin x_out = 645; y_out = 928; end
       9'd232: begin x_out = 652; y_out = 934; end
       9'd233: begin x_out = 659; y_out = 939; end
       9'd234: begin x_out = 666; y_out = 944; end
       9'd235: begin x_out = 673; y_out = 949; end
       9'd236: begin x_out = 680; y_out = 954; end
       9'd237: begin x_out = 687; y_out = 959; end
       9'd238: begin x_out = 695; y_out = 964; end
       9'd239: begin x_out = 702; y_out = 968; end
       9'd240: begin x_out = 709; y_out = 973; end
       9'd241: begin x_out = 717; y_out = 977; end
       9'd242: begin x_out = 725; y_out = 981; end
       9'd243: begin x_out = 733; y_out = 985; end
       9'd244: begin x_out = 740; y_out = 989; end
       9'd245: begin x_out = 748; y_out = 993; end
       9'd246: begin x_out = 756; y_out = 996; end
       9'd247: begin x_out = 764; y_out = 1000; end
       9'd248: begin x_out = 772; y_out = 1003; end
       9'd249: begin x_out = 780; y_out = 1006; end
       9'd250: begin x_out = 788; y_out = 1009; end
       9'd251: begin x_out = 797; y_out = 1012; end
       9'd252: begin x_out = 805; y_out = 1015; end
       9'd253: begin x_out = 813; y_out = 1018; end
       9'd254: begin x_out = 822; y_out = 1020; end
       9'd255: begin x_out = 830; y_out = 1022; end
       9'd256: begin x_out = 839; y_out = 1025; end
       9'd257: begin x_out = 847; y_out = 1027; end
       9'd258: begin x_out = 856; y_out = 1029; end
       9'd259: begin x_out = 864; y_out = 1030; end
       9'd260: begin x_out = 873; y_out = 1032; end
       9'd261: begin x_out = 881; y_out = 1033; end
       9'd262: begin x_out = 890; y_out = 1035; end
       9'd263: begin x_out = 899; y_out = 1036; end
       9'd264: begin x_out = 907; y_out = 1037; end
       9'd265: begin x_out = 916; y_out = 1038; end
       9'd266: begin x_out = 925; y_out = 1038; end
       9'd267: begin x_out = 933; y_out = 1039; end
       9'd268: begin x_out = 942; y_out = 1039; end
       9'd269: begin x_out = 951; y_out = 1039; end
       9'd270: begin x_out = 959; y_out = 1040; end
       9'd271: begin x_out = 968; y_out = 1039; end
       9'd272: begin x_out = 977; y_out = 1039; end
       9'd273: begin x_out = 986; y_out = 1039; end
       9'd274: begin x_out = 994; y_out = 1038; end
       9'd275: begin x_out = 1003; y_out = 1038; end
       9'd276: begin x_out = 1012; y_out = 1037; end
       9'd277: begin x_out = 1020; y_out = 1036; end
       9'd278: begin x_out = 1029; y_out = 1035; end
       9'd279: begin x_out = 1038; y_out = 1033; end
       9'd280: begin x_out = 1046; y_out = 1032; end
       9'd281: begin x_out = 1055; y_out = 1030; end
       9'd282: begin x_out = 1063; y_out = 1029; end
       9'd283: begin x_out = 1072; y_out = 1027; end
       9'd284: begin x_out = 1080; y_out = 1025; end
       9'd285: begin x_out = 1089; y_out = 1022; end
       9'd286: begin x_out = 1097; y_out = 1020; end
       9'd287: begin x_out = 1106; y_out = 1018; end
       9'd288: begin x_out = 1114; y_out = 1015; end
       9'd289: begin x_out = 1122; y_out = 1012; end
       9'd290: begin x_out = 1131; y_out = 1009; end
       9'd291: begin x_out = 1139; y_out = 1006; end
       9'd292: begin x_out = 1147; y_out = 1003; end
       9'd293: begin x_out = 1155; y_out = 1000; end
       9'd294: begin x_out = 1163; y_out = 996; end
       9'd295: begin x_out = 1171; y_out = 993; end
       9'd296: begin x_out = 1179; y_out = 989; end
       9'd297: begin x_out = 1186; y_out = 985; end
       9'd298: begin x_out = 1194; y_out = 981; end
       9'd299: begin x_out = 1202; y_out = 977; end
       9'd300: begin x_out = 1210; y_out = 973; end
       9'd301: begin x_out = 1217; y_out = 968; end
       9'd302: begin x_out = 1224; y_out = 964; end
       9'd303: begin x_out = 1232; y_out = 959; end
       9'd304: begin x_out = 1239; y_out = 954; end
       9'd305: begin x_out = 1246; y_out = 949; end
       9'd306: begin x_out = 1253; y_out = 944; end
       9'd307: begin x_out = 1260; y_out = 939; end
       9'd308: begin x_out = 1267; y_out = 934; end
       9'd309: begin x_out = 1274; y_out = 928; end
       9'd310: begin x_out = 1281; y_out = 923; end
       9'd311: begin x_out = 1288; y_out = 917; end
       9'd312: begin x_out = 1294; y_out = 911; end
       9'd313: begin x_out = 1300; y_out = 905; end
       9'd314: begin x_out = 1307; y_out = 899; end
       9'd315: begin x_out = 1313; y_out = 893; end
       9'd316: begin x_out = 1319; y_out = 887; end
       9'd317: begin x_out = 1325; y_out = 880; end
       9'd318: begin x_out = 1331; y_out = 874; end
       9'd319: begin x_out = 1337; y_out = 868; end
       9'd320: begin x_out = 1343; y_out = 861; end
       9'd321: begin x_out = 1348; y_out = 854; end
       9'd322: begin x_out = 1354; y_out = 847; end
       9'd323: begin x_out = 1359; y_out = 840; end
       9'd324: begin x_out = 1364; y_out = 833; end
       9'd325: begin x_out = 1369; y_out = 826; end
       9'd326: begin x_out = 1374; y_out = 819; end
       9'd327: begin x_out = 1379; y_out = 812; end
       9'd328: begin x_out = 1384; y_out = 804; end
       9'd329: begin x_out = 1388; y_out = 797; end
       9'd330: begin x_out = 1393; y_out = 790; end
       9'd331: begin x_out = 1397; y_out = 782; end
       9'd332: begin x_out = 1401; y_out = 774; end
       9'd333: begin x_out = 1405; y_out = 766; end
       9'd334: begin x_out = 1409; y_out = 759; end
       9'd335: begin x_out = 1413; y_out = 751; end
       9'd336: begin x_out = 1416; y_out = 743; end
       9'd337: begin x_out = 1420; y_out = 735; end
       9'd338: begin x_out = 1423; y_out = 727; end
       9'd339: begin x_out = 1426; y_out = 719; end
       9'd340: begin x_out = 1429; y_out = 711; end
       9'd341: begin x_out = 1432; y_out = 702; end
       9'd342: begin x_out = 1435; y_out = 694; end
       9'd343: begin x_out = 1438; y_out = 686; end
       9'd344: begin x_out = 1440; y_out = 677; end
       9'd345: begin x_out = 1442; y_out = 669; end
       9'd346: begin x_out = 1445; y_out = 660; end
       9'd347: begin x_out = 1447; y_out = 652; end
       9'd348: begin x_out = 1449; y_out = 643; end
       9'd349: begin x_out = 1450; y_out = 635; end
       9'd350: begin x_out = 1452; y_out = 626; end
       9'd351: begin x_out = 1453; y_out = 618; end
       9'd352: begin x_out = 1455; y_out = 609; end
       9'd353: begin x_out = 1456; y_out = 600; end
       9'd354: begin x_out = 1457; y_out = 592; end
       9'd355: begin x_out = 1458; y_out = 583; end
       9'd356: begin x_out = 1458; y_out = 574; end
       9'd357: begin x_out = 1459; y_out = 566; end
       9'd358: begin x_out = 1459; y_out = 557; end

    default: begin x_out = 0; y_out = 0; end
    endcase
end

endmodule