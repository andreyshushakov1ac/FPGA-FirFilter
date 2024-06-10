// -------------------------------------------------------------
//
// Module: filter_ver
// Generated by MATLAB(R) 9.14 and Filter Design HDL Coder 3.1.13.
// Generated on: 2024-01-22 13:59:01
// -------------------------------------------------------------

// -------------------------------------------------------------
// HDL Code Generation Options:
//
// Name: filter_ver
// TargetLanguage: Verilog
// TestBenchStimulus: impulse step ramp chirp noise 

// -------------------------------------------------------------
// HDL Implementation    : Fully parallel
// Folding Factor        : 1
// -------------------------------------------------------------
// Filter Settings:
//
// Discrete-Time FIR Filter (real)
// -------------------------------
// Filter Structure  : Direct-Form FIR
// Filter Length     : 77
// Stable            : Yes
// Linear Phase      : Yes (Type 1)
// -------------------------------------------------------------




`timescale 1 ns / 1 ns

module filter_ver
               (
                clk,
                clk_enable,
                reset,
                filter_in,
                filter_out
                );

  input   clk; 
  input   clk_enable; 
  input   reset; 
  input   [63:0] filter_in; //double
  output  [63:0] filter_out; //double

////////////////////////////////////////////////////////////////
//Module Architecture: filter_ver
////////////////////////////////////////////////////////////////
  // Local Functions
  // Type Definitions
  // Constants
  parameter coeff1 = 7.3987947888781470E-03; //double
  parameter coeff2 = 4.3953858361287746E-03; //double
  parameter coeff3 = 4.9142104664211470E-03; //double
  parameter coeff4 = 4.8234729462593995E-03; //double
  parameter coeff5 = 3.9913997480837916E-03; //double
  parameter coeff6 = 2.3880964616659643E-03; //double
  parameter coeff7 = 1.0965418127176759E-04; //double
  parameter coeff8 = -2.6156306775635290E-03; //double
  parameter coeff9 = -5.4455467920440613E-03; //double
  parameter coeff10 = -7.9654318520090712E-03; //double
  parameter coeff11 = -9.7409738986746295E-03; //double
  parameter coeff12 = -1.0399863058186768E-02; //double
  parameter coeff13 = -9.6927964966119842E-03; //double
  parameter coeff14 = -7.5663037350014320E-03; //double
  parameter coeff15 = -4.1890778228095941E-03; //double
  parameter coeff16 = 4.1781454740877466E-05; //double
  parameter coeff17 = 4.5307649850469889E-03; //double
  parameter coeff18 = 8.5620058261943778E-03; //double
  parameter coeff19 = 1.1394774629709602E-02; //double
  parameter coeff20 = 1.2379193523558900E-02; //double
  parameter coeff21 = 1.1083142656261896E-02; //double
  parameter coeff22 = 7.3893282852870012E-03; //double
  parameter coeff23 = 1.5576867648218701E-03; //double
  parameter coeff24 = -5.7636778474329112E-03; //double
  parameter coeff25 = -1.3581194942032037E-02; //double
  parameter coeff26 = -2.0648253188223407E-02; //double
  parameter coeff27 = -2.5619971210779507E-02; //double
  parameter coeff28 = -2.7229704887219961E-02; //double
  parameter coeff29 = -2.4472034189447867E-02; //double
  parameter coeff30 = -1.6756077635955938E-02; //double
  parameter coeff31 = -4.0272803914379700E-03; //double
  parameter coeff32 = 1.3161188902526880E-02; //double
  parameter coeff33 = 3.3684138214947243E-02; //double
  parameter coeff34 = 5.5954647735940430E-02; //double
  parameter coeff35 = 7.8038968233754488E-02; //double
  parameter coeff36 = 9.7927465423242918E-02; //double
  parameter coeff37 = 1.1371699170702324E-01; //double
  parameter coeff38 = 1.2386642127489998E-01; //double
  parameter coeff39 = 1.2736644015471621E-01; //double
  parameter coeff40 = 1.2386642127489998E-01; //double
  parameter coeff41 = 1.1371699170702324E-01; //double
  parameter coeff42 = 9.7927465423242918E-02; //double
  parameter coeff43 = 7.8038968233754488E-02; //double
  parameter coeff44 = 5.5954647735940430E-02; //double
  parameter coeff45 = 3.3684138214947243E-02; //double
  parameter coeff46 = 1.3161188902526880E-02; //double
  parameter coeff47 = -4.0272803914379700E-03; //double
  parameter coeff48 = -1.6756077635955938E-02; //double
  parameter coeff49 = -2.4472034189447867E-02; //double
  parameter coeff50 = -2.7229704887219961E-02; //double
  parameter coeff51 = -2.5619971210779507E-02; //double
  parameter coeff52 = -2.0648253188223407E-02; //double
  parameter coeff53 = -1.3581194942032037E-02; //double
  parameter coeff54 = -5.7636778474329112E-03; //double
  parameter coeff55 = 1.5576867648218701E-03; //double
  parameter coeff56 = 7.3893282852870012E-03; //double
  parameter coeff57 = 1.1083142656261896E-02; //double
  parameter coeff58 = 1.2379193523558900E-02; //double
  parameter coeff59 = 1.1394774629709602E-02; //double
  parameter coeff60 = 8.5620058261943778E-03; //double
  parameter coeff61 = 4.5307649850469889E-03; //double
  parameter coeff62 = 4.1781454740877466E-05; //double
  parameter coeff63 = -4.1890778228095941E-03; //double
  parameter coeff64 = -7.5663037350014320E-03; //double
  parameter coeff65 = -9.6927964966119842E-03; //double
  parameter coeff66 = -1.0399863058186768E-02; //double
  parameter coeff67 = -9.7409738986746295E-03; //double
  parameter coeff68 = -7.9654318520090712E-03; //double
  parameter coeff69 = -5.4455467920440613E-03; //double
  parameter coeff70 = -2.6156306775635290E-03; //double
  parameter coeff71 = 1.0965418127176759E-04; //double
  parameter coeff72 = 2.3880964616659643E-03; //double
  parameter coeff73 = 3.9913997480837916E-03; //double
  parameter coeff74 = 4.8234729462593995E-03; //double
  parameter coeff75 = 4.9142104664211470E-03; //double
  parameter coeff76 = 4.3953858361287746E-03; //double
  parameter coeff77 = 7.3987947888781470E-03; //double

  // Signals
  integer delay_pipeline [0:76] ; // double
  real product77; // double
  real product76; // double
  real product75; // double
  real product74; // double
  real product73; // double
  real product72; // double
  real product71; // double
  real product70; // double
  real product69; // double
  real product68; // double
  real product67; // double
  real product66; // double
  real product65; // double
  real product64; // double
  real product63; // double
  real product62; // double
  real product61; // double
  real product60; // double
  real product59; // double
  real product58; // double
  real product57; // double
  real product56; // double
  real product55; // double
  real product54; // double
  real product53; // double
  real product52; // double
  real product51; // double
  real product50; // double
  real product49; // double
  real product48; // double
  real product47; // double
  real product46; // double
  real product45; // double
  real product44; // double
  real product43; // double
  real product42; // double
  real product41; // double
  real product40; // double
  real product39; // double
  real product38; // double
  real product37; // double
  real product36; // double
  real product35; // double
  real product34; // double
  real product33; // double
  real product32; // double
  real product31; // double
  real product30; // double
  real product29; // double
  real product28; // double
  real product27; // double
  real product26; // double
  real product25; // double
  real product24; // double
  real product23; // double
  real product22; // double
  real product21; // double
  real product20; // double
  real product19; // double
  real product18; // double
  real product17; // double
  real product16; // double
  real product15; // double
  real product14; // double
  real product13; // double
  real product12; // double
  real product11; // double
  real product10; // double
  real product9; // double
  real product8; // double
  real product7; // double
  real product6; // double
  real product5; // double
  real product4; // double
  real product3; // double
  real product2; // double
  real product1_cast; // double
  real product1; // double
  real sum1; // double
  real sum2; // double
  real sum3; // double
  real sum4; // double
  real sum5; // double
  real sum6; // double
  real sum7; // double
  real sum8; // double
  real sum9; // double
  real sum10; // double
  real sum11; // double
  real sum12; // double
  real sum13; // double
  real sum14; // double
  real sum15; // double
  real sum16; // double
  real sum17; // double
  real sum18; // double
  real sum19; // double
  real sum20; // double
  real sum21; // double
  real sum22; // double
  real sum23; // double
  real sum24; // double
  real sum25; // double
  real sum26; // double
  real sum27; // double
  real sum28; // double
  real sum29; // double
  real sum30; // double
  real sum31; // double
  real sum32; // double
  real sum33; // double
  real sum34; // double
  real sum35; // double
  real sum36; // double
  real sum37; // double
  real sum38; // double
  real sum39; // double
  real sum40; // double
  real sum41; // double
  real sum42; // double
  real sum43; // double
  real sum44; // double
  real sum45; // double
  real sum46; // double
  real sum47; // double
  real sum48; // double
  real sum49; // double
  real sum50; // double
  real sum51; // double
  real sum52; // double
  real sum53; // double
  real sum54; // double
  real sum55; // double
  real sum56; // double
  real sum57; // double
  real sum58; // double
  real sum59; // double
  real sum60; // double
  real sum61; // double
  real sum62; // double
  real sum63; // double
  real sum64; // double
  real sum65; // double
  real sum66; // double
  real sum67; // double
  real sum68; // double
  real sum69; // double
  real sum70; // double
  real sum71; // double
  real sum72; // double
  real sum73; // double
  real sum74; // double
  real sum75; // double
  real sum76; // double
  real output_typeconvert; // double
  real output_register; // double

  // Block Statements
  always @( posedge clk or posedge reset)
    begin: Delay_Pipeline_process
      if (reset == 1'b1) begin
        delay_pipeline[0] <= 0.0000000000000000E+00;
        delay_pipeline[1] <= 0.0000000000000000E+00;
        delay_pipeline[2] <= 0.0000000000000000E+00;
        delay_pipeline[3] <= 0.0000000000000000E+00;
        delay_pipeline[4] <= 0.0000000000000000E+00;
        delay_pipeline[5] <= 0.0000000000000000E+00;
        delay_pipeline[6] <= 0.0000000000000000E+00;
        delay_pipeline[7] <= 0.0000000000000000E+00;
        delay_pipeline[8] <= 0.0000000000000000E+00;
        delay_pipeline[9] <= 0.0000000000000000E+00;
        delay_pipeline[10] <= 0.0000000000000000E+00;
        delay_pipeline[11] <= 0.0000000000000000E+00;
        delay_pipeline[12] <= 0.0000000000000000E+00;
        delay_pipeline[13] <= 0.0000000000000000E+00;
        delay_pipeline[14] <= 0.0000000000000000E+00;
        delay_pipeline[15] <= 0.0000000000000000E+00;
        delay_pipeline[16] <= 0.0000000000000000E+00;
        delay_pipeline[17] <= 0.0000000000000000E+00;
        delay_pipeline[18] <= 0.0000000000000000E+00;
        delay_pipeline[19] <= 0.0000000000000000E+00;
        delay_pipeline[20] <= 0.0000000000000000E+00;
        delay_pipeline[21] <= 0.0000000000000000E+00;
        delay_pipeline[22] <= 0.0000000000000000E+00;
        delay_pipeline[23] <= 0.0000000000000000E+00;
        delay_pipeline[24] <= 0.0000000000000000E+00;
        delay_pipeline[25] <= 0.0000000000000000E+00;
        delay_pipeline[26] <= 0.0000000000000000E+00;
        delay_pipeline[27] <= 0.0000000000000000E+00;
        delay_pipeline[28] <= 0.0000000000000000E+00;
        delay_pipeline[29] <= 0.0000000000000000E+00;
        delay_pipeline[30] <= 0.0000000000000000E+00;
        delay_pipeline[31] <= 0.0000000000000000E+00;
        delay_pipeline[32] <= 0.0000000000000000E+00;
        delay_pipeline[33] <= 0.0000000000000000E+00;
        delay_pipeline[34] <= 0.0000000000000000E+00;
        delay_pipeline[35] <= 0.0000000000000000E+00;
        delay_pipeline[36] <= 0.0000000000000000E+00;
        delay_pipeline[37] <= 0.0000000000000000E+00;
        delay_pipeline[38] <= 0.0000000000000000E+00;
        delay_pipeline[39] <= 0.0000000000000000E+00;
        delay_pipeline[40] <= 0.0000000000000000E+00;
        delay_pipeline[41] <= 0.0000000000000000E+00;
        delay_pipeline[42] <= 0.0000000000000000E+00;
        delay_pipeline[43] <= 0.0000000000000000E+00;
        delay_pipeline[44] <= 0.0000000000000000E+00;
        delay_pipeline[45] <= 0.0000000000000000E+00;
        delay_pipeline[46] <= 0.0000000000000000E+00;
        delay_pipeline[47] <= 0.0000000000000000E+00;
        delay_pipeline[48] <= 0.0000000000000000E+00;
        delay_pipeline[49] <= 0.0000000000000000E+00;
        delay_pipeline[50] <= 0.0000000000000000E+00;
        delay_pipeline[51] <= 0.0000000000000000E+00;
        delay_pipeline[52] <= 0.0000000000000000E+00;
        delay_pipeline[53] <= 0.0000000000000000E+00;
        delay_pipeline[54] <= 0.0000000000000000E+00;
        delay_pipeline[55] <= 0.0000000000000000E+00;
        delay_pipeline[56] <= 0.0000000000000000E+00;
        delay_pipeline[57] <= 0.0000000000000000E+00;
        delay_pipeline[58] <= 0.0000000000000000E+00;
        delay_pipeline[59] <= 0.0000000000000000E+00;
        delay_pipeline[60] <= 0.0000000000000000E+00;
        delay_pipeline[61] <= 0.0000000000000000E+00;
        delay_pipeline[62] <= 0.0000000000000000E+00;
        delay_pipeline[63] <= 0.0000000000000000E+00;
        delay_pipeline[64] <= 0.0000000000000000E+00;
        delay_pipeline[65] <= 0.0000000000000000E+00;
        delay_pipeline[66] <= 0.0000000000000000E+00;
        delay_pipeline[67] <= 0.0000000000000000E+00;
        delay_pipeline[68] <= 0.0000000000000000E+00;
        delay_pipeline[69] <= 0.0000000000000000E+00;
        delay_pipeline[70] <= 0.0000000000000000E+00;
        delay_pipeline[71] <= 0.0000000000000000E+00;
        delay_pipeline[72] <= 0.0000000000000000E+00;
        delay_pipeline[73] <= 0.0000000000000000E+00;
        delay_pipeline[74] <= 0.0000000000000000E+00;
        delay_pipeline[75] <= 0.0000000000000000E+00;
        delay_pipeline[76] <= 0.0000000000000000E+00;
      end
      else begin
        if (clk_enable == 1'b1) begin
          delay_pipeline[0] <= $bitstoreal(filter_in);
          delay_pipeline[1] <= delay_pipeline[0];
          delay_pipeline[2] <= delay_pipeline[1];
          delay_pipeline[3] <= delay_pipeline[2];
          delay_pipeline[4] <= delay_pipeline[3];
          delay_pipeline[5] <= delay_pipeline[4];
          delay_pipeline[6] <= delay_pipeline[5];
          delay_pipeline[7] <= delay_pipeline[6];
          delay_pipeline[8] <= delay_pipeline[7];
          delay_pipeline[9] <= delay_pipeline[8];
          delay_pipeline[10] <= delay_pipeline[9];
          delay_pipeline[11] <= delay_pipeline[10];
          delay_pipeline[12] <= delay_pipeline[11];
          delay_pipeline[13] <= delay_pipeline[12];
          delay_pipeline[14] <= delay_pipeline[13];
          delay_pipeline[15] <= delay_pipeline[14];
          delay_pipeline[16] <= delay_pipeline[15];
          delay_pipeline[17] <= delay_pipeline[16];
          delay_pipeline[18] <= delay_pipeline[17];
          delay_pipeline[19] <= delay_pipeline[18];
          delay_pipeline[20] <= delay_pipeline[19];
          delay_pipeline[21] <= delay_pipeline[20];
          delay_pipeline[22] <= delay_pipeline[21];
          delay_pipeline[23] <= delay_pipeline[22];
          delay_pipeline[24] <= delay_pipeline[23];
          delay_pipeline[25] <= delay_pipeline[24];
          delay_pipeline[26] <= delay_pipeline[25];
          delay_pipeline[27] <= delay_pipeline[26];
          delay_pipeline[28] <= delay_pipeline[27];
          delay_pipeline[29] <= delay_pipeline[28];
          delay_pipeline[30] <= delay_pipeline[29];
          delay_pipeline[31] <= delay_pipeline[30];
          delay_pipeline[32] <= delay_pipeline[31];
          delay_pipeline[33] <= delay_pipeline[32];
          delay_pipeline[34] <= delay_pipeline[33];
          delay_pipeline[35] <= delay_pipeline[34];
          delay_pipeline[36] <= delay_pipeline[35];
          delay_pipeline[37] <= delay_pipeline[36];
          delay_pipeline[38] <= delay_pipeline[37];
          delay_pipeline[39] <= delay_pipeline[38];
          delay_pipeline[40] <= delay_pipeline[39];
          delay_pipeline[41] <= delay_pipeline[40];
          delay_pipeline[42] <= delay_pipeline[41];
          delay_pipeline[43] <= delay_pipeline[42];
          delay_pipeline[44] <= delay_pipeline[43];
          delay_pipeline[45] <= delay_pipeline[44];
          delay_pipeline[46] <= delay_pipeline[45];
          delay_pipeline[47] <= delay_pipeline[46];
          delay_pipeline[48] <= delay_pipeline[47];
          delay_pipeline[49] <= delay_pipeline[48];
          delay_pipeline[50] <= delay_pipeline[49];
          delay_pipeline[51] <= delay_pipeline[50];
          delay_pipeline[52] <= delay_pipeline[51];
          delay_pipeline[53] <= delay_pipeline[52];
          delay_pipeline[54] <= delay_pipeline[53];
          delay_pipeline[55] <= delay_pipeline[54];
          delay_pipeline[56] <= delay_pipeline[55];
          delay_pipeline[57] <= delay_pipeline[56];
          delay_pipeline[58] <= delay_pipeline[57];
          delay_pipeline[59] <= delay_pipeline[58];
          delay_pipeline[60] <= delay_pipeline[59];
          delay_pipeline[61] <= delay_pipeline[60];
          delay_pipeline[62] <= delay_pipeline[61];
          delay_pipeline[63] <= delay_pipeline[62];
          delay_pipeline[64] <= delay_pipeline[63];
          delay_pipeline[65] <= delay_pipeline[64];
          delay_pipeline[66] <= delay_pipeline[65];
          delay_pipeline[67] <= delay_pipeline[66];
          delay_pipeline[68] <= delay_pipeline[67];
          delay_pipeline[69] <= delay_pipeline[68];
          delay_pipeline[70] <= delay_pipeline[69];
          delay_pipeline[71] <= delay_pipeline[70];
          delay_pipeline[72] <= delay_pipeline[71];
          delay_pipeline[73] <= delay_pipeline[72];
          delay_pipeline[74] <= delay_pipeline[73];
          delay_pipeline[75] <= delay_pipeline[74];
          delay_pipeline[76] <= delay_pipeline[75];
        end
      end
    end // Delay_Pipeline_process


  always @* product77 <= delay_pipeline[76] * coeff77;

  always @* product76 <= delay_pipeline[75] * coeff76;

  always @* product75 <= delay_pipeline[74] * coeff75;

  always @* product74 <= delay_pipeline[73] * coeff74;

  always @* product73 <= delay_pipeline[72] * coeff73;

  always @* product72 <= delay_pipeline[71] * coeff72;

  always @* product71 <= delay_pipeline[70] * coeff71;

  always @* product70 <= delay_pipeline[69] * coeff70;

  always @* product69 <= delay_pipeline[68] * coeff69;

  always @* product68 <= delay_pipeline[67] * coeff68;

  always @* product67 <= delay_pipeline[66] * coeff67;

  always @* product66 <= delay_pipeline[65] * coeff66;

  always @* product65 <= delay_pipeline[64] * coeff65;

  always @* product64 <= delay_pipeline[63] * coeff64;

  always @* product63 <= delay_pipeline[62] * coeff63;

  always @* product62 <= delay_pipeline[61] * coeff62;

  always @* product61 <= delay_pipeline[60] * coeff61;

  always @* product60 <= delay_pipeline[59] * coeff60;

  always @* product59 <= delay_pipeline[58] * coeff59;

  always @* product58 <= delay_pipeline[57] * coeff58;

  always @* product57 <= delay_pipeline[56] * coeff57;

  always @* product56 <= delay_pipeline[55] * coeff56;

  always @* product55 <= delay_pipeline[54] * coeff55;

  always @* product54 <= delay_pipeline[53] * coeff54;

  always @* product53 <= delay_pipeline[52] * coeff53;

  always @* product52 <= delay_pipeline[51] * coeff52;

  always @* product51 <= delay_pipeline[50] * coeff51;

  always @* product50 <= delay_pipeline[49] * coeff50;

  always @* product49 <= delay_pipeline[48] * coeff49;

  always @* product48 <= delay_pipeline[47] * coeff48;

  always @* product47 <= delay_pipeline[46] * coeff47;

  always @* product46 <= delay_pipeline[45] * coeff46;

  always @* product45 <= delay_pipeline[44] * coeff45;

  always @* product44 <= delay_pipeline[43] * coeff44;

  always @* product43 <= delay_pipeline[42] * coeff43;

  always @* product42 <= delay_pipeline[41] * coeff42;

  always @* product41 <= delay_pipeline[40] * coeff41;

  always @* product40 <= delay_pipeline[39] * coeff40;

  always @* product39 <= delay_pipeline[38] * coeff39;

  always @* product38 <= delay_pipeline[37] * coeff38;

  always @* product37 <= delay_pipeline[36] * coeff37;

  always @* product36 <= delay_pipeline[35] * coeff36;

  always @* product35 <= delay_pipeline[34] * coeff35;

  always @* product34 <= delay_pipeline[33] * coeff34;

  always @* product33 <= delay_pipeline[32] * coeff33;

  always @* product32 <= delay_pipeline[31] * coeff32;

  always @* product31 <= delay_pipeline[30] * coeff31;

  always @* product30 <= delay_pipeline[29] * coeff30;

  always @* product29 <= delay_pipeline[28] * coeff29;

  always @* product28 <= delay_pipeline[27] * coeff28;

  always @* product27 <= delay_pipeline[26] * coeff27;

  always @* product26 <= delay_pipeline[25] * coeff26;

  always @* product25 <= delay_pipeline[24] * coeff25;

  always @* product24 <= delay_pipeline[23] * coeff24;

  always @* product23 <= delay_pipeline[22] * coeff23;

  always @* product22 <= delay_pipeline[21] * coeff22;

  always @* product21 <= delay_pipeline[20] * coeff21;

  always @* product20 <= delay_pipeline[19] * coeff20;

  always @* product19 <= delay_pipeline[18] * coeff19;

  always @* product18 <= delay_pipeline[17] * coeff18;

  always @* product17 <= delay_pipeline[16] * coeff17;

  always @* product16 <= delay_pipeline[15] * coeff16;

  always @* product15 <= delay_pipeline[14] * coeff15;

  always @* product14 <= delay_pipeline[13] * coeff14;

  always @* product13 <= delay_pipeline[12] * coeff13;

  always @* product12 <= delay_pipeline[11] * coeff12;

  always @* product11 <= delay_pipeline[10] * coeff11;

  always @* product10 <= delay_pipeline[9] * coeff10;

  always @* product9 <= delay_pipeline[8] * coeff9;

  always @* product8 <= delay_pipeline[7] * coeff8;

  always @* product7 <= delay_pipeline[6] * coeff7;

  always @* product6 <= delay_pipeline[5] * coeff6;

  always @* product5 <= delay_pipeline[4] * coeff5;

  always @* product4 <= delay_pipeline[3] * coeff4;

  always @* product3 <= delay_pipeline[2] * coeff3;

  always @* product2 <= delay_pipeline[1] * coeff2;

  always @* product1_cast <= product1;


  always @* product1 <= delay_pipeline[0] * coeff1;

  always @* sum1 <= product1_cast + product2;

  always @* sum2 <= sum1 + product3;

  always @* sum3 <= sum2 + product4;

  always @* sum4 <= sum3 + product5;

  always @* sum5 <= sum4 + product6;

  always @* sum6 <= sum5 + product7;

  always @* sum7 <= sum6 + product8;

  always @* sum8 <= sum7 + product9;

  always @* sum9 <= sum8 + product10;

  always @* sum10 <= sum9 + product11;

  always @* sum11 <= sum10 + product12;

  always @* sum12 <= sum11 + product13;

  always @* sum13 <= sum12 + product14;

  always @* sum14 <= sum13 + product15;

  always @* sum15 <= sum14 + product16;

  always @* sum16 <= sum15 + product17;

  always @* sum17 <= sum16 + product18;

  always @* sum18 <= sum17 + product19;

  always @* sum19 <= sum18 + product20;

  always @* sum20 <= sum19 + product21;

  always @* sum21 <= sum20 + product22;

  always @* sum22 <= sum21 + product23;

  always @* sum23 <= sum22 + product24;

  always @* sum24 <= sum23 + product25;

  always @* sum25 <= sum24 + product26;

  always @* sum26 <= sum25 + product27;

  always @* sum27 <= sum26 + product28;

  always @* sum28 <= sum27 + product29;

  always @* sum29 <= sum28 + product30;

  always @* sum30 <= sum29 + product31;

  always @* sum31 <= sum30 + product32;

  always @* sum32 <= sum31 + product33;

  always @* sum33 <= sum32 + product34;

  always @* sum34 <= sum33 + product35;

  always @* sum35 <= sum34 + product36;

  always @* sum36 <= sum35 + product37;

  always @* sum37 <= sum36 + product38;

  always @* sum38 <= sum37 + product39;

  always @* sum39 <= sum38 + product40;

  always @* sum40 <= sum39 + product41;

  always @* sum41 <= sum40 + product42;

  always @* sum42 <= sum41 + product43;

  always @* sum43 <= sum42 + product44;

  always @* sum44 <= sum43 + product45;

  always @* sum45 <= sum44 + product46;

  always @* sum46 <= sum45 + product47;

  always @* sum47 <= sum46 + product48;

  always @* sum48 <= sum47 + product49;

  always @* sum49 <= sum48 + product50;

  always @* sum50 <= sum49 + product51;

  always @* sum51 <= sum50 + product52;

  always @* sum52 <= sum51 + product53;

  always @* sum53 <= sum52 + product54;

  always @* sum54 <= sum53 + product55;

  always @* sum55 <= sum54 + product56;

  always @* sum56 <= sum55 + product57;

  always @* sum57 <= sum56 + product58;

  always @* sum58 <= sum57 + product59;

  always @* sum59 <= sum58 + product60;

  always @* sum60 <= sum59 + product61;

  always @* sum61 <= sum60 + product62;

  always @* sum62 <= sum61 + product63;

  always @* sum63 <= sum62 + product64;

  always @* sum64 <= sum63 + product65;

  always @* sum65 <= sum64 + product66;

  always @* sum66 <= sum65 + product67;

  always @* sum67 <= sum66 + product68;

  always @* sum68 <= sum67 + product69;

  always @* sum69 <= sum68 + product70;

  always @* sum70 <= sum69 + product71;

  always @* sum71 <= sum70 + product72;

  always @* sum72 <= sum71 + product73;

  always @* sum73 <= sum72 + product74;

  always @* sum74 <= sum73 + product75;

  always @* sum75 <= sum74 + product76;

  always @* sum76 <= sum75 + product77;

  always @* output_typeconvert <= sum76;


  always @ (posedge clk or posedge reset)
    begin: Output_Register_process
      if (reset == 1'b1) begin
        output_register <= 0.0000000000000000E+00;
      end
      else begin
        if (clk_enable == 1'b1) begin
          output_register <= output_typeconvert;
        end
      end
    end // Output_Register_process

  // Assignment Statements
  assign filter_out = $realtobits(output_register);
endmodule  // filter_ver