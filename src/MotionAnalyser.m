classdef MotionAnalyser < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        MotionAnalyserUIFigure          matlab.ui.Figure
        ImportMenu                      matlab.ui.container.Menu
        ImportXYMenu                    matlab.ui.container.Menu
        ImportfromDeepLabCutMenu        matlab.ui.container.Menu
        ImportXandYKinoveaMenu          matlab.ui.container.Menu
        ImportXYZMenu                   matlab.ui.container.Menu
        StitchfileMenu                  matlab.ui.container.Menu
        UseXYfileMenu                   matlab.ui.container.Menu
        UseDeepLabCutfileMenu           matlab.ui.container.Menu
        EPhystracesMenu                 matlab.ui.container.Menu
        SensorsignalsMenu               matlab.ui.container.Menu
        ReopenamatlabfileMenu           matlab.ui.container.Menu
        ResetvaluesMenu                 matlab.ui.container.Menu
        LoadexamplesMenu                matlab.ui.container.Menu
        Element1with3pointsMenu         matlab.ui.container.Menu
        Element2with3pointsMenu         matlab.ui.container.Menu
        Elements1and2Menu               matlab.ui.container.Menu
        FilteredEphytraceMenu           matlab.ui.container.Menu
        SensorsignalMenu                matlab.ui.container.Menu
        TestanglesMenu                  matlab.ui.container.Menu
        TestspeedaccMenu                matlab.ui.container.Menu
        TestgaitMenu                    matlab.ui.container.Menu
        ExportMenu                      matlab.ui.container.Menu
        SavematfileMenu                 matlab.ui.container.Menu
        ExportasMenu                    matlab.ui.container.Menu
        csvMenu                         matlab.ui.container.Menu
        xlsxMenu                        matlab.ui.container.Menu
        xlsMenu                         matlab.ui.container.Menu
        ExportallplotsMenu              matlab.ui.container.Menu
        pngMenu                         matlab.ui.container.Menu
        svgMenu                         matlab.ui.container.Menu
        AnimationMenu_2                 matlab.ui.container.Menu
        AVIMenu                         matlab.ui.container.Menu
        GIFMenu                         matlab.ui.container.Menu
        EditMenu                        matlab.ui.container.Menu
        AlignelementsMenu               matlab.ui.container.Menu
        AlignonXMenu                    matlab.ui.container.Menu
        AlignonYMenu                    matlab.ui.container.Menu
        AlignonZMenu                    matlab.ui.container.Menu
        AlignonXYMenu                   matlab.ui.container.Menu
        AlignonXYZMenu                  matlab.ui.container.Menu
        InvertMenu                      matlab.ui.container.Menu
        InvertXMenu_3                   matlab.ui.container.Menu
        InvertYMenu_3                   matlab.ui.container.Menu
        InvertZMenu_2                   matlab.ui.container.Menu
        RotateMenu                      matlab.ui.container.Menu
        RotatetheXYplanMenu             matlab.ui.container.Menu
        RotatetheXZplanMenu             matlab.ui.container.Menu
        RotatetheYZplanMenu             matlab.ui.container.Menu
        ScaleMenu                       matlab.ui.container.Menu
        ShiftMenu                       matlab.ui.container.Menu
        ShiftXMenu                      matlab.ui.container.Menu
        ShiftYMenu                      matlab.ui.container.Menu
        ShiftZMenu                      matlab.ui.container.Menu
        ShiftXYZMenu                    matlab.ui.container.Menu
        TrimMenu                        matlab.ui.container.Menu
        SelectfirstpositionMenu         matlab.ui.container.Menu
        SelectlastpositionMenu          matlab.ui.container.Menu
        TrimdatasetMenu                 matlab.ui.container.Menu
        ReplaceNaNbyMenu                matlab.ui.container.Menu
        LinearinterpolationMenu         matlab.ui.container.Menu
        MeanwindowMenu                  matlab.ui.container.Menu
        MedianwindowMenu                matlab.ui.container.Menu
        NearestvalueMenu                matlab.ui.container.Menu
        PreviousvalueMenu               matlab.ui.container.Menu
        NextvalueMenu                   matlab.ui.container.Menu
        MaxvalueMenu                    matlab.ui.container.Menu
        MinvalueMenu                    matlab.ui.container.Menu
        MeanvakueMenu                   matlab.ui.container.Menu
        ZeroMenu                        matlab.ui.container.Menu
        RemovecolumnMenu                matlab.ui.container.Menu
        RenameMenu                      matlab.ui.container.Menu
        RevertMenu_11                   matlab.ui.container.Menu
        StitchMenu                      matlab.ui.container.Menu
        AlignstitchwithelementMenu      matlab.ui.container.Menu
        InvertXMenu_2                   matlab.ui.container.Menu
        InvertYMenu_2                   matlab.ui.container.Menu
        RotateStitchMenu                matlab.ui.container.Menu
        ShiftstitchcoordinatesMenu      matlab.ui.container.Menu
        TrimthestitchatthejunctionMenu  matlab.ui.container.Menu
        ConcatenateMenu                 matlab.ui.container.Menu
        AppearanceMenu                  matlab.ui.container.Menu
        AxisMenu                        matlab.ui.container.Menu
        ShowMenu_2                      matlab.ui.container.Menu
        AllMenu                         matlab.ui.container.Menu
        XaxisMenu                       matlab.ui.container.Menu
        YaxisMenu                       matlab.ui.container.Menu
        ZaxisMenu                       matlab.ui.container.Menu
        HideMenu_2                      matlab.ui.container.Menu
        AllMenu_2                       matlab.ui.container.Menu
        XaxisMenu_2                     matlab.ui.container.Menu
        YaxisMenu_2                     matlab.ui.container.Menu
        ZaxisMenu_2                     matlab.ui.container.Menu
        StickdiagramMenu_2              matlab.ui.container.Menu
        MarkersMenu_2                   matlab.ui.container.Menu
        ShowMenu_5                      matlab.ui.container.Menu
        HideMenu_5                      matlab.ui.container.Menu
        SizeMenu_2                      matlab.ui.container.Menu
        TypeMenu_2                      matlab.ui.container.Menu
        CircleMenu_2                    matlab.ui.container.Menu
        PlussignMenu_2                  matlab.ui.container.Menu
        AsteriskMenu_2                  matlab.ui.container.Menu
        PointMenu_2                     matlab.ui.container.Menu
        CrossMenu_2                     matlab.ui.container.Menu
        SquareMenu_2                    matlab.ui.container.Menu
        DiamondMenu_2                   matlab.ui.container.Menu
        PentagramMenu_2                 matlab.ui.container.Menu
        HexagramMenu_2                  matlab.ui.container.Menu
        EdgecolorMenu_2                 matlab.ui.container.Menu
        FillcolorMenu_2                 matlab.ui.container.Menu
        LinethicknessMenu_2             matlab.ui.container.Menu
        SegmentationdensityMenu         matlab.ui.container.Menu
        SignalprocessingMenu            matlab.ui.container.Menu
        TemporalresolutionMenu_2        matlab.ui.container.Menu
        FiltersMenu                     matlab.ui.container.Menu
        BandpassMenu                    matlab.ui.container.Menu
        HighpassMenu                    matlab.ui.container.Menu
        LowpassMenu                     matlab.ui.container.Menu
        NotchMenu                       matlab.ui.container.Menu
        RectifyMenu                     matlab.ui.container.Menu
        MeanrectificationMenu           matlab.ui.container.Menu
        AbsolutevaluerectificationMenu  matlab.ui.container.Menu
        SquarerootrectificationMenu     matlab.ui.container.Menu
        HalfwaverectificationMenu       matlab.ui.container.Menu
        EnvelopeMenu                    matlab.ui.container.Menu
        LowpassMenu_2                   matlab.ui.container.Menu
        MovingaverageMenu               matlab.ui.container.Menu
        LowpassandmovingaverageMenu     matlab.ui.container.Menu
        RootmeansquareMenu              matlab.ui.container.Menu
        HilberttransformMenu            matlab.ui.container.Menu
        ResampleMenu                    matlab.ui.container.Menu
        InterpolateMenu                 matlab.ui.container.Menu
        RevertMenu_10                   matlab.ui.container.Menu
        TabGroup                        matlab.ui.container.TabGroup
        CoordinatesTab                  matlab.ui.container.Tab
        PlotSelector                    matlab.ui.control.DropDown
        PlotDropDown_2Label_2           matlab.ui.control.Label
        iButton_3                       matlab.ui.control.Button
        UseanarbitraryZEditField        matlab.ui.control.NumericEditField
        UseanarbitraryZEditFieldLabel   matlab.ui.control.Label
        UITableElement                  matlab.ui.control.Table
        PrevButton_4                    matlab.ui.control.Button
        NextButton_4                    matlab.ui.control.Button
        ShowLabel                       matlab.ui.control.Label
        ReplotButton                    matlab.ui.control.Button
        PositionField1                  matlab.ui.control.NumericEditField
        SelectXY                        matlab.ui.control.DropDown
        PositionLabel                   matlab.ui.control.Label
        PositionSlider                  matlab.ui.control.Slider
        UITable1                        matlab.ui.control.Table
        UIAxes                          matlab.ui.control.UIAxes
        AnimationTab                    matlab.ui.container.Tab
        UITableElement_2                matlab.ui.control.Table
        AnimateButton                   matlab.ui.control.Button
        NormalisetracestoPanel          matlab.ui.container.Panel
        Choose_a_EOI                    matlab.ui.control.DropDown
        Choose_a_POI                    matlab.ui.control.DropDown
        Choose_a_AOI                    matlab.ui.control.DropDown
        AdjustPanel                     matlab.ui.container.Panel
        TimeintervalEditField           matlab.ui.control.NumericEditField
        TimeintervalEditFieldLabel      matlab.ui.control.Label
        SetelevationtoEditField         matlab.ui.control.NumericEditField
        SetelevationtoEditFieldLabel    matlab.ui.control.Label
        SetazimuthtoEditField           matlab.ui.control.NumericEditField
        SetazimuthtoEditFieldLabel      matlab.ui.control.Label
        PositionField2                  matlab.ui.control.NumericEditField
        PositionSlider_3                matlab.ui.control.Slider
        PositionSlider_3Label           matlab.ui.control.Label
        UIAxes12                        matlab.ui.control.UIAxes
        KinematicTab                    matlab.ui.container.Tab
        SelectaPOILabel_3               matlab.ui.control.Label
        SelectaPOILabel_2               matlab.ui.control.Label
        RecalculateButton               matlab.ui.control.Button
        SelecttheaxisLabel              matlab.ui.control.Label
        AngleaccButton                  matlab.ui.control.Button
        AnglevelocityButton             matlab.ui.control.Button
        AnglevariationButton            matlab.ui.control.Button
        AccelerationButton_2            matlab.ui.control.Button
        SpeedButton                     matlab.ui.control.Button
        DropDownView                    matlab.ui.control.DropDown
        AllButton                       matlab.ui.control.Button
        SingleCurveKinematic            matlab.ui.control.DropDown
        SelectaPOILabel                 matlab.ui.control.Label
        ElementDropDown                 matlab.ui.control.DropDown
        PositionButton                  matlab.ui.control.Button
        DistanceButton                  matlab.ui.control.Button
        StickdiagramsButton             matlab.ui.control.Button
        UIAxes2                         matlab.ui.control.UIAxes
        UIAxes3                         matlab.ui.control.UIAxes
        UIAxes4                         matlab.ui.control.UIAxes
        UIAxes5                         matlab.ui.control.UIAxes
        StatsTab                        matlab.ui.container.Tab
        UITableData                     matlab.ui.control.Table
        ShowtableButton                 matlab.ui.control.Button
        ParameterX_2                    matlab.ui.control.DropDown
        ParameterDropDownLabel_3        matlab.ui.control.Label
        ElementDropDownX_2              matlab.ui.control.DropDown
        ElementDropDown_5Label_2        matlab.ui.control.Label
        POI_list                        matlab.ui.control.ListBox
        PointofInterestListBoxLabel_2   matlab.ui.control.Label
        UITableStat                     matlab.ui.control.Table
        EphyTab                         matlab.ui.container.Tab
        PrevButton_5                    matlab.ui.control.Button
        NextButton_5                    matlab.ui.control.Button
        PositionFieldEMG                matlab.ui.control.NumericEditField
        PositionLabelEMG                matlab.ui.control.Label
        PositionSliderEMG               matlab.ui.control.Slider
        EditField_2                     matlab.ui.control.NumericEditField
        EditField                       matlab.ui.control.NumericEditField
        PlotDropDown                    matlab.ui.control.DropDown
        PlotDropDownLabel               matlab.ui.control.Label
        AreaunderthecurveLabel          matlab.ui.control.Label
        UITableAUC                      matlab.ui.control.Table
        AmplitudescalefactorSlider      matlab.ui.control.Slider
        AmplitudescalefactorSliderLabel  matlab.ui.control.Label
        TimescalefactorSlider           matlab.ui.control.Slider
        TimescalefactorSliderLabel      matlab.ui.control.Label
        CalculateButton_3               matlab.ui.control.Button
        SamplingDataRate                matlab.ui.control.NumericEditField
        SamplingrateHzLabel             matlab.ui.control.Label
        RawEphyvaluesLabel              matlab.ui.control.Label
        UITable16                       matlab.ui.control.Table
        UIAxesEMG                       matlab.ui.control.UIAxes
        SensorTab                       matlab.ui.container.Tab
        PrevButton_Sensor               matlab.ui.control.Button
        NextButton_Sensor               matlab.ui.control.Button
        PositionFieldSensor             matlab.ui.control.NumericEditField
        PositionLabelSensor             matlab.ui.control.Label
        PositionSliderSensor            matlab.ui.control.Slider
        RawsensorvaluesLabel            matlab.ui.control.Label
        PlotSensorDropDown              matlab.ui.control.DropDown
        PlotDropDown_2Label             matlab.ui.control.Label
        SensorSamplingRate              matlab.ui.control.NumericEditField
        SamplingrateHzLabel_2           matlab.ui.control.Label
        AreaunderthecurveLabel_2        matlab.ui.control.Label
        UITableAUC_2                    matlab.ui.control.Table
        CalculateButton_4               matlab.ui.control.Button
        UITableSensor                   matlab.ui.control.Table
        TimescalefactorSlider_2         matlab.ui.control.Slider
        TimescalefactorSlider_2Label    matlab.ui.control.Label
        EditField_4                     matlab.ui.control.NumericEditField
        AmplitudescalefactorSlider_2    matlab.ui.control.Slider
        AmplitudescalefactorSlider_2Label  matlab.ui.control.Label
        EditField_3                     matlab.ui.control.NumericEditField
        UIAxesSensor                    matlab.ui.control.UIAxes
        CorrelationTab                  matlab.ui.container.Tab
        CorrCoeff                       matlab.ui.control.DropDown
        DTWButton                       matlab.ui.control.Button
        CosinesimilarityButton          matlab.ui.control.Button
        EdistanceButton                 matlab.ui.control.Button
        UITableCCC                      matlab.ui.control.Table
        SelecttheaxisLabel_3            matlab.ui.control.Label
        Axis_Y                          matlab.ui.control.DropDown
        SelecttheaxisLabel_2            matlab.ui.control.Label
        Axis_X                          matlab.ui.control.DropDown
        PlottogetherButton              matlab.ui.control.Button
        Scaleoption                     matlab.ui.control.DropDown
        ScaleoptionDropDownLabel        matlab.ui.control.Label
        PlotautocorrelationButton_2     matlab.ui.control.Button
        PlotautocorrelationButton       matlab.ui.control.Button
        PlotcrosscorrelationButton      matlab.ui.control.Button
        PlotcorrelationButton           matlab.ui.control.Button
        SelectcorrelationparametersLabel  matlab.ui.control.Label
        ParameterY                      matlab.ui.control.DropDown
        ParameterDropDownLabel_2        matlab.ui.control.Label
        ElementDropDownY                matlab.ui.control.DropDown
        ElementDropDown_6Label          matlab.ui.control.Label
        ParameterX                      matlab.ui.control.DropDown
        ParameterDropDownLabel          matlab.ui.control.Label
        ElementDropDownX                matlab.ui.control.DropDown
        ElementDropDown_5Label          matlab.ui.control.Label
        POIY                            matlab.ui.control.ListBox
        PointofInterestListBox_2Label   matlab.ui.control.Label
        POIX                            matlab.ui.control.ListBox
        PointofInterestListBoxLabel     matlab.ui.control.Label
        UIAxes14                        matlab.ui.control.UIAxes
        StrideGaitTab                   matlab.ui.container.Tab
        TLAButton                       matlab.ui.control.Button
        CalculateButton_2               matlab.ui.control.Button
        NormalisepositionsLabel         matlab.ui.control.Label
        SelectaxisDropDown_2            matlab.ui.control.DropDown
        SelectaxisDropDown_2Label       matlab.ui.control.Label
        SelectpointDropDown_2           matlab.ui.control.DropDown
        SelectpointDropDown_2Label      matlab.ui.control.Label
        ColorHeelOff_3                  matlab.ui.control.Button
        ColorHeelOff_2                  matlab.ui.control.Button
        ColorHeelOff                    matlab.ui.control.Button
        ColorHeelStrike                 matlab.ui.control.Button
        DeletelastButton_2              matlab.ui.control.Button
        HeeloffButton                   matlab.ui.control.Button
        ShowallButton                   matlab.ui.control.Button
        GaitdiagramButton               matlab.ui.control.Button
        AnalyseLabel                    matlab.ui.control.Label
        DeleteallButton                 matlab.ui.control.Button
        DeletelastButton_4              matlab.ui.control.Button
        MaxtoeliftButton                matlab.ui.control.Button
        DeletelastButton_3              matlab.ui.control.Button
        ToeoffButton                    matlab.ui.control.Button
        CapturepositionsLabel           matlab.ui.control.Label
        DeletelastButton                matlab.ui.control.Button
        HeelstrikeButton                matlab.ui.control.Button
        ButtonGroup                     matlab.ui.container.ButtonGroup
        PositionEditField               matlab.ui.control.NumericEditField
        PositionEditFieldLabel          matlab.ui.control.Label
        PositionSlider_2                matlab.ui.control.Slider
        PrevButton_3                    matlab.ui.control.Button
        NextButton_3                    matlab.ui.control.Button
        x100Button                      matlab.ui.control.RadioButton
        x3Button                        matlab.ui.control.RadioButton
        x1000Button                     matlab.ui.control.RadioButton
        x10Button                       matlab.ui.control.RadioButton
        x5Button                        matlab.ui.control.RadioButton
        x1Button                        matlab.ui.control.RadioButton
        ElementDropDown_4               matlab.ui.control.DropDown
        CaptureandcalculationsLabel     matlab.ui.control.Label
        UITableGait                     matlab.ui.control.Table
        UIAxes13                        matlab.ui.control.UIAxes
        ContextMenu                     matlab.ui.container.ContextMenu
    end


    properties (Access = private)

        % cell arrays for coordinates
        e; % defines the element number or numbers to use
        te = 0; % total number of elements
        ElementName; % name of the differents elements
        file; % name of the imported file as element name
        name = {}; % name for the different POI (xPoI, yPOI)
        colname = {} % name for each POI
        colname_old = {}; % bkp
        T = {};
        X = {};
        Y = {};
        Z = {};
        dX = {}; % X(2)-X(1)
        dY = {};
        dZ = {};
        dXY = {};
        dXZ = {};
        dYZ = {};
        dXYZ ={};
        VX = {}; % velocity on X
        VY = {};
        VZ = {};
        VXY = {};
        VXZ = {};
        VYZ = {};
        VXYZ = {};
        AX = {}; % Acceleration on X
        AY = {};
        AZ = {};
        AXY = {};
        AXZ = {};
        AYZ = {};
        AXYZ = {};
        AnglesXY = {}; % Angles on the XY plan
        AnglesXZ = {};
        AnglesYZ = {};
        AngleStat = {};
        AngVeloc_XY = {}; % Angular velocity on the XY plan
        AngVeloc_XZ = {};
        AngVeloc_YZ = {};
        AngVelocStat = {};
        AngAcc_XY = {}; % Angular acceleration on XY plan
        AngAcc_XZ = {};
        AngAcc_YZ = {};
        AngAccStat = {};
        Arb_Z = 0; % tell the system that the Z is arbitray (0= real Z; 1=arbitrary Z)

        % Stitch variabales
        TStitch;
        XStitch;
        YStitch;
        ZStitch;
        Is_stitch = "No" % is there a sticth? Yes/No

        % Axis
        xaxis = 'on';
        yaxis = 'off';
        zaxis = 'off';

        % Cell arrays for statistics
        DistanceStat = cell(1, 15); % 5 (min, max, mean, median, sum) x 3(X, Y and XY)
        VelocityStat = cell(1, 15); % 5 (min, max, mean, median, mode) x 3(VX, VY and VXY)
        AccelerationStat = cell(1, 15); % 5 (min, max, mean, median, mode) x 3(AX, AY and AXY)
        IntColname % interleave X and Y with the same column name

        % variables for functions
        AbsoluteValue; % absolute values for speed and acceleration
        AngleUnit; % gives angle units in Deg or Rad
        nPOI = {}; % to count the number of points
        RecNumber
        ChoosePlot = "Trajectory" % variable that define the type of plot default is trajectory
        X_ro; Y_ro; Z_ro % temporary X, Y, and Z variables for rotation
        X_old; Y_old; Z_old; T_old; % saving data for possible reversion of calculation
        idxPOI = ':'; % index of the POI to plot single curves in kinematic, default is all
        NormalisedTo = 1;
        SinglePOI % to select which POI to plot in a single curve
        SelectedOptionIndex % dialogue menu: variable returned upon selectrion of a POI
        format; % export format

        % Variables to plot kinematics
        A_kine % A transfer variable for kinematic plot function, no need to save
        B_kine % A transfer variable for plot function, no need to save
        K_title % variable to set the title of kinematic plots
        K_time; % defines the time series used to plot kinematics
        K_colname; % define the column name use for ploting kinematics

        % Variables for animation and display
        XAnim
        YAnim
        ZAnim
        TimeInterval = 0.06; % time between 2 animated positions
        MarkerEdgeColor = 'k';
        MarkerFaceColor = 'y';
        LineThickness = 1;
        MarkerOnOff;
        Msize = 5; % marker sizeZ
        Mtype = 'o'; % show/hide markers and shape of marker
        zPosition = {}; % Abitrary value for interlimb distance
        SegDens = 1; % defines segment density for stick diagram (number of raws used)

        %% Variable for gait analyses
        XStep;
        YStep;
        ZStep;
        n2; % position of the slider in the Stride&Gait tab
        HeelstrikeColor = 'red';
        HeeloffColor = 'green';
        ToeoffColor = 'blue';
        MaxtoeliftColor = 'magenta';
        FLA = {}; % foot lift amplitude
        TOD = {}; % take off duration
        FLV = {}; % foot lift velocity
        capX; capY; capZ; capT; % array for capturing x and Y values
        Xposition; Yposition; Zposition; tvalue;
        CalcGait = {} % to store the calculated gait parameters

        % heel strike
        WhereIsHeel; % defines the column number that corresponds to the heel
        X_HS_position = {}; % x values of all POI for the heel strike position
        capture_X_HS = []; % temporary variable
        Y_HS_position = {}; % y values of all POI for the heel strike position
        capture_Y_HS = []; % temporary variable
        Z_HS_position = {}; % z values of all POI for the heel strike position
        capture_Z_HS = []; % temporary variable
        XHS = {}; % x-coordinates for heel strike
        YHS = {}; % y-coordinates for heel strike
        ZHS = {}; % z-coordinates for heel strike
        tvalue3 = {}; % Time value for the heel strike
        capture_t3 = []; % temporary variable

        % heel off
        X_HO_position = {}; % x values of all POI for the heel off position
        capture_X_HO = []; % temporary variable
        Y_HO_position = {}; % y values of all POI for the heel off position
        capture_Y_HO = []; % temporary variable
        Z_HO_position = {};
        capture_Z_HO = []; % temporary variable
        XHO = {}; % x-coordinates for heel off
        YHO = {}; % y-coordinates for heel off
        ZHO = {}; % z-coordinates for heel off
        tvalue7 = {}; % time value for the heel-off
        capture_t7 = []; % temporary variable

        % Toe off
        WhereIsToe; % defines the column number that corresponds to the toe
        X_TO_position = {}; % x values of all POI for the toe-off position
        capture_X_TO = [];
        Y_TO_position = {}; % y values of all POI for the toe-off position
        capture_Y_TO = [];
        Z_TO_position = {}; % z values of all POI for the toe-off position
        capture_Z_TO = [];
        XTO = {}; % x-coordinates for toe-off
        YTO = {}; % y-coordinates for toe-off
        ZTO = {}; % z-coordinates for toe-off
        tvalue1 = {}; % time value for the toe-off
        capture_t1 = []; % temporary variable

        % Max toe-lift
        X_MTL_position = {}; % x values of all POI for the max toe-lift position
        capture_X_MTL = [];
        Y_MTL_position = {}; % y values of all POI for the max toe-lift position
        capture_Y_MTL = [];
        Z_MTL_position = {};
        capture_Z_MTL = [];
        XMTL = {}; % x-coordinates for max toe-lift
        YMTL = {}; % y-coordinates for max toe-lift
        ZMTL = {}; % z-coordinates for max toe-lift
        tvalue2 = {}; % time value for the max toe-lift
        capture_t2 = []; % temporary variable

        % Gait parameters
        strlg = {}; % stride lengths
        strdur = {}; % stride duration
        SwingDur = {}; % swing duration
        StanceDur = {}; % stance duration
        HDdur  = {}; % heel down duration
        StepDur; StepSize;
        TimeGait = {}; % variable where the time for heel strike and toe off are collected to plot the gait diagramm
        ZGait = {}; % to build the gait diagram

        % Variables for EMG
        tEMG = []; % time column in EMG file
        Voltage = [];
        Voltage_old = []; % bkp for voltage
        colnameEMG = [];
        colnameEMG_old = []; % bkp
        SpreadV; % to spread all EMG traces on the Y-axis on a single plot
        tEMG_old; % bkp
        SpreadV_old; % bkp
        Freq; % frequency EMG
        fEMG; % filtered EMG
        envelope; % E-phy envelope
        P1 = {}; %to overlay single position

        % Variables for Sensors
        SensorValues;
        tSensor;
        fSensorValues; % after filtering
        Senvelope; % envelope
        colnameSensor; % column name for the sensor signal
        colnameSensor_old; % bkp
        SensorValues_old; % bkp variable
        tSensor_old; % bkp variable
        SpreadSensor; % spreads the different curves on the y axis
        SFreq; % sensor signal frequency

        % Variables for signal processing
        Signal; % source signal
        fSignal; % filtered or final signal
        SignalFreq; % signal frequency
        tSignal; % time series for the signal

        % Commun variables for both Elements
        POIx; POIy; % variable for the corresponding matrix sizes

        N1;
        colx ;coly; colz; colxy; colxz; colyz; colxyz
        colvx ;colvy; colvz; colvxy; colvxz; colvyz; colvxyz
        colax ;colay; colaz; colaxy; colaxz; colayz; colaxyz
        colvw; colaw;
        n; n3; n4; n6; n7; n29; n30
        min_dx; max_dx; mean_dx; median_dx; mode_dx; min_dy; max_dy; mean_dy; median_dy; mode_dy; min_dxy; max_dxy; mean_dxy; median_dxy; mode_dxy;
        sum_dx; sum_dy; sum_dxy;
        min_vx; max_vx; mean_vx; median_vx; mode_vx; min_vy; max_vy; mean_vy; median_vy; mode_vy; min_vxy; max_vxy; mean_vxy; median_vxy; mode_vxy;
        min_ax; max_ax; mean_ax; median_ax; mode_ax; min_ay; max_ay; mean_ay; median_ay; mode_ay; min_axy; max_axy; mean_axy; median_axy; mode_axy;
        min_angle; max_angle; mean_angle; median_angle; mode_angle;
        min_vw; max_vw; mean_vw; median_vw; mode_vw;
        min_aw; max_aw; mean_aw; median_aw; mode_aw;
        MultiplyingFactor1;
        color; % single property used in the function to select color
        AnimationSpeed; % define a speed between to plots in the animation cycle
        FirstPoint; LastPoint; First_Point; Last_Point
        designation;
        Stick;

        % Variables for correlation
        corrx; % x values for correlation
        corry; % y values for correlation
        corrTx % tvalues for x correlation
        corrTy % t values for y correlation
        RStime % resampled time
        CorrTbl1; CorrTbl2; % These to pass values between functions - dont save

        transport; retour;
        P3; % to overlay the gait plot with a position
        P4; % to overlay the EMG plot with a position
        P5; % to overlay the sensor plot with a position
    end

    methods (Access = private)

        function updateplot = updateplot(app) %#ok<STOUT>
            value = app.ChoosePlot ;
            cla(app.UIAxes); cla(app.UIAxes,'reset'); % clean plot
            hold (app.UIAxes, 'on');

            if app.Is_stitch == "No"
                if numel(app.X) >=1

                    switch value
                        case "Trajectory for a single POI"
                            idx = app.SinglePOI;
                            for k=1:size(app.e, 2)
                                plot3 (app.UIAxes, app.X{app.e(k)}(:,idx), app.Y{app.e(k)}(:,idx), app.Z{app.e(k)}(:,idx));
                            end
                            axis(app.UIAxes, 'equal');
                            Axes1_12Settings(app)

                        case "Trajectory"
                            for k=1:size(app.e, 2)
                                plot3 (app.UIAxes, app.X{app.e(k)}, app.Y{app.e(k)}, app.Z{app.e(k)});
                            end
                            %axis(app.UIAxes, 'equal');
                            app.UIAxes.DataAspectRatio = [1 1 1];
                            Axes1_12Settings(app)

                        case "Stick diagram"
                            for k=1:size(app.e, 2)
                                for i = 1:app.SegDens:size((app.X{app.e(k)}), 1)
                                    plot3 (app.UIAxes, app.X{app.e(k)}(i,:), app.Y{app.e(k)}(i,:), app.Z{app.e(k)}(i,:), "Color", [0.75 0.75 0.75], ...
                                        "LineWidth", app.LineThickness)
                                end
                            end
                            %axis(app.UIAxes, 'equal');
                            app.UIAxes.DataAspectRatio = [1 1 1];
                            Axes1_12Settings(app)

                        case "Trajectory with stick diagram"
                            % Trajectory
                            for k=1:size(app.e, 2)
                                plot3 (app.UIAxes, app.X{app.e(k)}, app.Y{app.e(k)}, app.Z{app.e(k)});
                            end

                            % Stick diagrams
                            for k=1:size(app.e, 2)
                                for i = 1:app.SegDens:size((app.X{app.e(k)}), 1)
                                    plot3 (app.UIAxes, app.X{app.e(k)}(i,:), app.Y{app.e(k)}(i,:), app.Z{app.e(k)}(i,:), "Color", [0.75 0.75 0.75], ...
                                        "LineWidth", app.LineThickness)
                                end
                            end
                            %axis(app.UIAxes, 'equal');
                            app.UIAxes.DataAspectRatio = [1 1 1];
                            Axes1_12Settings(app)

                        case "Heat map"
                            % Initialize x and y arrays
                            x = cellfun(@(x) x(:, app.SinglePOI),app.X(app.e),'UniformOutput',false);
                            x = cat(1, x{:});
                            y = cellfun(@(x) x(:, app.SinglePOI),app.Y(app.e),'UniformOutput',false);
                            y = cat(1, y{:});

                            % Define edges for x and y axes
                            xEdges = linspace(min(x(:)), max(x(:)), 50);
                            yEdges = linspace(min(y(:)), max(y(:)), 50);

                            % Calculate 2D histogram using x and y arrays and edges
                            [N, edges] = hist3([x y], {xEdges, yEdges});

                            % Transpose histogram array for correct orientation
                            f = N';
                            xi = edges{1};
                            yi = edges{2};

                            % Plot heat map with interpolated shading and colorbar
                            h = pcolor(app.UIAxes, xi,yi,f);
                            shading(app.UIAxes,'interp');
                            colorbar(app.UIAxes);
                            set(h, 'EdgeColor', 'none');% remove black lines between pixels

                            % Apply settings to UIAxes
                            Axes1_12Settings(app)
                    end
                else
                    msgbox('No coordinates available')
                end
            else
                if numel(app.XStitch) >=1
                    switch value
                        case "Single curve"
                            idx = app.SinglePOI;
                            plot3 (app.UIAxes, app.X{app.e}(:,idx), app.Y{app.e}(:,idx), app.Z{app.e}(:,idx));
                            hold (app.UIAxes, 'on')
                            plot3 (app.UIAxes, app.XStitch(:,idx), app.YStitch(:,idx), app.ZStitch(:,idx));
                            axis(app.UIAxes, 'equal');
                            Axes1_12Settings(app)

                        case "Trajectory"
                            % plot in gray the trajectory for xy
                            plot3 (app.UIAxes, app.X{app.e}, app.Y{app.e}, app.Z{app.e}, "Color", [0.75 0.75 0.75], "LineWidth", app.LineThickness);
                            hold(app.UIAxes, 'on')

                            % plot in the trajectory for stitched xy
                            plot3 (app.UIAxes, app.XStitch, app.YStitch, app.ZStitch, "LineWidth", app.LineThickness);
                            axis(app.UIAxes, 'equal');
                            Axes1_12Settings(app)

                        case "Stick diagram"
                            if app.nPOI{1} >= 2
                                % plot stick diagramms from element in grey
                                for i = 1:app.SegDens:size(app.X{app.e}, 1) % for i= all the rows (the size of the matrix)
                                    plot3 (app.UIAxes, app.X{app.e}(i,:), app.Y{app.e}(i,:), app.Z{app.e}(i,:), "Color", [0.75 0.75 0.75], "LineWidth", app.LineThickness) % plot each row independently
                                    hold(app.UIAxes, 'on')
                                end
                                % Overlay the stitch stick diagram in orange
                                for i = 1:app.SegDens:size(app.XStitch, 1) % for i= all the rows (the size of the matrix)
                                    plot3 (app.UIAxes, app.XStitch(i,:), app.YStitch(i,:), app.ZStitch(i,:), "Color", [0.8500 0.3250 0.0980], "LineWidth", app.LineThickness) % plot each row independently
                                    hold(app.UIAxes, 'on')
                                end
                                axis(app.UIAxes, 'equal');
                                Axes1_12Settings(app)
                            else
                                msgbox('Insufficient POIs to plot stick diagrams')
                            end
                    end
                else
                    msgbox('No coordinates available')
                end
            end
        end

        function SpreadOnY = SpreadOnY(app) %#ok<STOUT>

            app.retour = [];

            % spread each voltage channel over the y-axi
            rg = max(range(app.transport)); % find the max range in all channels
            app.retour = app.transport(:,1); % Assigne the first column of data to new

            for i = 1:size(app.transport,2) % for each column of voltage
                a = app.transport(:,i) + (rg.*i.*1.1); % multiply the column by range x 1,10
                app.retour = [app.retour,a]; % Add each new column to spreadvoltage
            end

            app.retour = app.retour (1:end,2:end); % remove the first column in new, to avoid getting n+1 channels
            app.retour = app.retour-(rg*1.1); % multiply all columns by rang x 1.10 to restore starting line

            %app.transport = [];
        end

        function xautocorrelation = xautocorrelation(app) %#ok<STOUT>
            % This function works for all parameters except EMG envelops because the
            % mean il aulready subtracted
            % Determine the column number of app.corrx depending on the POI selected
            [~, indexX] = ismember(app.POIX.Value, app.POIX.Items);
            app.corrx = app.corrx(:, indexX); % update app.corrx
            app.corrx = app.corrx-mean(app.corrx); % remove the mean bias

            % Calculate and plot autocorrelation
            [r, lags] = xcorr(app.corrx, app.Scaleoption.Value);
            plot (app.UIAxes14, lags, r);
            xlabel(app.UIAxes14, 'lag');
            ylabel(app.UIAxes14, 'Correlation values');

        end

        function yautocorrelation = yautocorrelation(app) %#ok<STOUT>
            % This function works for all parameters except EMG envelops because the
            % mean il already subtracted
            % Determine the column number of app.corrx depending on the POI selected
            [~, indexY] = ismember(app.POIY.Value, app.POIY.Items);
            app.corry = app.corry(:, indexY); % update app.corrx
            app.corry = app.corry-mean(app.corry); % remove the mean bias

            % Calculate and plot autocorrelation
            [r, lags] = xcorr(app.corry, app.Scaleoption.Value);
            plot (app.UIAxes14, lags, r);
            xlabel(app.UIAxes14, 'lag');
            ylabel(app.UIAxes14, 'Correlation values');

        end


        function UpdateAnimStep = UpdateAnimStep(app) %#ok<STOUT>
            app.XAnim = app.X;
            app.YAnim = app.Y;
            app.ZStep = app.Z;
            app.XStep = app.X;
            app.YStep = app.Y;
            app.ZStep = app.Z;
        end


        function Slider1Position = Slider1Position(app) %#ok<STOUT>
            Plotvalue = app.ChoosePlot;

            % define default line colors
            cmap = get(app.UIAxes12,'defaultAxesColorOrder'); %#ok<NASGU>

            % set the max value of the slider as the length of app.X

            if app.Is_stitch == "No"
                if ~isempty(app.X)
                    switch Plotvalue

                        case {"Single curve", "Trajectory", "Stick diagram", "Trajectory with stick diagram"} %
                            for h = app.P1
                                delete(h{1})
                            end
                            app.P1 = {};
                            max_value = length(app.X{app.e(1)}(:,:));
                            min_value = 1;
                            app.PositionSlider.Limits = [min_value max_value];
                            app.n29 = round(app.PositionSlider.Value)+app.n6; % extract the value of the slider
                            app.PositionField1.Value = app.n29; % Indicate position of the slider
                            hold(app.UIAxes, 'on')

                            for k=1:numel(app.e)

                                app.P1{k} = plot3(app.UIAxes, app.X{app.e(k)}(app.n29,:), app.Y{app.e(k)}(app.n29,:), app.Z{app.e(k)}(app.n29,:), ...
                                    "Color", 'r','Marker', app.Mtype, "MarkerEdgeColor",app.MarkerEdgeColor, ...
                                    "MarkerFaceColor", app.MarkerFaceColor, "MarkerSize", app.Msize, "LineWidth", app.LineThickness);
                            end
                            %axis(app.UIAxes, 'equal');
                            app.UIAxes.DataAspectRatio = [1 1 1];
                            Axes1_12Settings(app)
                            hold(app.UIAxes, 'off')

                            if ~isempty(app.e)
                                % do nothing, do not change the table
                            else
                                scroll(app.UITable1,'row', app.n29)
                                removeStyle(app.UITable1)
                                s= uistyle("BackgroundColor",[0.8 0.7 0.8]);
                                addStyle(app.UITable1,s,"row",app.n29);                                
                            end
                            app.PositionSlider.Value = app.n29;
                            app.n6 = 0;
                    end
                else
                    msgbox('No coordinates available')
                end

            else
                if numel(app.XStitch) >= 1
                    switch Plotvalue
                        case {"Single curve", "Trajectory", "Stick diagram", "Trajectory with stick diagram"} %

                            max_value = length(app.XStitch);
                            min_value = 1;
                            app.PositionSlider.Limits = [min_value max_value];
                            app.n29 = round(app.PositionSlider.Value)+app.n6; % extract the value of the slider
                            app.PositionField1.Value = app.n29; % Indicate position of the slider

                            % If app.P1 exist, delete it
                            if ishandle(app.P1)
                                delete(app.P1)
                            end

                            hold(app.UIAxes, 'on')
                            app.P1 = plot (app.UIAxes, app.XStitch(app.n29,:), app.YStitch(app.n29,:), '-o', 'MarkerEdgeColor','k', "MarkerSize", app.Msize);
                            axis(app.UIAxes, 'equal');
                            Axes1_12Settings(app)
                            hold(app.UIAxes, 'off')

                            scroll(app.UITable1,'row', app.n29)
                            removeStyle(app.UITable1)
                            s= uistyle("BackgroundColor",[0.8 0.7 0.8]);
                            addStyle(app.UITable1,s,"row",app.n29);
                            app.PositionSlider.Value = app.n29;
                            app.n6 = 0;
                    end
                else
                    msgbox('No stitch coordinates available')
                end
            end

        end

        function SelectColour = SelectColour(app) %#ok<STOUT>
            list = {'Red','Green','Blue',...
                'Cyan','Magenta','Yellow','Black','White'};
            [indx,~] = listdlg('ListString',list,"PromptString", {'Select a colour'}, 'SelectionMode','single',"ListSize", [150,110]);

            if isempty(indx)
            else
                if indx == 1
                    app.color = 'r';
                elseif indx == 2
                    app.color = 'g';
                elseif indx == 3
                    app.color = 'b';
                elseif indx == 4
                    app.color = 'c';
                elseif indx == 5
                    app.color = 'm';
                elseif indx == 6
                    app.color = 'y';
                elseif indx == 7
                    app.color = 'k';
                elseif indx == 8
                    app.color = 'w';
                end
            end

        end

        function ShowAllPositions = ShowAllPositions(app) %#ok<STOUT>
            cla(app.UIAxes13); cla(app.UIAxes13,'reset') % reset uiaxes

            % replot the stick diagram for all positions
            GaitPlot(app);

            % delete the selected position (segment)
            delete(app.P3);

            % plot the vectors that correspond to the recording positiond
            hold(app.UIAxes13, 'on')

            if isempty (app.e) || numel(app.X_HS_position) < app.e
            else
                for j = 1:size(app.X_HS_position{app.e}, 1)
                    plot (app.UIAxes13, app.X_HS_position{app.e}(j,:), app.Y_HS_position{app.e}(j,:), '-o', 'Color', app.HeelstrikeColor, 'MarkerEdgeColor','k', "MarkerSize", app.Msize);
                end
            end

            if isempty (app.e) || numel(app.X_HO_position) < app.e
            else
                for j = 1:size(app.X_HO_position{app.e}, 1)
                    plot (app.UIAxes13, app.X_HO_position{app.e}(j,:), app.Y_HO_position{app.e}(j,:), '-o', 'Color', app.HeeloffColor,'MarkerEdgeColor', 'k', "MarkerSize", app.Msize);
                end
            end

            if isempty (app.e) || numel(app.X_TO_position) < app.e
            else
                for j = 1:size(app.X_TO_position{app.e}, 1)
                    plot (app.UIAxes13, app.X_TO_position{app.e}(j,:), app.Y_TO_position{app.e}(j,:), '-o', 'Color', app.ToeoffColor, 'MarkerEdgeColor', 'k', "MarkerSize", app.Msize);
                end
            end

            if isempty (app.e) || numel(app.X_MTL_position) < app.e
            else
                for j = 1:size(app.X_MTL_position{app.e}, 1)
                    plot (app.UIAxes13, app.X_MTL_position{app.e}(j,:), app.Y_MTL_position{app.e}(j,:), '-o', 'Color', app.MaxtoeliftColor , 'MarkerEdgeColor', 'k', "MarkerSize", app.Msize);
                end
            end
            hold(app.UIAxes13, 'off')

            % call the function to fill gait table
            FillGaitTable(app);
        end


        function RemoveNaN = RemoveNAN(app) %#ok<STOUT>
            if any(isnan(app.x1), 'all')
                % Question
                answer = questdlg('NaN are found in your coordinates. The analysis cannot fully with NaN. Would you like to remove them?', ...
                    'Remove NaN', 'Yes','No');
                % Answer
                switch answer
                    case 'Yes'
                        app.x1 = app.x1(~isnan(app.x1));
                    case 'No'
                end
            elseif any(isnan(app.y1), 'all')
                % Question
                answer = questdlg('NaN are found in your coordinates. The analysis cannot fully with NaN. Would you like to remove them?', ...
                    'Remove NaN', 'Yes','No');
                % Answer
                switch answer
                    case 'Yes'
                        app.y1 = app.y1(~isnan(app.y1));
                    case 'No'
                end
            elseif any(isnan(app.x2HO), 'all')
                % Question
                answer = questdlg('NaN are found in your coordinates. The analysis cannot fully with NaN. Would you like to remove them?', ...
                    'Remove NaN', 'Yes','No');
                % Answer
                switch answer
                    case 'Yes'
                        app.x2 = app.x2(~isnan(app.x2));
                    case 'No'
                end
            elseif any(isnan(app.y2), 'all')
                % Question
                answer = questdlg('NaN are found in your coordinates. The analysis cannot fully with NaN. Would you like to remove them?', ...
                    'Remove NaN', 'Yes','No');
                % Answer
                switch answer
                    case 'Yes'
                        app.y2 = app.y2(~isnan(app.y2));
                    case 'No'
                end

            end
        end


        function results = AnalyseKinematic(app) %#ok<STOUT>
            if numel(app.X) >=1 % if there data in app.X
                if isempty(app.AbsoluteValue) || isempty(app.AngleUnit) % if a choice was NOT previously made
                    prompt = {'Use absolute values for speed and acceleration (y/n)','Angle unit in Degrees or Radians (D/R)'};
                    dlgtitle = 'Calculation settings';
                    dims = [1 45];
                    definput = {'y','D'};
                    answer = inputdlg(prompt,dlgtitle,dims,definput);

                    if isempty(answer)
                        app.AbsoluteValue = "Yes";
                        app.AngleUnit = 'Degrees';
                    else
                        if char(answer(1)) == 'n'
                            app.AbsoluteValue = "No";
                        else
                            app.AbsoluteValue = "Yes";
                        end

                        if char(answer(2)) == 'R'
                            app.AngleUnit = 'Radians';
                        else
                            app.AngleUnit = 'Degrees';
                        end
                    end
                else
                end

                % Select the element according to the dropdown item
                [~, idx] = ismember(app.ElementDropDown.Value, app.ElementName);
                app.e = idx;


                % calculate the kinematic values
                % waitbar
                wb = waitbar(0.2,'Please wait...');
                waitbar(.2,wb,'Analysing Trajectory');

                % Trajectory
                % Euclidean distance
                if  app.AbsoluteValue == "Yes"
                    dx = abs(diff(app.X{app.e}));
                    dy = abs(diff(app.Y{app.e}));
                    dz = abs(diff(app.Z{app.e}));
                elseif app.AbsoluteValue == "No"
                    dx = diff(app.X{app.e});
                    dy= diff(app.Y{app.e});
                    dz= diff(app.Z{app.e});
                end
                dxy = sqrt(dx.^2 + dy.^2); % calculates dxy

                if app.Arb_Z == 1
                    dz = NaN(size(dz));
                    dxz = NaN(size(dx));
                    dyz = NaN(size(dx));
                    dxyz = NaN(size(dx));
                else
                    dxz = sqrt(dx.^2 + dz.^2); % calculates dxz
                    dyz = sqrt(dy.^2 + dz.^2); % calculates dyz
                    dxyz = sqrt(dx.^2 + dy.^2 + dz.^2);
                end

                app.dX{app.e} = dx; % copy in cell array
                app.dY{app.e} = dy;
                app.dZ{app.e} = dz;
                app.dXY{app.e} = dxy;
                app.dXZ{app.e} = dxz;
                app.dYZ{app.e} = dyz;
                app.dXYZ{app.e} = dxyz;

                % Calculate descriptive statistics for the distance and copy
                % them in a single cell array of {app.e,15}
                app.DistanceStat {app.e,1} = min(dx);
                app.DistanceStat {app.e,2} = max(dx);
                app.DistanceStat {app.e,3} = mean(dx);
                app.DistanceStat {app.e,4} = median(dx);
                app.DistanceStat {app.e,5} = sum(dx);

                app.DistanceStat {app.e,6} = min(dy);
                app.DistanceStat {app.e,7} = max(dy);
                app.DistanceStat {app.e,8} = mean(dy);
                app.DistanceStat {app.e,9} = median(dy);
                app.DistanceStat {app.e,10} = sum(dy);

                app.DistanceStat {app.e,11} = min(dz);
                app.DistanceStat {app.e,12} = max(dz);
                app.DistanceStat {app.e,13} = mean(dz);
                app.DistanceStat {app.e,14} = median(dz);
                app.DistanceStat {app.e,15} = sum(dz);

                app.DistanceStat {app.e,16} = min(dxy);
                app.DistanceStat {app.e,17} = max(dxy);
                app.DistanceStat {app.e,18} = mean(dxy);
                app.DistanceStat {app.e,19} = median(dxy);
                app.DistanceStat {app.e,20} = sum(dxy);

                app.DistanceStat {app.e,21} = min(dxz);
                app.DistanceStat {app.e,22} = max(dxz);
                app.DistanceStat {app.e,23} = mean(dxz);
                app.DistanceStat {app.e,24} = median(dxz);
                app.DistanceStat {app.e,25} = sum(dxz);

                app.DistanceStat {app.e,26} = min(dyz);
                app.DistanceStat {app.e,27} = max(dyz);
                app.DistanceStat {app.e,28} = mean(dyz);
                app.DistanceStat {app.e,29} = median(dyz);
                app.DistanceStat {app.e,30} = sum(dyz);

                app.DistanceStat {app.e,31} = min(dxyz);
                app.DistanceStat {app.e,32} = max(dxyz);
                app.DistanceStat {app.e,33} = mean(dxyz);
                app.DistanceStat {app.e,34} = median(dxyz);
                app.DistanceStat {app.e,35} = sum(dxyz);

                %% Speed

                waitbar(0.4,wb,'Calculating speed');

                dt = diff(app.T{app.e});
                if app.AbsoluteValue == "Yes"
                    vx = abs(dx./dt);
                    vy = abs(dy./dt);
                    vz = abs(dz./dt);
                    vxy = abs(dxy./dt);
                    vxz = abs(dxz./dt);
                    vyz = abs(dyz./dt);
                    vxyz = abs(dxyz./dt);
                elseif app.AbsoluteValue == "No"
                    vx = (dx./dt);
                    vy = (dy./dt);
                    vz = (dz./dt);
                    vxy = (dxy./dt);
                    vxz = (dxz./dt);
                    vyz = (dyz./dt);
                    vxyz = (dxyz./dt);
                end

                a = rmmissing(vx); % remove NaN for calculation
                app.VX{app.e} = a; % copy in the array VX
                b = rmmissing(vy);
                app.VY{app.e} = b;
                d = rmmissing(vxy); % remove NaN for calculation
                app.VXY{app.e} = d;

                if app.Arb_Z == 0 % if the Z matrix is real
                    c = rmmissing(vz); % remove NaN for calculation
                    app.VZ{app.e} = c;
                    f = rmmissing(vxz); % remove NaN for calculation
                    app.VXZ{app.e} = f;
                    g = rmmissing(vyz); % remove NaN for calculation
                    app.VYZ{app.e} = g;
                    h = rmmissing(vxyz); % remove NaN for calculation
                    app.VXYZ{app.e} = h;
                else
                    app.VZ{app.e} = NaN(size(app.VX{app.e}));
                    app.VXZ{app.e} = NaN(size(app.VX{app.e}));
                    app.VYZ{app.e} = NaN(size(app.VX{app.e}));
                    app.VXYZ{app.e} = NaN(size(app.VX{app.e}));
                end

                % stats on vx
                app.VelocityStat {app.e,1} = min(a);
                app.VelocityStat {app.e,2} = max(a);
                app.VelocityStat {app.e,3} = mean(a);
                app.VelocityStat {app.e,4} = median(a);
                app.VelocityStat {app.e,5} = mode(nearest(a));

                % stats on vy
                app.VelocityStat {app.e,6} = min(b);
                app.VelocityStat {app.e,7} = max(b);
                app.VelocityStat {app.e,8} = mean(b);
                app.VelocityStat {app.e,9} = median(b);
                app.VelocityStat {app.e,10} = mode(nearest(b));

                % stats on vxy
                app.VelocityStat {app.e,16} = min(d);
                app.VelocityStat {app.e,17} = max(d);
                app.VelocityStat {app.e,18} = mean(d);
                app.VelocityStat {app.e,19} = median(d);
                app.VelocityStat {app.e,20} = mode(nearest(d));

                if app.Arb_Z == 0 % if the Z matrix is real
                    % stats on vz
                    app.VelocityStat {app.e,11} = min(c);
                    app.VelocityStat {app.e,12} = max(c);
                    app.VelocityStat {app.e,13} = mean(c);
                    app.VelocityStat {app.e,14} = median(c);
                    app.VelocityStat {app.e,15} = mode(nearest(c));

                    % stats on vxz
                    app.VelocityStat {app.e,21} = min(f);
                    app.VelocityStat {app.e,22} = max(f);
                    app.VelocityStat {app.e,23} = mean(f);
                    app.VelocityStat {app.e,24} = median(f);
                    app.VelocityStat {app.e,25} = mode(nearest(f));

                    % stats on vyz
                    app.VelocityStat {app.e,26} = min(g);
                    app.VelocityStat {app.e,27} = max(g);
                    app.VelocityStat {app.e,28} = mean(g);
                    app.VelocityStat {app.e,29} = median(g);
                    app.VelocityStat {app.e,30} = mode(nearest(g));

                    % stats on vxyz
                    app.VelocityStat {app.e,31} = min(h);
                    app.VelocityStat {app.e,32} = max(h);
                    app.VelocityStat {app.e,33} = mean(h);
                    app.VelocityStat {app.e,34} = median(h);
                    app.VelocityStat {app.e,35} = mode(nearest(h));
                    clear a b c d f g h;
                else
                    %create NaN matrixes
                    J = NaN(size(max(a)));
                    % stats on vz
                    app.VelocityStat {app.e,11} = J;
                    app.VelocityStat {app.e,12} = J;
                    app.VelocityStat {app.e,13} = J;
                    app.VelocityStat {app.e,14} = J;
                    app.VelocityStat {app.e,15} = J;

                    % stats on vxz
                    app.VelocityStat {app.e,21} = J;
                    app.VelocityStat {app.e,22} = J;
                    app.VelocityStat {app.e,23} = J;
                    app.VelocityStat {app.e,24} = J;
                    app.VelocityStat {app.e,25} = J;

                    % stats on vyz
                    app.VelocityStat {app.e,26} = J;
                    app.VelocityStat {app.e,27} = J;
                    app.VelocityStat {app.e,28} = J;
                    app.VelocityStat {app.e,29} = J;
                    app.VelocityStat {app.e,30} = J;

                    % stats on vxyz
                    app.VelocityStat {app.e,31} = J;
                    app.VelocityStat {app.e,32} = J;
                    app.VelocityStat {app.e,33} = J;
                    app.VelocityStat {app.e,34} = J;
                    app.VelocityStat {app.e,35} = J;
                    clear a b c d f g h;
                end

                %% Acceleration
                if app.AbsoluteValue == "Yes"
                    dvx = abs(diff(vx));
                    dvy = abs(diff(vy));
                    dvz = abs(diff(vz));
                    dvxy = abs(diff(vxy));
                    dvxz = abs(diff(vxz));
                    dvyz = abs((diff(vyz)));
                    dvxyz = abs(diff(vxyz));
                elseif app.AbsoluteValue == "No"
                    dvx = diff(vx);
                    dvy = diff(vy);
                    dvz = diff(vz);
                    dvxy = diff(vxy);
                    dvxz = diff(vxz);
                    dvyz = diff(vyz);
                    dvxyz = diff(vxyz);
                end

                a = dvx./dt(2,:);
                a = rmmissing (a); % remove NaN for calculation
                app.AX{app.e} = a; % copy in the array AX

                b = dvy./dt(2,:);
                b = rmmissing (b);
                app.AY{app.e} = b;

                d = dvxy./dt(2,:);
                d = rmmissing (d);
                app.AXY{app.e} = d;

                if app.Arb_Z == 0 % if the Z matrix is real
                    c = dvz./dt(2,:);
                    c = rmmissing (c);
                    app.AZ{app.e} = c;

                    f = dvxz./dt(2,:);
                    f = rmmissing (f);
                    app.AXZ{app.e} = f;

                    g = dvyz./dt(2,:);
                    g = rmmissing (g);
                    app.AYZ{app.e} = g;

                    h = dvxyz./dt(2,:);
                    h = rmmissing (h);
                    app.AXYZ{app.e} = h;
                else
                    app.AZ{app.e} = NaN(size(app.AX{app.e}));
                    app.AXZ{app.e} = NaN(size(app.AX{app.e}));
                    app.AYZ{app.e} = NaN(size(app.AX{app.e}));
                    app.AXYZ{app.e} = NaN(size(app.AX{app.e}));
                end

                % stats on AX
                app.AccelerationStat {app.e,1} = min(a);
                app.AccelerationStat {app.e,2} = max(a);
                app.AccelerationStat {app.e,3} = mean(a);
                app.AccelerationStat {app.e,4} = median(a);
                app.AccelerationStat {app.e,5} = mode(nearest(a));

                % stats on AY
                app.AccelerationStat {app.e,6} = min(b);
                app.AccelerationStat {app.e,7} = max(b);
                app.AccelerationStat {app.e,8} = mean(b);
                app.AccelerationStat {app.e,9} = median(b);
                app.AccelerationStat {app.e,10} = mode(nearest(b));

                % stats on AXY
                app.AccelerationStat {app.e,16} = min(d);
                app.AccelerationStat {app.e,17} = max(d);
                app.AccelerationStat {app.e,18} = mean(d);
                app.AccelerationStat {app.e,19} = median(d);
                app.AccelerationStat {app.e,20} = mode(nearest(d));

                if app.Arb_Z == 0 % if the Z matrix is real
                    % stats on vz

                    % stats on AZ
                    app.AccelerationStat {app.e,11} = min(c);
                    app.AccelerationStat {app.e,12} = max(c);
                    app.AccelerationStat {app.e,13} = mean(c);
                    app.AccelerationStat {app.e,14} = median(c);
                    app.AccelerationStat {app.e,15} = mode(nearest(c));

                    % stats on AXZ
                    app.AccelerationStat {app.e,21} = min(f);
                    app.AccelerationStat {app.e,22} = max(f);
                    app.AccelerationStat {app.e,23} = mean(f);
                    app.AccelerationStat {app.e,24} = median(f);
                    app.AccelerationStat {app.e,25} = mode(nearest(f));

                    % stats on AYZ
                    app.AccelerationStat {app.e,26} = min(g);
                    app.AccelerationStat {app.e,27} = max(g);
                    app.AccelerationStat {app.e,28} = mean(g);
                    app.AccelerationStat {app.e,29} = median(g);
                    app.AccelerationStat {app.e,30} = mode(nearest(g));

                    % stats on AXYZ
                    app.AccelerationStat {app.e,31} = min(h);
                    app.AccelerationStat {app.e,32} = max(h);
                    app.AccelerationStat {app.e,33} = mean(h);
                    app.AccelerationStat {app.e,34} = median(h);
                    app.AccelerationStat {app.e,35} = mode(nearest(h));
                    clear a b c d f g h;

                else
                    %create NaN matrixes
                    J = NaN(size(max(a)));
                    % stats on vz
                    app.AccelerationStat {app.e,11} = J;
                    app.AccelerationStat {app.e,12} = J;
                    app.AccelerationStat {app.e,13} = J;
                    app.AccelerationStat {app.e,14} = J;
                    app.AccelerationStat {app.e,15} = J;

                    % stats on vxz
                    app.AccelerationStat {app.e,21} = J;
                    app.AccelerationStat {app.e,22} = J;
                    app.AccelerationStat {app.e,23} = J;
                    app.AccelerationStat {app.e,24} = J;
                    app.AccelerationStat {app.e,25} = J;

                    % stats on vyz
                    app.AccelerationStat {app.e,26} = J;
                    app.AccelerationStat {app.e,27} = J;
                    app.AccelerationStat {app.e,28} = J;
                    app.AccelerationStat {app.e,29} = J;
                    app.AccelerationStat {app.e,30} = J;

                    % stats on vxyz
                    app.AccelerationStat {app.e,31} = J;
                    app.AccelerationStat {app.e,32} = J;
                    app.AccelerationStat {app.e,33} = J;
                    app.AccelerationStat {app.e,34} = J;
                    app.AccelerationStat {app.e,35} = J;
                    clear a b c d f g h;
                end

                waitbar(0.5,wb,'Calculating angle');
                %% Angles on XY plan
                if app.nPOI{app.e} >= 3 % it is necessary to have at least 3 points + time = 4 columns

                    % Calulate angles with a for loop outputed in a table and converted to an array for plotting
                    lim = size(app.X{app.e}, 2)-2;  % define the boundaries for the k loop
                    Tb_angle = array2table(zeros(length (app.X{app.e}), lim)); % create table filled vwith 0 of the correct dimensions

                    if app.AngleUnit == "Degrees"
                        for k = 1:lim
                            ab = sqrt(((app.X{app.e}(:,k)-app.X{app.e}(:,1+k)).^2)+((app.Y{app.e}(:,k)-app.Y{app.e}(:,1+k)).^2));
                            ac= sqrt(((app.X{app.e}(:,k)-app.X{app.e}(:,2+k)).^2)+((app.Y{app.e}(:,k)-app.Y{app.e}(:,2+k)).^2));
                            bc = sqrt(((app.X{app.e}(:,1+k)-app.X{app.e}(:,2+k)).^2)+((app.Y{app.e}(:,1+k)-app.Y{app.e}(:,2+k)).^2));
                            abc = acosd (((ab.^2+bc.^2)-ac.^2)./(2*ab.*bc)); % acosd is given in degrees
                            Tb_angle.(k) = abc;
                            app.AnglesXY{app.e} = table2array (Tb_angle); % convert table to array for ploting;
                        end

                    elseif app.AngleUnit == "Radians"
                        for k = 1:lim
                            ab = sqrt(((app.X{app.e}(:,k)-app.X{app.e}(:,1+k)).^2)+((app.Y{app.e}(:,k)-app.Y{app.e}(:,1+k)).^2));
                            ac= sqrt(((app.X{app.e}(:,k)-app.X{app.e}(:,2+k)).^2)+((app.Y{app.e}(:,k)-app.Y{app.e}(:,2+k)).^2));
                            bc = sqrt(((app.X{app.e}(:,1+k)-app.X{app.e}(:,2+k)).^2)+((app.Y{app.e}(:,1+k)-app.Y{app.e}(:,2+k)).^2));
                            abc = acos (((ab.^2+bc.^2)-ac.^2)./(2*ab.*bc)); % acos is given in radians
                            Tb_angle.(k) = abc;
                            app.AnglesXY{app.e} = table2array (Tb_angle); % convert table to array for ploting;
                        end
                    end

                    % Descriptive statistics for angles on XY plan
                    app.AngleStat {app.e,1} = min(app.AnglesXY{app.e});
                    app.AngleStat {app.e,2} = max(app.AnglesXY{app.e});
                    app.AngleStat {app.e,3} = mean(app.AnglesXY{app.e});
                    app.AngleStat {app.e,4} = median(app.AnglesXY{app.e});
                    app.AngleStat {app.e,5} = mode(nearest(app.AnglesXY{app.e}));

                    %% Angles on XZ plan

                    if app.Arb_Z == 0 % if the Z matrix is real

                        % Calulate angles with a for loop outputed in a table and converted to an array for plotting
                        lim = size(app.X{app.e}, 2)-2;  % define the boundaries for the k loop
                        Tb_angle = array2table(zeros(length (app.X{app.e}), lim)); % create table filled vwith 0 of the correct dimensions

                        if app.AngleUnit == "Degrees"
                            for k = 1:lim
                                ab = sqrt(((app.X{app.e}(:,k)-app.X{app.e}(:,1+k)).^2)+((app.Z{app.e}(:,k)-app.Z{app.e}(:,1+k)).^2));
                                ac= sqrt(((app.X{app.e}(:,k)-app.X{app.e}(:,2+k)).^2)+((app.Z{app.e}(:,k)-app.Z{app.e}(:,2+k)).^2));
                                bc = sqrt(((app.X{app.e}(:,1+k)-app.X{app.e}(:,2+k)).^2)+((app.Z{app.e}(:,1+k)-app.Z{app.e}(:,2+k)).^2));
                                abc = acosd (((ab.^2+bc.^2)-ac.^2)./(2*ab.*bc)); % acosd is given in degrees
                                Tb_angle.(k) = abc;
                                app.AnglesXZ{app.e} = table2array (Tb_angle); % convert table to array for ploting;
                            end

                        elseif app.AngleUnit == "Radians"
                            for k = 1:lim
                                ab = sqrt(((app.X{app.e}(:,k)-app.X{app.e}(:,1+k)).^2)+((app.Z{app.e}(:,k)-app.Z{app.e}(:,1+k)).^2));
                                ac= sqrt(((app.X{app.e}(:,k)-app.X{app.e}(:,2+k)).^2)+((app.Z{app.e}(:,k)-app.Z{app.e}(:,2+k)).^2));
                                bc = sqrt(((app.X{app.e}(:,1+k)-app.X{app.e}(:,2+k)).^2)+((app.Z{app.e}(:,1+k)-app.Z{app.e}(:,2+k)).^2));
                                abc = acos (((ab.^2+bc.^2)-ac.^2)./(2*ab.*bc)); % acos is given in radians
                                Tb_angle.(k) = abc;
                                app.AnglesXZ{app.e} = table2array (Tb_angle); % convert table to array for ploting;
                            end
                        end

                        % Descriptive statistics for angles on XZ plan
                        app.AngleStat {app.e,6} = min(app.AnglesXZ{app.e});
                        app.AngleStat {app.e,7} = max(app.AnglesXZ{app.e});
                        app.AngleStat {app.e,8} = mean(app.AnglesXZ{app.e});
                        app.AngleStat {app.e,9} = median(app.AnglesXZ{app.e});
                        app.AngleStat {app.e,10} = mode(nearest(app.AnglesXZ{app.e}));

                    else
                        app.AnglesXZ{app.e} = NaN(size(app.AnglesXY{app.e}));
                        app.AngleStat {app.e,6} = NaN;
                        app.AngleStat {app.e,7} = NaN;
                        app.AngleStat {app.e,8} = NaN;
                        app.AngleStat {app.e,9} = NaN;
                        app.AngleStat {app.e,10} = NaN;
                    end

                    %% Angles on YZ plan
                    if app.Arb_Z == 0 % if the Z matrix is real

                        % Calulate angles with a for loop outputed in a table and converted to an array for plotting
                        lim = size(app.Y{app.e}, 2)-2;  % define the boundaries for the k loop
                        Tb_angle = array2table(zeros(length (app.Y{app.e}), lim)); % create table filled vwith 0 of the correct dimensions

                        if app.AngleUnit == "Degrees"
                            for k = 1:lim
                                ab = sqrt(((app.Y{app.e}(:,k)-app.Y{app.e}(:,1+k)).^2)+((app.Z{app.e}(:,k)-app.Z{app.e}(:,1+k)).^2));
                                ac= sqrt(((app.Y{app.e}(:,k)-app.Y{app.e}(:,2+k)).^2)+((app.Z{app.e}(:,k)-app.Z{app.e}(:,2+k)).^2));
                                bc = sqrt(((app.Y{app.e}(:,1+k)-app.Y{app.e}(:,2+k)).^2)+((app.Z{app.e}(:,1+k)-app.Z{app.e}(:,2+k)).^2));
                                abc = acosd (((ab.^2+bc.^2)-ac.^2)./(2*ab.*bc)); % acosd is given in degrees
                                Tb_angle.(k) = abc;
                                app.AnglesYZ{app.e} = table2array (Tb_angle); % convert table to array for ploting;
                            end

                        elseif app.AngleUnit == "Radians"
                            for k = 1:lim
                                ab = sqrt(((app.Y{app.e}(:,k)-app.Y{app.e}(:,1+k)).^2)+((app.Z{app.e}(:,k)-app.Z{app.e}(:,1+k)).^2));
                                ac= sqrt(((app.Y{app.e}(:,k)-app.Y{app.e}(:,2+k)).^2)+((app.Z{app.e}(:,k)-app.Z{app.e}(:,2+k)).^2));
                                bc = sqrt(((app.Y{app.e}(:,1+k)-app.Y{app.e}(:,2+k)).^2)+((app.Z{app.e}(:,1+k)-app.Z{app.e}(:,2+k)).^2));
                                abc = acos (((ab.^2+bc.^2)-ac.^2)./(2*ab.*bc)); % acos is given in radians
                                Tb_angle.(k) = abc;
                                app.AnglesYZ{app.e} = table2array (Tb_angle); % convert table to array for ploting;
                            end
                        end

                        % Descriptive statistics for angles on YZ plan
                        app.AngleStat {app.e,11} = min(app.AnglesYZ{app.e});
                        app.AngleStat {app.e,12} = max(app.AnglesYZ{app.e});
                        app.AngleStat {app.e,13} = mean(app.AnglesYZ{app.e});
                        app.AngleStat {app.e,14} = median(app.AnglesYZ{app.e});
                        app.AngleStat {app.e,15} = mode(nearest(app.AnglesYZ{app.e}));

                    else
                        app.AnglesYZ{app.e} = NaN(size(app.AnglesXY{app.e}));
                        app.AngleStat {app.e,11} = NaN;
                        app.AngleStat {app.e,12} = NaN;
                        app.AngleStat {app.e,13} = NaN;
                        app.AngleStat {app.e,14} = NaN;
                        app.AngleStat {app.e,15} = NaN;
                    end


                    % Angular velocity ω
                    %% angular velocity on XY plan
                    waitbar(.8,wb,'Calculating anglular velocity');
                    dO = abs(diff(app.AnglesXY{app.e}));
                    app.AngVeloc_XY{app.e} = dO./dt;
                    clear dO;

                    app.AngVelocStat {app.e,1} = min(app.AngVeloc_XY{app.e});
                    app.AngVelocStat {app.e,2} = max(app.AngVeloc_XY{app.e});
                    app.AngVelocStat {app.e,3} = mean(app.AngVeloc_XY{app.e});
                    app.AngVelocStat {app.e,4} = median(app.AngVeloc_XY{app.e});
                    app.AngVelocStat {app.e,5} = mode(nearest(app.AngVeloc_XY{app.e}));

                    %% angular velocity on XZ plan

                    if app.Arb_Z == 0 % if the Z matrix is real
                        dO = abs(diff(app.AnglesXZ{app.e}));
                        app.AngVeloc_XZ{app.e} = dO./dt;
                        clear dO;

                        app.AngVelocStat {app.e,6} = min(app.AngVeloc_XZ{app.e});
                        app.AngVelocStat {app.e,7} = max(app.AngVeloc_XZ{app.e});
                        app.AngVelocStat {app.e,8} = mean(app.AngVeloc_XZ{app.e});
                        app.AngVelocStat {app.e,9} = median(app.AngVeloc_XZ{app.e});
                        app.AngVelocStat {app.e,10} = mode(nearest(app.AngVeloc_XZ{app.e}));

                    else
                        app.AngVeloc_XZ{app.e} = NaN(size(app.AngVeloc_XY{app.e}));
                        app.AngVelocStat {app.e,6} = NaN;
                        app.AngVelocStat {app.e,7} = NaN;
                        app.AngVelocStat {app.e,8} = NaN;
                        app.AngVelocStat {app.e,9} = NaN;
                        app.AngVelocStat {app.e,10} = NaN;
                    end

                    %% angular velocity on YZ plan

                    if app.Arb_Z == 0 % if the Z matrix is real
                        dO = abs(diff(app.AnglesYZ{app.e}));
                        app.AngVeloc_YZ{app.e} = dO./dt;
                        clear dO;

                        app.AngVelocStat {app.e,11} = min(app.AngVeloc_YZ{app.e});
                        app.AngVelocStat {app.e,12} = max(app.AngVeloc_YZ{app.e});
                        app.AngVelocStat {app.e,13} = mean(app.AngVeloc_YZ{app.e});
                        app.AngVelocStat {app.e,14} = median(app.AngVeloc_YZ{app.e});
                        app.AngVelocStat {app.e,15} = mode(nearest(app.AngVeloc_YZ{app.e}));
                    else
                        app.AngVeloc_YZ{app.e} = NaN(size(app.AngVeloc_XY{app.e}));
                        app.AngVelocStat {app.e,11} = NaN;
                        app.AngVelocStat {app.e,12} = NaN;
                        app.AngVelocStat {app.e,13} = NaN;
                        app.AngVelocStat {app.e,14} = NaN;
                        app.AngVelocStat {app.e,15} = NaN;
                    end

                    % Angular acceleration α

                    % Angular acceleration on XY plan
                    dw = app.AngVeloc_XY{app.e};
                    app.AngAcc_XY{app.e} = abs(diff(dw))./(dt(2,:));

                    app.AngAccStat {app.e,1} = min(app.AngAcc_XY{app.e});
                    app.AngAccStat {app.e,2} = max(app.AngAcc_XY{app.e});
                    app.AngAccStat {app.e,3} = mean(app.AngAcc_XY{app.e});
                    app.AngAccStat {app.e,4} = median(app.AngAcc_XY{app.e});
                    app.AngAccStat {app.e,5} = mode(nearest(app.AngAcc_XY{app.e}));


                    % Angular acceleration on XZ plan
                    if app.Arb_Z == 0 % if the Z matrix is real
                        clear dw
                        dw = app.AngVeloc_XZ{app.e};
                        app.AngAcc_XZ{app.e} = abs(diff(dw))./(dt(2,:));

                        app.AngAccStat {app.e,6} = min(app.AngAcc_XZ{app.e});
                        app.AngAccStat {app.e,7} = max(app.AngAcc_XZ{app.e});
                        app.AngAccStat {app.e,8} = mean(app.AngAcc_XZ{app.e});
                        app.AngAccStat {app.e,9} = median(app.AngAcc_XZ{app.e});
                        app.AngAccStat {app.e,10} = mode(nearest(app.AngAcc_XZ{app.e}));
                    else
                        app.AngAcc_XZ{app.e} = NaN(size(app.AngAcc_XY{app.e}));
                        app.AngAccStat {app.e,6} = NaN;
                        app.AngAccStat {app.e,7} = NaN;
                        app.AngAccStat {app.e,8} = NaN;
                        app.AngAccStat {app.e,9} = NaN;
                        app.AngAccStat {app.e,10} = NaN;
                    end

                    % Angular acceleration on YZ plan
                    if app.Arb_Z == 0 % if the Z matrix is real
                        clear dw
                        dw = app.AngVeloc_YZ{app.e};
                        app.AngAcc_YZ{app.e} = abs(diff(dw))./(dt(2,:));

                        app.AngAccStat {app.e,11} = min(app.AngAcc_YZ{app.e});
                        app.AngAccStat {app.e,12} = max(app.AngAcc_YZ{app.e});
                        app.AngAccStat {app.e,13} = mean(app.AngAcc_YZ{app.e});
                        app.AngAccStat {app.e,14} = median(app.AngAcc_YZ{app.e});
                        app.AngAccStat {app.e,15} = mode(nearest(app.AngAcc_YZ{app.e}));
                    else
                        app.AngAcc_YZ{app.e} = NaN(size(app.AngAcc_XY{app.e}));
                        app.AngAccStat {app.e,11} = NaN;
                        app.AngAccStat {app.e,12} = NaN;
                        app.AngAccStat {app.e,13} = NaN;
                        app.AngAccStat {app.e,14} = NaN;
                        app.AngAccStat {app.e,15} = NaN;
                    end
                else
                end

                %% waitbar update
                waitbar(1,wb,'Analysis completed');
                pause(0.4);
                close(wb);
            else
                msgbox('No coordinates available')
            end
        end


        function results = UpdateTable(app) %#ok<STOUT>
            % check number of elements
            if length (app.e) > 1
                app.UITable1.Data = [];
                app.UITable1.ColumnName = "No display with multiple selections";
            else
                % create the recording number column
                m = size(app.X{app.e});
                app.RecNumber = transpose(1+(0:m-1));

                switch app.SelectXY.Value

                    case "X"
                        xname = app.colname{app.e};
                        app.UITable1.Data = [app.RecNumber, app.T{app.e}, app.X{app.e}];
                        app.UITable1.ColumnName = ["Number", "time", xname];

                    case "Y"
                        yname = app.colname{app.e};
                        app.UITable1.Data = [app.RecNumber, app.T{app.e}, app.Y{app.e}];
                        app.UITable1.ColumnName = ["Number","time", yname];

                    case "Z"
                        zname = app.colname{app.e};
                        app.UITable1.Data = [app.RecNumber, app.T{app.e}, app.Z{app.e}];
                        app.UITable1.ColumnName = ["Number","time", zname];

                    case "XY"

                        % Interleave x and Y
                        xy_interleave = reshape([app.X{app.e};app.Y{app.e}], size(app.X{app.e},1), []);

                        % create colomn names
                        xcol= strcat('x-', app.colname{app.e});
                        ycol= strcat('y-', app.colname{app.e});
                        xyzcol= reshape([xcol;ycol], size(xcol,1), []);
                        app.IntColname = ["Number", "time", xyzcol];

                        % fill the table
                        tableInput = [app.RecNumber, app.T{app.e}, xy_interleave];
                        app.UITable1.Data = tableInput;
                        app.UITable1.ColumnName = app.IntColname;

                    case "XYZ"
                        % Interleave x, Y and z
                        xyz_interleave = reshape([app.X{app.e};app.Y{app.e};app.Z{app.e}], size(app.X{app.e},1), []);

                        % create colomn names
                        xcol= strcat('x-', app.colname{app.e});
                        ycol= strcat('y-', app.colname{app.e});
                        zcol= strcat('z-', app.colname{app.e});
                        xyzcol= reshape([xcol;ycol;zcol], size(xcol,1), []);
                        app.IntColname = ["Number", "time", xyzcol];

                        % fill the table
                        tableInput = [app.RecNumber, app.T{app.e}, xyz_interleave];
                        app.UITable1.Data = tableInput;
                        app.UITable1.ColumnName = app.IntColname;
                end
            end
        end

        function results = UpdateElementTable(app) %#ok<STOUT>
            if numel(app.X) >=1 && ~isempty(app.e)
                % update element table 1
                app.UITableElement.Data = cellstr(app.ElementName);
               

                % update element table 2
                app.UITableElement_2.Data = cellstr(app.ElementName);
                %app.UITableElement_2.SelectionType = 'row';
                %app.UITableElement_2.Multiselect = 'on';

                % update dropdown menus
                app.Choose_a_EOI.Items = app.ElementName;
                app.ElementDropDown_4.Items = app.ElementName;
                app.ElementDropDownX.Items = app.ElementName;
                app.ElementDropDownX_2.Items = app.ElementName;
                app.ElementDropDownY.Items = app.ElementName;
                app.ElementDropDown.Items = app.ElementName;
            else                
            end
        end


        function results = updateview(app) %#ok<STOUT>
            view(app.UIAxes12, [app.SetazimuthtoEditField.Value, app.SetelevationtoEditField.Value]);
        end

        function results = ReverAnimCoordinates(app) %#ok<STOUT>
            app.XAnim = app.X;
            app.YAnim = app.Y;
            app.ZAnim = app.Z;

        end

        function results = GaitPlot(app) %#ok<STOUT>
            % clean plot and tables
            cla(app.UIAxes13) % clear uiAxes
            cla(app.UIAxes13,'reset') % reset uiaxes
            app.UITableGait.Data = [];

            % Indentifie the item number selected in the dropdown menu
            app.ElementDropDown_4.ItemsData = 1:length(app.ElementDropDown_4.Items);
            app.e = app.ElementDropDown_4.Value;

            % Use this number to select the appropriate set of POI name used
            % filling the Choose_a_POI dropdown
            app.SelectpointDropDown_2.Items = app.colname{app.e};

            % draw stick diagram in grey
            hold(app.UIAxes13,'on');
            for i = 1:app.SegDens:size((app.XStep{app.e}), 1)
                plot (app.UIAxes13, app.XStep{app.e}(i,:), app.YStep{app.e}(i,:), "Color", [0.75 0.75 0.75], "LineWidth", app.LineThickness)
            end

            xlabel(app.UIAxes13, 'X'); ylabel(app.UIAxes13, 'Y');
            axis(app.UIAxes13, 'equal');
        end

        function results = CapturePositions(app) %#ok<STOUT>

            % capture X
            if isempty (app.capX)
                app.Xposition{app.e} = app.capX;
                app.Xposition{app.e} = app.XStep{app.e}(app.n2,:);    % Capture X from all POI
                app.capX = app.Xposition{app.e};
            else
                app.capX = app.Xposition{app.e};
                app.Xposition{app.e} = [app.capX; app.XStep{app.e}(app.n2,:)]; % Capture X from all POI
            end

            % capture Y
            if isempty (app.capY)
                app.Yposition{app.e} = app.capY;
                app.Yposition{app.e} = app.YStep{app.e}(app.n2,:);    % Capture X from all POI
                app.capY = app.Yposition{app.e};
            else
                app.capY = app.Yposition{app.e};
                app.Yposition{app.e} = [app.capY; app.YStep{app.e}(app.n2,:)]; % Capture X from all POI
            end

            % capture T
            if isempty (app.capT)
                app.tvalue{app.e} = app.capT;
                app.tvalue{app.e} = app.T{app.e}(app.n2,:);    % Capture T from all POI
                app.capT = app.tvalue{app.e};
            else
                app.capT = app.tvalue{app.e};
                app.tvalue{app.e} = [app.capT; app.T{app.e}(app.n2,:)];
            end
        end



        function results = CreateZseries(app)            %#ok<STOUT>
            value = app.UseanarbitraryZEditField.Value;
            a = size(app.X{app.e});
            app.Z{app.e} = repmat(value, a(1), a(2));
            app.Arb_Z = 1; % tell the system that the Z is arbitray
        end

        function bkpData = bkpData(app) %#ok<STOUT>

            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab
            if selectedTab == app.CoordinatesTab
                if numel(app.X) >=1
                    app.X_old = [];
                    app.Y_old = [];
                    app.Z_old = [];
                    app.T_old = [];
                    app.colname_old = [];
                    app.X_old = app.X;
                    app.Y_old = app.Y;
                    app.Z_old = app.Z;
                    app.T_old = app.T;
                    app.colname_old = app.colname;
                else
                    msgbox('No coordinates available')
                end
            elseif selectedTab == app.EphyTab
                if ~isempty(app.Voltage)
                    app.Voltage_old = [];
                    app.tEMG_old = [];
                    app.colnameEMG_old = [];
                    app.Voltage_old = app.Voltage;
                    app.tEMG_old = app.tEMG;
                    app.colnameEMG_old = app.colnameEMG;
                else
                    msgbox('Insufficient E-phy data')
                end

            elseif selectedTab == app.SensorTab
                if ~isempty(app.SensorValues)
                    app.SensorValues_old = [];
                    app.tSensor_old = [];
                    app.colnameSensor_old = [];
                    app.SensorValues_old = app.SensorValues;
                    app.tSensor_old = app.tSensor;
                    app.colnameSensor_old = app.colnameSensor;
                else
                    msgbox('Insufficient sensor data')
                end
            else
            end
        end

        function Revert = Revert(app) %#ok<STOUT>
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            if selectedTab == app.CoordinatesTab
                % revert values
                app.X = app.X_old;
                app.Y = app.Y_old;
                app.Z = app.Z_old;
                app.T = app.T_old;
                app.colname = app.colname_old;

                % update
                updateplot(app);
                UpdateTable(app);
                UpdateAnimStep(app);

            elseif selectedTab == app.EphyTab
                app.Voltage = app.Voltage_old;
                app.fSensorValues = app.Voltage_old;
                app.tEMG = app.tEMG_old;
                app.colnameEMG = app.colnameEMG_old;

                % Update
                plotfEMG(app);
                UpdateEMGTable(app);

            elseif selectedTab == app.SensorTab
                app.SensorValues = app.SensorValues_old;
                app.fSensorValues = app.SensorValues_old;
                app.tSensor = app.tSensor_old;
                app.colnameSensor = app.colnameSensor_old;

                % Update
                plotfSensor(app); % refresh plot
                UpdateSensorTable(app);
            end

        end

        function Axes1_12Settings = Axes1_12Settings(app) %#ok<STOUT>

            % show or hide axis for the coordinate and animation tabs
            set( findobj(app.UIAxes.XAxis), 'Visible', app.xaxis);
            set( findobj(app.UIAxes.YAxis), 'Visible', app.yaxis);
            set( findobj(app.UIAxes.ZAxis), 'Visible', app.zaxis);
            set( findobj(app.UIAxes12.XAxis), 'Visible', app.xaxis);
            set( findobj(app.UIAxes12.YAxis), 'Visible', app.yaxis);
            set( findobj(app.UIAxes12.ZAxis), 'Visible', app.zaxis);

            % show or hide axis labels for the coordinate and animation tabs
            if app.xaxis == "on"
                xlabel(app.UIAxes, 'X');
                xlabel(app.UIAxes12, 'X');
            else
            end

            if app.yaxis == "on"
                ylabel(app.UIAxes, 'Y');
                ylabel(app.UIAxes12, 'Y');
            else
            end

            if app.zaxis == "on"
                zlabel(app.UIAxes, 'Z');
                zlabel(app.UIAxes12, 'Z');
            else
            end

        end

        function SelectPOI = SelectPOI(app) %#ok<STOUT>

            % Define the options for the dropdown menu
            options = app.colname{app.e};

            % Get the screen size
            screensize = get(groot, 'Screensize');

            % Define the position and size of the dialog box
            width = 250;
            height = 150;
            left = screensize(3)/2 - width/2;
            bottom = screensize(4)/2 - height/2;
            position = [left, bottom, width, height];

            % Create a dialog box with a dropdown menu
            dlg = dialog('Name', 'Select a POI', 'Position', position);
            dropdown = uicontrol(dlg, 'Style', 'popupmenu', 'String', options, 'Position', [50, 75, 150, 25]);

            % Add a push button to the dialog box
            uicontrol(dlg, 'Style', 'pushbutton', 'String', 'OK', 'Position', [50, 25, 150, 25], 'Callback', 'uiresume(gcbf)');

            % Wait for the user to close the dialog box
            uiwait(dlg);

            % Get the index of the selected option from the dropdown menu
            app.SelectedOptionIndex = [];
            app.SelectedOptionIndex = get(dropdown, 'Value');

            % Close the dialog box
            delete(dlg);

        end


        function plotfEMG = plotfEMG(app) %#ok<STOUT>
            if ~isempty (app.fEMG)
                % send data to the function that spread values on Y
                app.transport = app.fEMG;
                SpreadOnY(app); % app function
                EMG = app.retour;

                % plot
                cla(app.UIAxesEMG); cla(app.UIAxesEMG,'reset');
                plot (app.UIAxesEMG, app.tEMG, EMG);
                xlabel(app.UIAxesEMG, 'Time');
                ylabel(app.UIAxesEMG, 'Voltage');
                legend (app.UIAxesEMG, app.colnameEMG);
            end
        end

        function plotenvelope = plotenvelope(app) %#ok<STOUT>
            % send data to the function that spread values on Y
            app.transport = app.envelope;
            SpreadOnY(app); % app function
            EMG = app.retour;

            % plot
            cla(app.UIAxesEMG); cla(app.UIAxesEMG,'reset');
            plot (app.UIAxesEMG, app.tEMG, EMG);
            title(app.UIAxesEMG, 'E-phy envelope');
            xlabel(app.UIAxesEMG, 'Time');
            ylabel(app.UIAxesEMG, 'Amplitude');
            legend (app.UIAxesSensor, app.colnameEMG);
        end

        function selectMOI = selectMOI(app) %#ok<STOUT>
            % Define the options for the dropdown menu
            options = app.colnameEMG;

            screensize = get(groot, 'Screensize');

            % Define the position and size of the dialog box
            width = 250;
            height = 150;
            left = screensize(3)/2 - width/2;
            bottom = screensize(4)/2 - height/2;
            position = [left, bottom, width, height];

            % Create a dialog box with a dropdown menu
            dlg = dialog('Name', 'Select a MOI', 'Position', position);
            dropdown = uicontrol(dlg, 'Style', 'popupmenu', 'String', options, 'Position', [50, 75, 150, 25]);

            % Add a push button to the dialog box
            uicontrol(dlg, 'Style', 'pushbutton', 'String', 'OK', 'Position', [50, 25, 150, 25], 'Callback', 'uiresume(gcbf)');

            % Wait for the user to close the dialog box
            uiwait(dlg);

            % Get the index of the selected option from the dropdown menu
            app.SelectedOptionIndex = [];
            app.SelectedOptionIndex = get(dropdown, 'Value');

            % Close the dialog box
            delete(dlg);
        end


        function Export = Export(app) %#ok<STOUT>
            % Prompt user for file location
            app.file = [];
            path = uigetdir(app.file, 'Save As');

            f = waitbar(0.1,'Exporting coordinates');
            if isempty (app.X)
            else
                for k = 1:app.e
                    % export coordinates
                    data = [app.T{k}, app.X{k}, app.Y{k}, app.Z{k}];
                    data = num2cell(data);
                    xcol= strcat('x-', app.colname{k}); % concatenate 'x-' with all column names except time
                    ycol= strcat('y-', app.colname{k});
                    zcol= strcat('z-', app.colname{k});
                    headers = ['Time', xcol, ycol, zcol];
                    filename = ['Coordinates_', app.ElementName{k}, app.format];
                    All = [headers;data];

                    % Construct the full file path
                    filepath = fullfile(path, filename);
                    writematrix( All,filepath);
                end
            end

            % Export distance
            waitbar(0.2,f,'Exporting distance');
            if isempty(app.dX)
            else
                for k = 1:app.e
                    data = [app.T{k}(2:end,:), app.dX{k}, app.dY{k}, app.dZ{k}, app.dXY{k}, app.dXZ{k}, app.dYZ{k}, app.dXYZ{k}];
                    data = num2cell(data);
                    app.colx= strcat('x-', app.colname{k}); % concatenate 'x-' with all column names except time
                    app.coly= strcat('y-', app.colname{k});
                    app.colz = strcat('z-', app.colname{k});
                    app.colxy = strcat('xy-', app.colname{k});
                    app.colxz = strcat('xz-', app.colname{k});
                    app.colyz = strcat('yz-', app.colname{k});
                    app.colxyz = strcat('xyz-', app.colname{k});
                    headers = ['time', app.colx, app.coly, app.colz, app.colxy, app.colxz, app.colyz, app.colxyz];
                    filename = ['Distance_', app.ElementName{k}, app.format];
                    All = [headers;data];

                    % Construct the full file path
                    filepath = fullfile(path, filename);
                    writecell( All,filepath);
                end
            end

            % Export amplitude
            waitbar(0.3,f,'Exporting amplitude');
            if ~isempty(app.dX)
                for k = 1:app.e
                    col1 = convertCharsToStrings(transpose (app.colname{k})); % transpose colname (without 'time')
                    sum_dX = transpose (app.DistanceStat {k,5});
                    sum_dY = transpose (app.DistanceStat {k,10});
                    sum_dZ = transpose (app.DistanceStat {k,15});
                    sum_dXY = transpose (app.DistanceStat {k,20});
                    sum_dXZ = transpose (app.DistanceStat {k,25});
                    sum_dYZ = transpose (app.DistanceStat {k,30});
                    sum_dXYZ = transpose (app.DistanceStat {k,35});

                    data = [col1, sum_dX, sum_dY, sum_dZ, sum_dXY, sum_dXZ, sum_dYZ, sum_dXYZ];
                    data = num2cell(data);
                    headers = ["POI", "x-amplitude", "y-amplitude", "z-amplitude", "xy-amplitude", "xz-amplitude", "zy-amplitude", "xyz-amplitude"];
                    filename = ['Amplitude_', app.ElementName{k}, app.format];
                    All = [headers;data];

                    % Construct the full file path
                    filepath = fullfile(path, filename);
                    writematrix( All, filepath);
                end
            else
            end

            % export speed values
            waitbar(0.35,f,'Exporting speed');
            if isempty(app.VX)
            else
                for k = 1:app.e
                    data = [app.T{k}(2:end,:), app.VX{k}, app.VY{k}, app.VZ{k}, app.VXY{k}, app.VXZ{k}, app.VYZ{k}, app.VXYZ{k}];
                    data = num2cell(data);
                    app.colvx= strcat('Vx-', app.colname{k}); % concatenate 'vx-' with the column name
                    app.colvy= strcat('Vy-', app.colname{k});
                    app.colvz = strcat('Vz-', app.colname{k});
                    app.colvxy = strcat('Vxy-', app.colname{k});
                    app.colvxz = strcat('Vxz-', app.colname{k});
                    app.colvyz = strcat('Vyz-', app.colname{k});
                    app.colvxyz = strcat('Vxyz-', app.colname{k});
                    headers = ['','time', app.colvx, app.colvy, app.colvz, app.colvxy, app.colvxz, app.colvyz, app.colvxyz];

                    filename = ['Speed_', app.ElementName{k}, app.format];
                    All = [headers;data];

                    % Construct the full file path
                    filepath = fullfile(path, filename);
                    writecell( All,filepath) % Construct the full file path

                end
            end

            % export acceleration values
            waitbar(0.35,f,'Exporting acceleration');
            if isempty(app.AX)
            else
                waitbar(0.4,f,'Exporting speed values');
                for k = 1:app.e
                    data = [app.T{k}(3:end,:), app.AX{k}, app.AY{k}, app.AZ{k}, app.AXY{k}, app.AXZ{k}, app.AYZ{k}, app.AXYZ{k}];
                    data = num2cell(data);
                    app.colax= strcat('Ax-', app.colname{k}); % concatenate 'vx-' with the column name
                    app.colay= strcat('Ay-', app.colname{k});
                    app.colaz = strcat('Az-', app.colname{k});
                    app.colaxy = strcat('Axy-', app.colname{k});
                    app.colaxz = strcat('Axz-', app.colname{k});
                    app.colayz = strcat('Ayz-', app.colname{k});
                    app.colaxyz = strcat('Axyz-', app.colname{k});
                    headers = ['','time', app.colax, app.colay, app.colaz, app.colaxy, app.colaxz, app.colayz, app.colaxyz];

                    filename = ['Acceleration_', app.ElementName{k}, app.format];
                    All = [headers;data];

                    % Construct the full file path
                    filepath = fullfile(path, filename);
                    writecell(All,filepath);
                end
            end

            % export angle variation
            waitbar(0.45,f,'Exporting angle variation');
            if isempty(app.AnglesXY)
            else
                for k = 1:app.e
                    data = [app.T{k}, app.AnglesXY{k}, app.AnglesXZ{k}, app.AnglesYZ{k}];
                    data = num2cell(data);
                    colxyAngle = strcat('XY-', app.colname{k}(:, 2:(end-1)),'-angle');
                    colxzAngle = strcat('XY-', app.colname{k}(:, 2:(end-1)),'-angle');
                    colyzAngle = strcat('YZ-', app.colname{k}(:, 2:(end-1)),'-angle');
                    headers = ['time', colxyAngle, colxzAngle, colyzAngle];

                    filename = ['Anglar_variation_', app.ElementName{k}, app.format];
                    All = [headers;data];

                    % Construct the full file path
                    filepath = fullfile(path, filename);
                    writecell(All,filepath);
                end
            end

            if isempty(app.AngVeloc_XY)
            else
                % export angular velocity
                waitbar(0.5,f,'Exporting angular velocity');
                for k = 1:app.e
                    data = [app.T{k}(2:end,:), app.AngVeloc_XY{k}, app.AngVeloc_XZ{k}, app.AngVeloc_YZ{k}];
                    data = num2cell(data);
                    colVelAngleXY = strcat('XY-', app.colname{k}(:, 2:(end-1)),'-angle');
                    colVelAngleXZ = strcat('XY-', app.colname{k}(:, 2:(end-1)),'-angle');
                    colVelAngleYZ = strcat('YZ-', app.colname{k}(:, 2:(end-1)),'-angle');
                    headers = ['time', colVelAngleXY, colVelAngleXZ, colVelAngleYZ];

                    filename = ['Anglar_velocity_', app.ElementName{k}, app.format];
                    All = [headers;data];

                    % Construct the full file path
                    filepath = fullfile(path, filename);
                    writecell (All,filepath);
                end
            end

            if isempty(app.AngAcc_XY)
            else
                % export angular acceleration
                waitbar(0.6,f,'Exporting angular acceleration');
                for k = 1:app.e
                    data = [app.T{k}(3:end,:), app.AngAcc_XY{k}, app.AngAcc_XZ{k}, app.AngAcc_YZ{k}];
                    data = num2cell(data);
                    colAccAngleXY = strcat('XY-', app.colname{k}(:, 2:(end-1)),'-angle');
                    colAccAngleXZ = strcat('XY-', app.colname{k}(:, 2:(end-1)),'-angle');
                    colAccAngleYZ = strcat('YZ-', app.colname{k}(:, 2:(end-1)),'-angle');
                    headers = ['time', colAccAngleXY, colAccAngleXZ, colAccAngleYZ];

                    filename = ['Anglar_acceleration_', app.ElementName{k}, app.format];
                    All = [headers;data];

                    % Construct the full file path
                    filepath = fullfile(path, filename);
                    writecell (All,filepath);
                end
            end

            %% Export Correlation values
            waitbar(0.65,f,'Exporting correlation values');
            if isempty(app.UITableCCC.Data)
            else
                data = app.UITableCCC.Data;
                headers = app.UITableCCC.ColumnName';
                All = [headers;data];

                filename = ['Correlation',app.format];

                % Construct the full file path
                filepath = fullfile(path, filename);
                writecell( All,filepath);
            end

            %% Coordinates used to calculate gait parameters
            waitbar(0.7,f,'Exporting gait coordinates');
            for k=1:app.e
                data = [];
                if numel(app.tvalue3{k}) > 0 && ~any(isnan(app.tvalue3{k}))
                    HeelStrike = [app.tvalue3{k}, app.XHS{k}, app.YHS{k}, app.ZHS{k}];
                    n_rows = size(HeelStrike, 1);
                    text = repmat("Heel-strike", n_rows, 1);
                    data = [data; text, HeelStrike]; %#ok<AGROW>
                end

                if numel(app.tvalue7{k}) > 0 && ~any(isnan(app.tvalue7{k}))
                    HeelOff = [app.tvalue7{k}, app.XHO{k}, app.YHO{k}, app.ZHO{k}];
                    n_rows = size(HeelOff, 1);
                    text = repmat("Heel-off", n_rows, 1);
                    data = [data; text, HeelOff]; %#ok<AGROW>
                end

                if numel(app.tvalue1{k}) > 0 && ~any(isnan(app.tvalue1{k}))
                    ToeOff = [app.tvalue1{k}, app.XTO{k}, app.YTO{k}, app.ZTO{k}];
                    n_rows = size(ToeOff, 1);
                    text = repmat("Toe-off", n_rows, 1);
                    data = [data; text, ToeOff]; %#ok<AGROW>
                end

                if numel(app.tvalue2{k}) > 0 && ~any(isnan(app.tvalue2{k}))
                    MaxToeLift = [app.tvalue2{k}, app.XMTL{k}, app.YMTL{k}, app.ZMTL{k}];
                    n_rows = size(MaxToeLift, 1);
                    text = repmat("Max toe-lift", n_rows, 1);
                    data = [data; text, MaxToeLift]; %#ok<AGROW>
                end

                headers = ["Position","Time" "x","y","z" ];
                filename = ['Gait_coordinates_', app.ElementName{k}, app.format];
                All = [headers;data];

                % Construct the full file path
                filepath = fullfile(path, filename);
                writematrix( All,filepath);
            end

            %% Limb positions
            waitbar(0.8,f,'Exporting captured position');
            for k=1:app.e
                data = [];
                if numel(app.tvalue3{k}) > 0 && ~any(isnan(app.tvalue3{k}))
                    HeelStrike = [app.tvalue3{k}, app.X_HS_position{k}, app.Y_HS_position{k}, app.Z_HS_position{k}];
                    n_rows = size(HeelStrike, 1);
                    text = repmat("Heel-strike", n_rows, 1);
                    data = [data; text, HeelStrike]; %#ok<AGROW>
                end

                if numel(app.tvalue7{k}) > 0 && ~any(isnan(app.tvalue7{k}))
                    HeelOff = [app.tvalue7{k}, app.X_HO_position{k}, app.Y_HO_position{k}, app.Z_HO_position{k}];
                    n_rows = size(HeelOff, 1);
                    text = repmat("Heel-off", n_rows, 1);
                    data = [data; text, HeelOff]; %#ok<AGROW>
                end

                if numel(app.tvalue1{k}) > 0 && ~any(isnan(app.tvalue1{k}))
                    ToeOff = [app.tvalue1{k}, app.X_TO_position{k}, app.Y_TO_position{k}, app.Z_TO_position{k}];
                    n_rows = size(ToeOff, 1);
                    text = repmat("Toe-off", n_rows, 1);
                    data = [data; text, ToeOff]; %#ok<AGROW>
                end

                if numel(app.tvalue2{k}) > 0 && ~any(isnan(app.tvalue2{k}))
                    MaxToeLift = [app.tvalue2{k}, app.X_MTL_position{k}, app.Y_MTL_position{k}, app.Z_MTL_position{k}];
                    n_rows = size(MaxToeLift, 1);
                    text = repmat("Max toe-lift", n_rows, 1);
                    data = [data; text, MaxToeLift]; %#ok<AGROW>
                end

                namex = strcat('x-', app.colname{k}); % concatenate 'x-' with all column names
                namey = strcat('y-', app.colname{k});
                namez = strcat('z-', app.colname{k});

                headers = ["Position","Time" namex, namey, namez];
                filename = ['Captured_postures_', app.ElementName{k}, app.format];
                All = [headers;data];

                % Construct the full file path
                filepath = fullfile(path, filename);
                writematrix (All,filepath);
            end

            %% Gait parameters
            waitbar(0.85,f,'Gait parameters');
            if ~isempty(app.CalcGait)
                for k=1:app.e
                    headers = ["Stride length" "Stride duration" "Stance duration" "Swing duration" "Heel-down duration" "Foot-lift amplitude " "Take-off duration" "Foot-lift velocity"];
                    data = app.CalcGait{k};
                    filename = ['Gait_parameters_', app.ElementName{k}, app.format];
                    All = [headers;data];

                    % Construct the full file path
                    filepath = fullfile(path, filename);
                    writematrix (All,filepath);
                end
            else
            end

            %% Area under the curve
            waitbar(0.9,f,'Exporting Area under the curve');
            if isempty(app.UITableAUC.Data)
            else
                data = app.UITableAUC.Data;
                data_cell = num2cell(data);
                headers = app.UITableAUC.ColumnName';
                All = [headers;data_cell];

                filename = ['Area under the curve',app.format];

                % Construct the full file path
                filepath = fullfile(path, filename);
                writecell( All,filepath);
            end

            %% Export E-phy envelope
            waitbar(0.95,f,'Exporting E-phy envelope');
            if isempty(app.envelope)
            else
                data = [app.tEMG, app.Voltage, app.envelope];
                A = strcat('Raw E-phy trace-', app.colnameEMG); % concatenate 'Raw E-phy trace-' with colnameEMG
                B = strcat('E-phy envelope-', app.colnameEMG);
                headers = ["Time",A,B];
                All = [headers;data];

                filename = ['E-phy envelope',app.format];

                % Construct the full file path
                filepath = fullfile(path, filename);
                writematrix( All,filepath);
            end

            %% waitbar end
            waitbar(1,f,'Done!');
            pause(1);
            close(f);
        end

        function FillGaitTable = FillGaitTable(app) %#ok<STOUT>

            app.UITableGait.ColumnName = ["Position", "Time", "x", "y", "z"];
            data = [];

            if isempty (app.e) || numel(app.tvalue3) < app.e || any(isnan(app.tvalue3{app.e}))
            else
                HeelStrike = [app.tvalue3{app.e}, app.XHS{app.e}, app.YHS{app.e}, app.ZHS{app.e}];
                n_rows = size(HeelStrike, 1);
                text = repmat("Heel-strike", n_rows, 1);
                data = [data; text, HeelStrike];
            end

            if isempty (app.e) || numel(app.tvalue7) < app.e || numel(app.XHO) < app.e || any(isnan(app.tvalue7{app.e}))
            else
                HeelOff = [app.tvalue7{app.e}, app.XHO{app.e}, app.YHO{app.e}, app.ZHO{app.e}];
                n_rows = size(HeelOff, 1);
                text = repmat("Heel-off", n_rows, 1);
                data = [data; text, HeelOff];
            end

            if isempty (app.e) || numel(app.tvalue1) < app.e || numel(app.XTO) < app.e || any(isnan(app.tvalue1{app.e}))
            else
                ToeOff = [app.tvalue1{app.e}, app.XTO{app.e}, app.YTO{app.e}, app.ZTO{app.e}];
                n_rows = size(ToeOff, 1);
                text = repmat("Toe-off", n_rows, 1);
                data = [data; text, ToeOff];
            end

            if isempty (app.e) || numel(app.tvalue2) < app.e || any(isnan(app.tvalue2{app.e}))
            else
                MaxToeLift = [app.tvalue2{app.e}, app.XMTL{app.e}, app.YMTL{app.e}, app.ZMTL{app.e}];
                n_rows = size(MaxToeLift, 1);
                text = repmat("Max toe-lift", n_rows, 1);
                data = [data; text, MaxToeLift];
            end

            app.UITableGait.Data = data;
        end


        function DeleteGaitParameters = DeleteGaitParameters(app) %#ok<STOUT>
            % % Clear HS variables
            app.capture_X_HS = [];
            app.X_HS_position{app.e} = [];
            app.XHS{app.e} = [];
            app.capture_Y_HS= [];
            app.Y_HS_position{app.e}= [];
            app.YHS{app.e}= [];
            app.capture_Z_HS= [];
            app.Z_HS_position{app.e}= [];
            app.ZHS{app.e}= [];
            app.capture_t3= [];
            app.tvalue3{app.e}= NaN

            % Clear HO variables
            app.capture_X_HO= [];
            app.X_HO_position{app.e}= [];
            app.XHO{app.e}= [];
            app.capture_Y_HO= [];
            app.Y_HO_position{app.e}= [];
            app.YHO{app.e}= [];
            app.capture_Z_HO= [];
            app.Z_HO_position{app.e}= [];
            app.ZHO{app.e}= [];
            app.capture_t7= [];
            app.tvalue7{app.e}= NaN;

            % Clear TO variables
            app.capture_X_TO= [];
            app.X_TO_position{app.e}= [];
            app.XTO{app.e}= [];
            app.capture_Y_TO= [];
            app.Y_TO_position{app.e}= [];
            app.YTO{app.e}= [];
            app.capture_Z_TO= [];
            app.Z_TO_position{app.e}= [];
            app.ZTO{app.e}= [];
            app.capture_t1= [];
            app.tvalue1{app.e}= NaN;

            % Clear MTL variables
            app.capture_X_MTL= [];
            app.X_MTL_position{app.e}= [];
            app.XMTL{app.e}= [];
            app.capture_Y_MTL= [];
            app.Y_MTL_position{app.e}= [];
            app.YMTL{app.e}= [];
            app.capture_Z_MTL= [];
            app.Z_MTL_position{app.e}= [];
            app.ZMTL{app.e}= [];
            app.capture_t2= [];
            app.tvalue2{app.e}= NaN;

            % Clear Table
            app.UITableGait.Data = [];

            % Clear calculated parameters
            app.strlg{app.e}= [];
            app.strdur{app.e}= [];
            app.StanceDur{app.e}= [];
            app.SwingDur{app.e}= [];
            app.HDdur{app.e}= [];
            app.FLA{app.e}= [];
            app.TOD{app.e}= [];
            app.FLV{app.e}= [];
            app.TimeGait{app.e}= [];
            app.ZGait{app.e}= [];

            % Replot the gait plot
            GaitPlot(app)
        end

        function FictiveElement1 = FictiveElement1(app) %#ok<STOUT>
            % Create the sine waves
            t = 0:0.1:10; % time vector
            A = 0.8; % amplitude of the x component
            B = 1; % amplitude of the y component
            fy = 0.5; % frequency of the wave
            fx = 0.5;
            phi = 0; % phase shift between the x and y components

            y1 = A * sin(2*pi*fy*t);
            x1 = B * t + sin(2*pi*fx*t + phi);

            y2 = 2*y1+2;
            x2 = B * t + sin(2*pi*fx*t + 0.2);

            y3 = 0.2*y1+4;
            x3 = B * t + sin(2*pi*fx*t + 4);

            x = [x1;x2;x3];
            y = [y1;y2;y3];


            % define array number
            app.e=1;

            % copy values in a cell array using e to identify the element
            app.T{app.e} = t';
            app.X{app.e} = x';
            app.Y{app.e} = y';
            app.name{app.e} = ["Point1", "Point2", "Point3"];
            app.colname{app.e} = ["Point1", "Point2", "Point3"];
            app.nPOI{app.e} = 3;
            CreateZseries(app) % function to create arbitrary Z series

            % Increment element name
            app.ElementName = "Fictive element 1";

            % Update Element Table
            UpdateElementTable(app)

            % Update
            updateplot(app);
            UpdateTable(app);
            UpdateAnimStep(app);

        end

        function FictiveElement2 = FictiveElement2(app) %#ok<STOUT>
            % Create the sine waves
            t = 0:0.1:10; % time vector
            A = 0.8; % amplitude of the x component
            B = 10; % amplitude of the y component
            fy = 0.5; % frequency of the wave

            y1 = 1+ (A * sin(pi*fy*t));
            x1 = B * 0.1 * t + 0.005; %* randn(size(t)); % equation for x with random variation

            y2 = 3+(A * sin(pi*fy*t +45));
            x2 = B * 0.1 * t + 0.005; %* randn(size(t)); % equation for x with random variation

            y3 = 6+(A * sin(pi*fy*t + 90));
            x3 = B * 0.1 * t + 0.005; %* randn(size(t)); % equation for x with random variation

            x = [x1;x2;x3];
            y = [y1;y2;y3];


            % define array number
            app.e=1;

            % copy values in a cell array using e to identify the element
            app.T{app.e} = t';
            app.X{app.e} = x';
            app.Y{app.e} = y';
            app.name{app.e} = ["Point1", "Point2", "Point3"];
            app.colname{app.e} = ["Point1", "Point2", "Point3"];
            app.nPOI{app.e} = 3;
            CreateZseries(app) % function to create arbitrary Z series

            % Increment element name
            app.ElementName = ["Fictive element 2"];

            % Update Element Table
            UpdateElementTable(app)

            % Update
            updateplot(app);
            UpdateTable(app);
            UpdateAnimStep(app);
        end

        function CleanKinematicPlots = CleanKinematicPlots(app) %#ok<STOUT>
            if numel(app.dX) == numel(app.X)
                cla(app.UIAxes2); % clear uiAxes
                cla(app.UIAxes2,'reset'); % reset uiaxes
                cla(app.UIAxes3);
                cla(app.UIAxes3,'reset');
                cla(app.UIAxes4);
                cla(app.UIAxes4,'reset');
                cla(app.UIAxes5);
                cla(app.UIAxes5,'reset');
            else
                AnalyseKinematic(app)
            end
        end


        function PlotKinematics = PlotKinematics(app) %#ok<STOUT>
            % plot speed vs time
            plot (app.UIAxes2, app.K_time, app.A_kine);
            legend(app.UIAxes2, app.K_colname, 'Location','southoutside',"Orientation","horizontal", 'NumColumns',3,"Box","off");
            title(app.UIAxes2, [app.K_title,' variation']);
            xlabel(app.UIAxes2, 'time');
            ylabel(app.UIAxes2, app.K_title);

            % boxplot
            categories = categorical(app.K_colname); % Create a categorical array from the column names
            boxplot(app.UIAxes3, app.A_kine, categories);
            title(app.UIAxes3, [app.K_title,' distribution']);
            ylabel(app.UIAxes3, app.K_title);

            % Bar plots for min,max,mean,median,mode x-speed
            cat = categorical({'Min','Max','Mean','Median','Mode'});
            cat = reordercats(cat,{'Min','Max','Mean','Median','Mode'});
            bar (app.UIAxes4, cat, app.B_kine);
            title(app.UIAxes4, 'Descriptive statistics');
            ylabel(app.UIAxes4, app.K_title);
            legend(app.UIAxes4, app.K_colname, 'Location','southoutside', "Orientation","horizontal", 'NumColumns',3, "Box","off");

            % Histogram speed frequency
            histogram(app.UIAxes5, app.A_kine);
            title(app.UIAxes5, [app.K_title, ' frequency']);
            xlabel(app.UIAxes5, app.K_title);
            ylabel(app.UIAxes5, 'Occurence');
            legend(app.UIAxes5, app.K_colname, 'Location','southoutside', "Orientation","horizontal", "Box","off");
        end

        function IdentifyTab = IdentifyTab(app) %#ok<STOUT>
            % This function identifies the active tab. This is used in the
            % context of filtering and envelop to that programm know which
            % data the users wants to filter

            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            if selectedTab == app.CoordinatesTab % Check if the selected tab is CoordinatesTab
                app.Signal = [app.X{app.e}, app.Y{app.e}, app.Z{app.e}];
                app.SignalFreq = 1/(mean(diff(app.T{app.e}))); % mean sampling rate
                app.tSignal = app.T{app.e};

            elseif selectedTab == app.EphyTab % Check if the selected tab is EMGTab
                app.Signal = app.fEMG;
                app.SignalFreq = app.Freq;
                app.tSignal = app.tEMG;

            elseif selectedTab == app.SensorTab % Check if the selected tab is SensorTab
                app.Signal = app.fSensorValues;
                app.SignalFreq = app.SFreq;
                app.tSignal = app.tSensor;
            end

        end

        function ReturnSignal = ReturnSignal(app) %#ok<STOUT>
            % This function identifies the active tab to reassigned the
            % filtered signal to its source

            % Backup data
            bkpData(app)

            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            % Check if the selected tab is the "CoordinatesTab, EMGTab or SensorTab"
            if selectedTab == app.CoordinatesTab % Check if the selected tab is CoordinatesTab                
                m = app.nPOI{app.e}; % number of POI
                app.X{app.e} = app.Signal(1:end, 1:m);
                app.Y{app.e} = app.Signal(1:end, (m+1):(2*m));
                app.Z{app.e} = app.Signal(1:end, (2*m+1):end);
                app.T{app.e} = app.tSignal;

                % Update
                updateplot(app);
                UpdateTable (app);
                UpdateAnimStep(app);

            elseif selectedTab == app.EphyTab % Check if the selected tab is EMGTab
                app.fEMG = app.Signal;
                app.tEMG = app.tSignal;
                plotfEMG(app); % refresh plot
                UpdateEMGTable(app);

                % reset the scalling sliders
                app.TimescalefactorSlider.Value = 1;
                app.AmplitudescalefactorSlider.Value = 1;

            elseif selectedTab == app.SensorTab % Check if the selected tab is SensorTab

                app.fSensorValues = app.Signal;
                app.tSensor = app.tSignal;
                plotfSensor(app); % refresh plot
                UpdateSensorTable(app);

                % reset the scalling sliders
                app.TimescalefactorSlider_2.Value = 1;
                app.AmplitudescalefactorSlider_2.Value = 1;

            end
        end

        function BandPassFilter = BandPassFilter(app) %#ok<STOUT>
            % Create a dialogue box
            % Define the labels for the input fields in the dialog box.
            prompt = {'High pass cutoff (Hz):','Low pass cutoff (Hz):', 'Butterworth filter order:'};

            % Define the title for the dialog box.
            dlgtitle = 'Band-pass filter';

            % Define the size of the dialog box.
            dims = [1 45];

            % Define the default values for the input fields.
            definput = {'10','500', '4'};

            % Display the dialog box and wait for the user to input values.
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if ~isempty(answer) % if not empty

                % Calculate Nyquist frequency of signal.
                NyqFreq = app.SignalFreq/2;

                % Define order and cutoff frequencies for Butterworth bandpass filter.
                order = abs(str2double(answer(3))); % 4th order filter is default.
                highpass = abs(str2double(answer(1))); % High pass cutoff in Hz.
                lowpass = abs(str2double(answer(2))); % Low pass cutoff in Hz.
                Wn = [highpass, lowpass]/NyqFreq; % Convert cutoff frequencies to normalized units.

                % Design Butterworth bandpass filter with given order and cutoffs.
                [B, A] = butter(order, Wn, 'bandpass');

                % Apply filter to the signal in forward and reverse directions for zero-phase response.
                filter = filtfilt(B, A, app.Signal); % Filtered EMG signal.
                app.Signal = filter;

            end
        end

        function HighPassFilter = HighPassFilter(app) %#ok<STOUT>
            % Create a dialogue box
            % Define the labels for the input fields in the dialog box.
            prompt = {'Cutoff frequency (Hz):', 'Butterworth filter order:'};

            % Define the title for the dialog box.
            dlgtitle = 'High-pass filter';

            % Define the size of the dialog box.
            dims = [1 45];

            % Define the default values for the input fields.
            definput = {'50','5'};

            % Display the dialog box and wait for the user to input values.
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)

            else
                % Get the Nyquist frequency of the signal
                NyqFreq = app.SignalFreq/2;

                order = abs(str2double(answer(2))); % 5th order filter is default.
                highpass = abs(str2double(answer(1))); % High-pass cutoff in Hz.

                % Normalize the cutoff frequency by the Nyquist frequency to obtain the
                % filter's cutoff frequency in normalized units (between 0 and 1)
                Wp = highpass/NyqFreq;

                % Design a Butterworth high-pass filter with the specified
                % normalized cutoff frequency and order
                [B, A] = butter(order, Wp, 'high');

                % Apply filter to the signal in forward and reverse directions for zero-phase response.
                filter = filtfilt(B, A, app.Signal); % Filtered EMG signal.
                app.Signal = filter;
            end

        end

        function LowPassFilter = LowPassFilter(app) %#ok<STOUT>
            % Create a dialogue box
            % Define the labels for the input fields in the dialog box.
            prompt = {'Cutoff frequency (Hz):', 'Butterworth filter order:'};

            % Define the title for the dialog box.
            dlgtitle = 'Low-pass filter';

            % Define the size of the dialog box.
            dims = [1 45];

            % Define the default values for the input fields.
            definput = {'500','5'};

            % Display the dialog box and wait for the user to input values.
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)

            else

                % Get the Nyquist frequency of the signal
                NyqFreq = app.SignalFreq/2;

                order = abs(str2double(answer(2))); % 4th order filter is default.
                lowpass = abs(str2double(answer(1))); % Low pass cutoff in Hz.

                % Normalize the cutoff frequency by the Nyquist frequency to obtain the
                % filter's cutoff frequency in normalized units (between 0 and 1)
                Wp = lowpass/NyqFreq;

                % Design a 5th order Butterworth low pass filter with the specified
                % normalized cutoff frequency
                [F, E] = butter(order, Wp, 'low');

                % Apply the filter to the EMG signal in both forward and reverse directions
                % to eliminate phase distortion and obtain a zero-phase response
                filter = filtfilt(F, E, app.Signal);
                app.Signal = filter;
            end

        end

        function Notch = Notch(app) %#ok<STOUT>
            % Create a dialogue box
            % Define the labels for the input fields in the dialog box.
            prompt = {'Notch frequency (Hz):', 'Q factor:', 'Butterworth filter order:'};

            % Define the title for the dialog box.
            dlgtitle = 'Notch filter';

            % Define the size of the dialog box.
            dims = [1 45];

            % Define the default values for the input fields.
            definput = {'50', '30', '5'};

            % Display the dialog box and wait for the user to input values.
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)

            else
                % Get the Nyquist frequency of the signal
                NyqFreq = app.SignalFreq/2;

                order = abs(str2double(answer(3))); % 4th order filter is default.
                notchFreq = abs(str2double(answer(1))); % Notch frequency in Hz
                Q = abs(str2double(answer(2))); % Q factor

                % Normalize the notch frequency and Q factor by the Nyquist frequency to obtain
                % the filter's notch frequency and Q factor in normalized units (between 0 and 1)
                Wn = notchFreq/NyqFreq;
                BW = Wn/Q;

                % Design a notch filter with the specified normalized notch frequency and Q factor
                [B, A] = iirnotch(Wn, BW, order);

                % Apply the filter to the EMG signal in both forward and reverse directions
                % to eliminate phase distortion and obtain a zero-phase response
                filter = filtfilt(B, A, app.Signal);
                app.Signal = filter;

            end
        end

        function MeanRectification = MeanRectification(app) %#ok<STOUT>
            app.Signal = abs(app.Signal-mean(app.Signal)); % remove DC component
        end

        function AbsoluteValueRectification = AbsoluteValueRectification(app) %#ok<STOUT>
            app.Signal = abs(app.Signal);
        end

        function SquareRootRectification = SquareRootRectification(app) %#ok<STOUT>
            app.Signal = sqrt(app.Signal.^2);
        end

        function HalfwaveRectification = HalfwaveRectification(app) %#ok<STOUT>
            app.Signal = max(app.Signal, 0);

        end

        function LowPassEnvelope = LowPassEnvelope(app) %#ok<STOUT>
            % Create a dialogue box
            % Define the labels for the input fields in the dialog box.
            prompt = {'Low-pass filter (Hz):', 'Butterworth filter order:'};

            % Define the title for the dialog box.
            dlgtitle = 'Set parameters';

            % Define the size of the dialog box.
            dims = [1 45];

            % Define the default values for the input fields.
            definput = {'5', '5'};

            % Display the dialog box and wait for the user to input values.
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)

            else
                % collect parameters from user input
                order = abs(str2double(answer(2))); % 4th order filter is default.
                LP = abs(str2double(answer(1))); % Notch frequency in Hz

                % Lowpass filter the rectified EMG signal
                NyqFreq = app.SignalFreq/2;
                Wp = LP/NyqFreq;
                [B,A] = butter(order, Wp, 'low');
                filter = filtfilt(B,A,app.Signal);
                app.Signal = filter;
            end

        end

        function ReturnEnvelope = ReturnEnvelope(app) %#ok<STOUT>
            % This function identifies the active tab to reassigned the
            % filtered signal to its source

            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            % Check if the selected tab is the "CoordinatesTab, EMGTab or SensorTab"
            if selectedTab == app.CoordinatesTab % Check if the selected tab is CoordinatesTab
                bkpData(app)
                m = app.nPOI{app.e}; % number of POI
                app.X{app.e} = app.Signal(1:end, 1:m);
                app.Y{app.e} = app.Signal(1:end, (m+1):(2*m));
                app.Z{app.e} = app.Signal(1:end, (2*m+1):end);

                % Update
                updateplot(app);
                UpdateTable (app);
                UpdateAnimStep(app);

            elseif selectedTab == app.EphyTab % Check if the selected tab is EMGTab
                app.envelope = app.Signal;
                plotenvelope(app); % refresh EMG plot

                % reset the scalling sliders
                app.TimescalefactorSlider.Value = 1;
                app.AmplitudescalefactorSlider.Value = 1;

            elseif selectedTab == app.SensorTab % Check if the selected tab is SensorTab
                app.Senvelope = app.Signal;
                plotSenvelope(app); % refresh plot
            end
        end

        function MovingAverageEnvelope = MovingAverageEnvelope(app) %#ok<STOUT>
            % Create a dialogue box
            % Define the labels for the input fields in the dialog box.
            prompt = {'Window:'};

            % Define the title for the dialog box.
            dlgtitle = 'Set parameters';

            % Define the size of the dialog box.
            dims = [1 45];

            % Define the default values for the input fields.
            definput = {'100'};

            % Display the dialog box and wait for the user to input values.
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)

            else
                window = abs(str2double(answer(1))); % window
                app.Signal = movmean(app.Signal, window);
            end
        end

        function LowPassMovingAverageEnvelope = LowPassMovingAverageEnvelope(app) %#ok<STOUT>
            %% LowPass
            % Create a dialogue box
            % Define the labels for the input fields in the dialog box.
            prompt = {'Low-pass filter (Hz):', 'Butterworth filter order:'};

            % Define the title for the dialog box.
            dlgtitle = 'Set parameters';

            % Define the size of the dialog box.
            dims = [1 45];

            % Define the default values for the input fields.
            definput = {'5', '5'};

            % Display the dialog box and wait for the user to input values.
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)

            else
                % collect parameters from user input
                order = abs(str2double(answer(2))); % 4th order filter is default.
                LP = abs(str2double(answer(1))); % Notch frequency in Hz

                % Lowpass filter the rectified EMG signal
                NyqFreq = app.SignalFreq/2;
                Wp = LP/NyqFreq;
                [B,A] = butter(order, Wp, 'low');
                app.Signal = filtfilt(B,A,app.Signal);
            end

            %% Moving average
            % Create a dialogue box
            % Define the labels for the input fields in the dialog box.
            prompt = {'Window:'};

            % Define the title for the dialog box.
            dlgtitle = 'Set parameters';

            % Define the size of the dialog box.
            dims = [1 45];

            % Define the default values for the input fields.
            definput = {'100'};

            % Display the dialog box and wait for the user to input values.
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)

            else
                window = abs(str2double(answer(1))); % window
                app.Signal = movmean(app.Signal, window);
            end

        end

        function RMSEnvelope = RMSEnvelope(app) %#ok<STOUT>
            % Create a dialogue box
            % Define the labels for the input fields in the dialog box.
            prompt = {'Window'};

            % Define the title for the dialog box.
            dlgtitle = 'Set parameters';

            % Define the size of the dialog box.
            dims = [1 45];

            % Define the default values for the input fields.
            definput = {'100'};

            % Display the dialog box and wait for the user to input values.
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)

            else

                % collect parameter from user input
                window = abs(str2double(answer(1))); % window

                % Root-mean-square E-phy envelope
                app.Signal = sqrt(movmean((app.Signal.^2),window));

            end
        end

        function HilbertEnvelope = HilbertEnvelope(app) %#ok<STOUT>
            % Create a dialogue box
            % Define the labels for the input fields in the dialog box.
            prompt = {'Window'};

            % Define the title for the dialog box.
            dlgtitle = 'Set parameters';

            % Define the size of the dialog box.
            dims = [1 45];

            % Define the default values for the input fields.
            definput = {'100'};

            % Display the dialog box and wait for the user to input values.
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)

            else
                % collect parameter from user input
                window = abs(str2double(answer(1))); % window

                % Compute the Hilbert transform of the signal
                app.Signal = hilbert(app.Signal);

                % Compute the envelope of the Hilbert transform
                app.Signal = abs(app.Signal);

                % Smooth the envelope using a moving average window
                app.Signal = movmean(app.Signal, window);

            end
        end


        function SelectForCorrelationX = SelectForCorrelationX(app) %#ok<STOUT>

            app.corrx = [];

            % Select the data sample for the X of the correlation
            % Select the parameter from the right element
            [~, idx1] = ismember(app.ElementDropDownX.Value, app.ElementName);

            % Select the index from the list of POI
            [~, indexX] = ismember(app.POIX.Value, app.POIX.Items);

            % Here the variable name app.XXX is concatenated with the
            % choosen XYZ axis. Then the data from the variable are
            % selected depending on the idx1 selected by the used and the
            % colummn (indexX) selected by the user

            switch app.ParameterX.Value

                case 'Distance'
                    varname = ['app.d', num2str(app.Axis_X.Value)];
                    Ax = eval(varname); % Accessing the variable using its name
                    app.corrx = Ax{idx1}(:, indexX);% idx1 = element indexX = POI
                    app.corrTx = app.T{idx1}(2:end);

                case 'Speed'
                    varname = ['app.V', num2str(app.Axis_X.Value)];
                    Ax = eval(varname);
                    app.corrx = Ax{idx1}(:, indexX);
                    app.corrTx = app.T{idx1}(2:end);

                case 'Acceleration'
                    varname = ['app.A', num2str(app.Axis_X.Value)];
                    Ax = eval(varname);
                    app.corrx = Ax{idx1}(:, indexX);
                    app.corrTx = app.T{idx1}(3:end);

                case 'Angular variation'
                    if app.Axis_X.Value == "XYZ"
                        msgbox('The choice of axis is incorrect')
                        return
                    else
                        varname = ['app.Angles', num2str(app.Axis_X.Value)];
                        Ax = eval(varname);
                        app.corrx = Ax{idx1}(:, indexX);
                        app.corrTx = app.T{idx1};
                    end

                case 'Angular velocity'
                    if app.Axis_X.Value == "XYZ"
                        msgbox('The choice of axis is incorrect')
                        return
                    else
                        varname = ['app.AngVeloc_', num2str(app.Axis_X.Value)];
                        Ax = eval(varname);
                        app.corrx = Ax{idx1}(:, indexX);
                        app.corrTx = app.T{idx1}(2:end);
                    end

                case 'Angular acceleration'
                    if app.Axis_X.Value == "XYZ"
                        msgbox('The choice of axis is incorrect')
                        return
                    else
                        varname = ['app.AngAcc_', num2str(app.Axis_X.Value)];
                        Ax = eval(varname);
                        app.corrx = Ax{idx1}(:, indexX);
                        app.corrTx = app.T{idx1}(3:end);
                    end

                case 'Raw E-phy trace'
                    if isempty (app.Voltage)
                        msgbox('Import an EMG first')
                        return
                    else
                        app.corrx = app.Voltage(:, indexX); % no element needs to be selected
                        app.corrTx = app.tEMG;
                    end

                case 'E-phy envelope'
                    if isempty (app.envelope)
                        msgbox('create an E-phy envelope first')
                        return
                    else
                        app.corrx = app.envelope(:, indexX); % no element needs to be selected
                        app.corrTx = app.tEMG;
                    end

                case 'Raw sensor signal'
                    if isempty (app.SensorValues)
                        msgbox('Import a sensor signal first')
                        return
                    else
                        app.corrx = app.SensorValues(:, indexX); % no element needs to be selected
                        app.corrTx = app.tSensor;
                    end

                case 'Sensor envelope'
                    if isempty (app.Senvelope)
                        msgbox('Import a sensor signal first')
                        return
                    else
                        app.corrx = app.Senvelope(:, indexX); % no element needs to be selected
                        app.corrTx = app.tSensor;
                    end
            end

        end

        function SelectForCorrelationY = SelectForCorrelationY(app) %#ok<STOUT>

            app.corry = [];


            % Select the data sample for the Y of the correlation
            % Select the parameter from the right element
            [~, idx2] = ismember(app.ElementDropDownY.Value, app.ElementName);

            % Select the index from the list of POI
            [~, indexY] = ismember(app.POIY.Value, app.POIY.Items);

            % Here the variable name app.XXX is concatenated with the
            % choosen XYZ axis. Then the data from the variable are
            % selected depending on the idx1 selected by the used and the
            % colummn (indexX) selected by the user

            switch app.ParameterY.Value

                case 'Distance'
                    varname = ['app.d', num2str(app.Axis_Y.Value)];
                    Ay = eval(varname); % Accessing the variable using its name
                    app.corry = Ay{idx2}(:, indexY);
                    app.corrTy = app.T{idx2}(2:end);

                case 'Speed'
                    varname = ['app.V', num2str(app.Axis_Y.Value)];
                    Ay = eval(varname);
                    app.corry = Ay{idx2}(:, indexY);
                    app.corrTy = app.T{idx2}(2:end);

                case 'Acceleration'
                    varname = ['app.A', num2str(app.Axis_Y.Value)];
                    Ay = eval(varname);
                    app.corry = Ay{idx2}(:, indexY);
                    app.corrTy = app.T{idx2}(3:end);

                case 'Angular variation'
                    if app.Axis_Y.Value == "XYZ"
                        msgbox('The choice of axis is incorrect')
                        return
                    else
                        varname = ['app.Angles', num2str(app.Axis_Y.Value)];
                        Ay = eval(varname);
                        app.corry = Ay{idx2}(:, indexY); % idx2 = element indexY = POI
                        app.corrTy = app.T{idx2};
                    end

                case 'Angular velocity'
                    if app.Axis_Y.Value == "XYZ"
                        msgbox('The choice of axis is incorrect')
                        return
                    else
                        varname = ['app.AngVeloc_', num2str(app.Axis_Y.Value)];
                        Ay = eval(varname);
                        app.corry = Ay{idx2}(:, indexY);
                        app.corrTy = app.T{idx2}(2:end);
                    end

                case 'Angular acceleration'
                    if app.Axis_Y.Value == "XYZ"
                        msgbox('The choice of axis is incorrect')
                        return
                    else
                        varname = ['app.AngAcc_', num2str(app.Axis_Y.Value)];
                        Ay = eval(varname);
                        app.corry = Ay{idx2}(:, indexY);
                        app.corrTy = app.T{idx2}(3:end);
                    end

                case 'Raw E-phy trace'
                    if isempty (app.Voltage)
                        msgbox('Import an EMG first')
                        return
                    else
                        app.corry = app.Voltage(:, indexY); % no element needs to be selected
                        app.corrTy = app.tEMG;
                    end

                case 'E-phy envelope'
                    if isempty (app.envelope)
                        msgbox('create an E-phy envelope first')
                        return
                    else
                        app.corry = app.envelope(:, indexY); % no element needs to be selected
                        app.corrTy = app.tEMG;

                    end

                case 'Raw sensor signal'
                    if isempty (app.SensorValues)
                        msgbox('Import a sensor signal first')
                        return
                    else
                        app.corry = app.SensorValues(:, indexY); % no element needs to be selected
                        app.corrTy = app.tSensor;
                    end

                case 'Sensor envelope'
                    if isempty (app.Senvelope)
                        msgbox('Import a sensor signal first')
                        return
                    else
                        app.corry = app.Senvelope(:, indexY); % no element needs to be selected
                        app.corrTy = app.tSignal;
                    end

            end
        end

        function Resample = Resample(app) %#ok<STOUT>
            % check that the signals have the same sampling rate
            SRx = 1/(mean(diff(app.corrTx)));
            SRy = 1/(mean(diff(app.corrTy)));

            % determine the ratio of the sampling rate
            if SRx > SRy
                ratio = abs(SRx/SRy);
                app.RStime = app.corrTx; % resampling time is the highest of the SR
            elseif SRx < SRy
                ratio = abs(SRy/SRx);
                app.RStime = app.corrTy;
            elseif SRx == SRy
                ratio = 1;
                app.RStime = app.corrTx;
            end

            % If they have the same ratio, pass
            if ratio == 1
            elseif ratio > 1.05 % if the ratio of sampling rate greater than 5%
                choice1 = questdlg('The sampling rate of these two signals is not the same. Do you want MotionAnalyser to resample to the highest sampling rate ', 'Confirmation', 'Resample', 'Interpolate', 'Abandon');

                switch choice1
                    case 'Resample'
                        % determine which signal has the lowest sampling rate
                        if SRx > SRy
                            app.corry = resample(app.corry, round(SRx), round(SRy));
                            duration = numel(app.corry) / SRx;
                            app.corrTy = linspace(0, duration, numel(app.corry));
                        else
                            app.corrx = resample(app.corrx, round(SRy), round(SRx));
                            duration = numel(app.corrx) / SRy;
                            app.corrTx = linspace(0, duration, numel(app.corrx));
                        end
                    case 'Interpolate'
                        if SRx > SRy
                            % Compute the time vector for the interpolated signal
                            t_new = linspace(0, app.corrTy(end), round((length(app.corry))-1)*SRx/SRy+1)';

                            % Interpolate the signal
                            interp_signal = interp1(app.corrTy, app.corry, t_new, 'linear');

                            app.corrTy = t_new;
                            app.corry = interp_signal;
                        else
                            % Compute the time vector for the interpolated signal
                            t_new = linspace(0, app.corrTx(end), round((length(app.corrx))-1)*SRy/SRx+1)';

                            % Interpolate the signal
                            interp_signal = interp1(app.corrTx, app.corrx, t_new, 'linear');

                            app.corrTx = t_new;
                            app.corrx = interp_signal;
                        end

                    case 'Abandon'
                        return;
                end
            end

            % plot to check
            cla(app.UIAxes14); % clear uiAxes
            cla(app.UIAxes14,'reset'); % reset uiaxes
            plot (app.UIAxes14, app.corrTx, app.corrx,'r')
            title(app.UIAxes14, 'Is this adjustment OK?')
            hold (app.UIAxes14, 'on')
            plot (app.UIAxes14, app.corrTy, app.corry, 'b')

            % check that the number of samples identical for corrx and corry
            Sx = length (app.corrx);
            Sy = length (app.corry);

            if abs(Sx-Sy) >2

                % Create a message to display in the dialog box
                message = 'Which part of the signal do you want to trim?';

                % Create a title for the dialog box
                Title = 'Choose';

                % Define the button labels
                button1 = 'Trim the start';
                button2 = 'Trim the end';
                button3 = 'Abandon';

                % Create the dialog box and store the button clicked
                buttonClicked = questdlg(message, Title, button1, button2, button3);

                % Process the user's choice
                switch buttonClicked
                    case button2
                        % Trim the start of the signal
                        minLength = min (length(app.corrx), length(app.corry));
                        app.corrx = app.corrx (1:minLength);
                        app.corry = app.corry (1:minLength);
                        app.RStime = app.RStime (1:minLength);
                    case button1
                        diff_length = abs(length(app.corrx)-length(app.corry));
                        % Trim the start of the signal
                        if length(app.corrx) > length(app.corry)
                            app.corrx = app.corrx(diff_length+1:end); % trim the start of corrx
                            app.RStime = app.RStime(1:(end-diff_length));
                        elseif length(app.corry) > length(app.corrx)
                            app.corry = app.corry(diff_length+1:end); % trim the start of corry
                            app.RStime = app.RStime(1:(end-diff_length));
                        else
                            % signals already have the same length
                        end
                    case button3
                        return;
                end


                % resize to the min matrix size to plot together data that have initially different number to data point
                minLength = min (length(app.corrx), length(app.corry));
                % resize
                app.corrx = app.corrx (1:minLength);
                app.corry = app.corry (1:minLength);
                app.RStime = app.RStime (1:minLength);

                % plot to check
                cla(app.UIAxes14); % clear uiAxes
                cla(app.UIAxes14,'reset'); % reset uiaxes
                plot (app.UIAxes14, app.RStime, app.corrx, 'r')
                hold (app.UIAxes14, 'on')
                plot (app.UIAxes14, app.RStime, app.corry, 'b')

                % Create a message to display in the dialog box
                msgbox('If this is not OK, resample/interpolate manually/trim before trying again');

                % Wait for the user to press "OK" or close the message box
                uiwait(gcf); % gcf returns the handle of the current figure
            else
            end

        end


        function CorrTable = CorrTable(app) %#ok<STOUT>
            % This edits only partially the correlation table the rest is performe in each individual functions

            % Fetch column name
            app.UITableCCC.ColumnName = ["Element-Parameter-Point-Axis", "Element-Parameter-Point-Axis", "C-value lag0", "Amplitude ratio", "Phase lag (Deg)", "E-distance", "Inner product", "Cosine similarity","Dynamic Time wrapping", "Pearson corr. coef.", "Spearman corr. coef.", "Kendall corr. coef."];

            % fetch data values
            app.CorrTbl1 = [(app.ElementDropDownX.Value),'-',(app.ParameterX.Value),'-',(app.POIX.Value),'-',(app.Axis_X.Value)];
            app.CorrTbl2 = [(app.ElementDropDownY.Value),'-',(app.ParameterY.Value),'-',(app.POIY.Value),'-',(app.Axis_Y.Value)];
        end

        function ChangeTemporalResolution = ChangeTemporalResolution(app) %#ok<STOUT>
            dlgtitle = 'Sampling rate';
            prompt = {'Define a new sampling rate'};
            dims = [1 40];
            definput = {'Unchanged'};
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)
            elseif answer == "Unchanged"
            else
                factor = str2double(answer);
                difft = 1./factor; % time difference between 2 values
                m = length (app.tSignal);
                time = 0+(0:m-1)*difft;
                app.tSignal = transpose(time);
            end

            % Update the sampling rate display
            selectedTab = app.TabGroup.SelectedTab;
            if selectedTab == app.EphyTab
                app.SamplingDataRate.Value = factor;
                app.Freq = factor; % update value of EMG frequency
            elseif selectedTab == app.SensorTab
                app.SensorSamplingRate.Value = factor;
                app.SFreq = factor; % update value of sensor frequency
            else
            end
        end

        function plotfSensor = plotfSensor(app) %#ok<STOUT>
            cla(app.UIAxesSensor); cla(app.UIAxesSensor,'reset');

            % send data to the function that spread values on Y
            app.transport = app.fSensorValues;
            SpreadOnY(app); % app function

            plot (app.UIAxesSensor, app.tSensor, app.retour)
            xlabel(app.UIAxesSensor, 'Time');
            ylabel(app.UIAxesSensor, 'Sensor amplitude');
            legend (app.UIAxesSensor, app.colnameSensor);
        end

        function UpdateSensorTable = UpdateSensorTable(app) %#ok<STOUT>
            app.UITableSensor.Data = [app.tSensor, app.fSensorValues];
            app.UITableSensor.ColumnName = ["Time", app.colnameSensor];
        end

        function UpdateEMGTable = UpdateEMGTable(app) %#ok<STOUT>
            app.UITable16.Data = [app.tEMG, app.fEMG];
            app.UITable16.ColumnName = ["Time",app.colnameEMG];
        end

        function AmplitudeSlider = AmplitudeSlider(app) %#ok<STOUT>

            %Select the UIAxes depending on the current tab
            selectedTab = app.TabGroup.SelectedTab;

            if selectedTab == app.EphyTab
                Ax = app.UIAxesEMG;
                % Get the current value of the slider
                value = app.AmplitudescalefactorSlider.Value;
            elseif selectedTab == app.SensorTab
                Ax = app.UIAxesSensor;
                % Get the current value of the slider
                value = app.AmplitudescalefactorSlider_2.Value;
            end

            % Scale the plot

            % Reset the y-axis limits to the default (automatic)
            ylim(Ax, 'auto');

            % Calculate the new y-axis limits
            ylimits = ylim(Ax);
            maxrange = diff(ylimits);
            new_ylimits = [0, maxrange/value];

            % Set the new x-axis limits
            ylim(Ax, new_ylimits);
        end

        function TimeSlider = TimeSlider(app) %#ok<STOUT>
            %Select the UIAxes depending on the current tab
            selectedTab = app.TabGroup.SelectedTab;

            if selectedTab == app.EphyTab
                Ax = app.UIAxesEMG;
                % Get the current value of the slider
                value = app.TimescalefactorSlider.Value;
            elseif selectedTab == app.SensorTab
                Ax = app.UIAxesSensor;
                % Get the current value of the slider
                value = app.TimescalefactorSlider_2.Value;
            end

            % Reset the x-axis limits to the default (automatic)
            xlim(Ax, 'auto');

            % Calculate the new x-axis limits
            xlimits = xlim(Ax);
            maxrange = diff(xlimits);
            new_xlimits = [0, maxrange/value];

            % Set the new x-axis limits
            xlim(Ax, new_xlimits);
        end

        function SelectSOI = SelectSOI(app) %#ok<STOUT>
            % Define the options for the dropdown menu
            options = app.colnameSensor;

            screensize = get(groot, 'Screensize');

            % Define the position and size of the dialog box
            width = 250;
            height = 150;
            left = screensize(3)/2 - width/2;
            bottom = screensize(4)/2 - height/2;
            position = [left, bottom, width, height];

            % Create a dialog box with a dropdown menu
            dlg = dialog('Name', 'Select a sensor', 'Position', position);
            dropdown = uicontrol(dlg, 'Style', 'popupmenu', 'String', options, 'Position', [50, 75, 150, 25]);

            % Add a push button to the dialog box
            uicontrol(dlg, 'Style', 'pushbutton', 'String', 'OK', 'Position', [50, 25, 150, 25], 'Callback', 'uiresume(gcbf)');

            % Wait for the user to close the dialog box
            uiwait(dlg);

            % Get the index of the selected option from the dropdown menu
            app.SelectedOptionIndex = [];
            app.SelectedOptionIndex = get(dropdown, 'Value');

            % Close the dialog box
            delete(dlg);
        end

        function plotSenvelope = plotSenvelope(app) %#ok<STOUT>
            % send data to the function that spread values on Y
            app.transport = app.Senvelope;
            SpreadOnY(app); % app function

            % plot
            cla(app.UIAxesSensor); cla(app.UIAxesSensor,'reset');
            plot (app.UIAxesSensor, app.tSensor, app.retour);
            title(app.UIAxesSensor, 'Sensor signal envelope');
            xlabel(app.UIAxesSensor, 'Time');
            ylabel(app.UIAxesSensor, 'Amplitude');
            legend (app.UIAxesSensor, app.colnameSensor);
        end

        function NumberElement = CheckNumberElementSelected(app)

            NumberElement = length(app.e);
            if NumberElement  > 1
                msgbox(['Your selection includes multiple elements. This function' ...
                    'is designed to work with a single element at a time. Please adjust' ...
                    'your selection accordingly.', 'Multiple Elements Selected', 'warn'])

            end
        end
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            % Get the screen size
            screensize = get(groot, 'Screensize');

            % Get the app position and size
            size = app.MotionAnalyserUIFigure.OuterPosition(3:4);

            % Calculate the new position to center the app on the screen
            newposition = [screensize(3)/2-size(1)/2, screensize(4)/2-size(2)/2, size(1), size(2)];

            % Set the app position to the new position
            app.MotionAnalyserUIFigure.Position = newposition;

            % Default values for element
            app.n=1;
            app.n2=1;
            app.n4=1;
            app.n29 = 1; % position of slider
            app.n6 = 0; % the next button in the load panel
            app.n3 = 1;
            app.n7 = 1;
            app.MultiplyingFactor1 = 1;
            app.AnimationSpeed = 0.01;
        end

        % Button pushed function: DistanceButton
        function DistanceButtonPushed(app, event)
            CleanKinematicPlots(app)
            if numel(app.dX) >=1
                plot (app.UIAxes2, app.T{app.e}(2:end,:), app.dX{app.e}(1:end,app.idxPOI)); % app.idxPOI allows to choose which point to display
                title(app.UIAxes2, 'x-distance');
                xlabel(app.UIAxes2, 'time');
                ylabel(app.UIAxes2, 'distance on x');

                plot (app.UIAxes3, app.T{app.e}(2:end,:), app.dY{app.e}(1:end,app.idxPOI));
                title(app.UIAxes3, 'y-distance');
                xlabel(app.UIAxes3, 'time');
                ylabel(app.UIAxes3, 'distance on y');

                if app.Arb_Z == 0 % if the Z matrix has real values
                    plot (app.UIAxes4, app.T{app.e}(2:end,:), app.dZ{app.e}(1:end,app.idxPOI));
                    title(app.UIAxes4, 'z-distance');
                    xlabel(app.UIAxes4, 'time');
                    ylabel(app.UIAxes4, 'distance on z');

                    plot (app.UIAxes5, app.T{app.e}(2:end,:), app.dXYZ{app.e}(1:end,app.idxPOI))
                    title(app.UIAxes5, 'xyz-distance');
                    xlabel(app.UIAxes5, 'time');
                    ylabel(app.UIAxes5, 'distance on xyz');
                else
                    plot (app.UIAxes4, app.T{app.e}(2:end,:), app.dXY{app.e}(1:end,app.idxPOI))
                    title(app.UIAxes4, 'xy-distance');
                    xlabel(app.UIAxes4, 'time');
                    ylabel(app.UIAxes4, 'distance on xy');

                    cat = categorical({'x-amplitude','y-amplitude','xy-amplitude'});
                    cat = reordercats(cat,{'x-amplitude','y-amplitude','xy-amplitude'});
                    bar (app.UIAxes5, cat, [app.DistanceStat{app.e,5}(1:end,app.idxPOI); app.DistanceStat{app.e,10}(1:end,app.idxPOI); app.DistanceStat{app.e,15}(1:end,app.idxPOI)]);
                    title(app.UIAxes5, 'x, y and xy-amplitude');
                    xlabel(app.UIAxes5, 'Categories');
                    ylabel(app.UIAxes5, 'Distance');
                    legend(app.UIAxes5, app.colname{app.e}(1:end,app.idxPOI), 'Location','southoutside',...
                        "Orientation","horizontal", 'NumColumns',3, "Box","off");
                end
            end
        end

        % Selection changed function: ButtonGroup
        function ButtonGroupSelectionChanged(app, event)
            switch app.ButtonGroup.SelectedObject.Text
                case 'x1'
                    value = 1;
                case 'x3'
                    value = 3;
                case 'x5'
                    value = 5;
                case 'x10'
                    value = 10;
                case 'x100'
                    value =100;
                case 'x1000'
                    value = 1000;
                otherwise
                    value = 1;
            end

            app.MultiplyingFactor1 = value;

        end

        % Button pushed function: PrevButton_3
        function PrevButton_3Pushed(app, event)
            hold(app.UIAxes13, 'on')

            % condition related to the recoding number
            app.n2 = app.n2-app.MultiplyingFactor1;

            if app.n2 < 1
                app.n2 = 1;
                msgbox('This was the first position');
                pause (2);
                close;
            else
                % plot the limb at the value returned by the slider
                delete(app.P3);
                app.P3 = plot (app.UIAxes13, app.XStep{app.e}(app.n2,:), app.YStep{app.e}(app.n2,:), '-o', 'Color','r', 'MarkerEdgeColor','k', "MarkerSize", app.Msize);
            end
            % Display the position number
            app.PositionEditField.Value = app.n2;

            % set the slider position
            app.PositionSlider_2.Value = app.n2;
        end

        % Value changed function: PositionSlider_2
        function PositionSlider_2ValueChanged(app, event)
            hold(app.UIAxes13, 'on')
            % set the max value of the slider as the length of app.xStep
            max_value = length(app.XStep{app.e});
            min_value = 1;
            app.PositionSlider_2.Limits = [min_value max_value];

            %extract the value of the slider
            value = round(app.PositionSlider_2.Value);

            % plot the limb at the value returned by the slider
            app.n2 = value;
            delete(app.P3);
            app.P3 = plot (app.UIAxes13, app.XStep{app.e}(app.n2,:), app.YStep{app.e}(app.n2,:), '-o', 'Color','r', 'MarkerEdgeColor','k', "MarkerSize", app.Msize);

            % display the position number
            app.PositionEditField.Value = app.n2;
        end

        % Button pushed function: NextButton_3
        function NextButton_3Pushed(app, event)
            hold(app.UIAxes13, 'on')
            % condition related to the recoding number
            app.n2 = app.n2+app.MultiplyingFactor1;
            lim = length(app.XStep{app.e});

            if app.n2 >= lim+1
                app.n2 = lim;
                msgbox('This was the last position');
                pause (2);
                close;
            else
                % plot the limb at the value returned by the slider
                delete(app.P3);
                app.P3 = plot (app.UIAxes13, app.XStep{app.e}(app.n2,:), app.YStep{app.e}(app.n2,:), '-o', 'Color','r', 'MarkerEdgeColor','k', "MarkerSize", app.Msize);

            end

            % Display the position number
            app.PositionEditField.Value = app.n2;

            % set the slider position
            app.PositionSlider_2.Value = app.n2;
        end

        % Button pushed function: HeelstrikeButton
        function HeelstrikeButtonPushed(app, event)
            % capture X
            app.capture_X_HS = [app.capture_X_HS; app.XStep{app.e}(app.n2,:)];
            app.X_HS_position{app.e} = app.capture_X_HS;
            app.XHS{app.e} = app.X_HS_position{app.e}(:, app.WhereIsHeel); % captures only the X-coordinate for the heel

            % capture Y
            app.capture_Y_HS = [app.capture_Y_HS; app.YStep{app.e}(app.n2,:)];
            app.Y_HS_position{app.e} = app.capture_Y_HS;
            app.YHS{app.e} = app.Y_HS_position{app.e}(:, app.WhereIsHeel); % captures only the Y-coordinate for the heel

            % capture Z
            app.capture_Z_HS = [app.capture_Z_HS; app.ZStep{app.e}(app.n2,:)];
            app.Z_HS_position{app.e} = app.capture_Z_HS;
            app.ZHS{app.e} = app.Z_HS_position{app.e}(:, app.WhereIsHeel); % captures only the Z-coordinate for the heel

            % capture T
            app.capture_t3 = [app.capture_t3; app.T{app.e}(app.n2,:)];
            app.tvalue3{app.e} = app.capture_t3;

            % display on the table
            FillGaitTable(app)
        end

        % Button pushed function: ToeoffButton
        function ToeoffButtonPushed(app, event)
            % capture X
            app.capture_X_TO = [app.capture_X_TO; app.XStep{app.e}(app.n2,:)];
            app.X_TO_position{app.e} = app.capture_X_TO;
            app.XTO{app.e} = app.X_TO_position{app.e}(:, app.WhereIsToe); % captures only the X-coordinate for the heel

            % capture Y
            app.capture_Y_TO = [app.capture_Y_TO; app.YStep{app.e}(app.n2,:)];
            app.Y_TO_position{app.e} = app.capture_Y_TO;
            app.YTO{app.e} = app.Y_TO_position{app.e}(:, app.WhereIsToe); % captures only the Y-coordinate for the heel

            % capture Z
            app.capture_Z_TO = [app.capture_Z_TO; app.ZStep{app.e}(app.n2,:)];
            app.Z_TO_position{app.e} = app.capture_Z_TO;
            app.ZTO{app.e} = app.Z_TO_position{app.e}(:, app.WhereIsToe); % captures only the Z-coordinate for the heel

            % capture T
            app.capture_t1 = [app.capture_t1; app.T{app.e}(app.n2,:)];
            app.tvalue1{app.e} = app.capture_t1;

            % display on the table
            FillGaitTable(app)
        end

        % Button pushed function: MaxtoeliftButton
        function MaxtoeliftButtonPushed(app, event)
            % capture X
            app.capture_X_MTL = [app.capture_X_MTL; app.XStep{app.e}(app.n2,:)];
            app.X_MTL_position{app.e} = app.capture_X_MTL;
            app.XMTL{app.e} = app.X_MTL_position{app.e}(:, app.WhereIsToe); % captures only the X-coordinate for the heel

            % capture Y
            app.capture_Y_MTL = [app.capture_Y_MTL; app.YStep{app.e}(app.n2,:)];
            app.Y_MTL_position{app.e} = app.capture_Y_MTL;
            app.YMTL{app.e} = app.Y_MTL_position{app.e}(:, app.WhereIsToe); % captures only the Y-coordinate for the heel

            % capture Z
            app.capture_Z_MTL = [app.capture_Z_MTL; app.ZStep{app.e}(app.n2,:)];
            app.Z_MTL_position{app.e} = app.capture_Z_MTL;
            app.ZMTL{app.e} = app.Z_MTL_position{app.e}(:, app.WhereIsToe); % captures only the Z-coordinate for the heel

            % capture T
            app.capture_t2 = [app.capture_t2; app.T{app.e}(app.n2,:)];
            app.tvalue2{app.e} = app.capture_t2;

            % display on the table
            FillGaitTable(app)
        end

        % Button pushed function: DeleteallButton
        function DeleteallButtonPushed(app, event)
            DeleteGaitParameters(app)
        end

        % Value changed function: PositionSlider
        function PositionSliderValueChanged(app, event)
            Slider1Position(app);
        end

        % Button pushed function: AnimateButton
        function AnimateButtonPushed(app, event)
            if numel(app.X) >=1
                for m = 1:length(app.e)
                    if app.nPOI{app.e(m)}(1) >= 2

                        lines = cell(size((app.XAnim{app.e(1)}), 1), size(app.e, 2));

                        cla(app.UIAxes12,'reset')
                        cmap = get(app.UIAxes12,'defaultAxesColorOrder');

                        % plot all segments
                        axis(app.UIAxes12, 'auto')
                        hold(app.UIAxes12, 'on')

                        for k=1:size(app.e, 2)
                            lines(:, k) = num2cell(plot3(app.UIAxes12, app.XAnim{app.e(k)}', app.YAnim{app.e(k)}', app.Z{app.e(k)}', ...
                                'Color', cmap(k, :), 'Marker', app.Mtype, "MarkerEdgeColor",app.MarkerEdgeColor, ...
                                "MarkerFaceColor", app.MarkerFaceColor, "MarkerSize", app.Msize, "LineWidth", app.LineThickness));
                        end
                        app.UIAxes12.DataAspectRatio = [1 1 1];
                        Axes1_12Settings(app)

                        % ylim(app.UIAxes12,[(-app.dist.*1.5), (app.dist*1.5)]);
                        updateview(app)

                        %end
                        hold(app.UIAxes12, 'off')
                        axis(app.UIAxes12, 'manual')

                        for i = 2:size(lines, 1)
                            for l = lines(i, :)
                                l{1}.Visible = 0; %#ok<FXSET>
                            end
                        end

                        for i = 2:size(lines, 1)
                            pause(app.TimeInterval)
                            for l = lines(i-1, :)
                                l{1}.Visible = 0; %#ok<FXSET>
                            end
                            for l = lines(i, :)
                                l{1}.Visible = 1; %#ok<FXSET>
                            end
                        end
                    else


                        %                     for k = 1:size(app.e, 2)
                        %                         for o = 1:size((app.XAnim {1}), 1)
                        %                             plot3(app.UIAxes12, app.XAnim{app.e(k)}(o), app.YAnim{app.e(k)}(o), app.ZAnim{app.e(k)}(o), 'ro');
                        %                         drawnow
                        %                         pause(app.TimeintervalEditField.Value); % pause for a short time
                        %
                        %                         end
                        %                     end
                        msgbox('Insufficient POI')
                    end
                end
            else
                msgbox('No coordinates available')
            end

        end

        % Value changed function: PositionSlider_3
        function PositionSlider_3ValueChanged(app, event)
            if numel(app.X) >=1
                cla(app.UIAxes12,'reset')

                % Extract position from the slider
                max_value = length(app.XAnim{app.e(1)}(:,:));
                min_value = 1;
                app.PositionSlider_3.Limits = [min_value max_value];
                app.n4 = round(app.PositionSlider_3.Value)+app.n6; % extract the value of the slider
                app.PositionField2.Value = app.n4; % Indicate position of the slider


                % define default line colors
                cmap = get(app.UIAxes12,'defaultAxesColorOrder');

                
                hold (app.UIAxes12, 'on');
                for k=1:size(app.e, 2)
                    % plot first position
                    plot3 (app.UIAxes12, app.XAnim{app.e(k)}(1,:), app.YAnim{app.e(k)}(1,:), app.Z{app.e(k)}(1,:)', 'Color','w');
                    % plot last position                
                    plot3 (app.UIAxes12, app.XAnim{app.e(k)}(end,:), app.YAnim{app.e(k)}(end,:), app.Z{app.e(k)}(end,:)', 'Color','w');
                    % plot slider position                
                    plot3 (app.UIAxes12, app.XAnim{app.e(k)}(app.n4,:), app.YAnim{app.e(k)}(app.n4,:), app.Z{app.e(k)}(app.n4,:)',...
                        'Color', cmap(app.e(k), :), 'Marker', app.Mtype, "MarkerEdgeColor",app.MarkerEdgeColor, ...
                        "MarkerFaceColor", app.MarkerFaceColor, "MarkerSize", app.Msize, "LineWidth", app.LineThickness);
                end
                app.UIAxes12.DataAspectRatio = [1 1 1];
                Axes1_12Settings(app)

                % ylim(app.UIAxes12,[(-app.dist.*1.5), (app.dist*1.5)]);
                updateview(app)
            else
                msgbox('No coordinates available')
            end
        end

        % Button pushed function: StickdiagramsButton
        function StickdiagramsButtonPushed(app, event)
            CleanKinematicPlots(app)
            if numel(app.dX) >=1
                if app.nPOI{app.e} >= 2
                    %% waitbar
                    f = waitbar(0.1,'Please wait...');

                    % Unproccessed
                    for i = 1:app.SegDens:size(app.X{app.e}, 1) % for i= all the rows (the size of the matrix)
                        plot (app.UIAxes2, app.X{app.e}(i,:), app.Y{app.e}(i,:), 'Marker', app.Mtype,...
                            'LineWidth', app.LineThickness, 'MarkerEdgeColor',...
                            app.MarkerEdgeColor, 'MarkerFaceColor', app.MarkerFaceColor, "MarkerSize", app.Msize);
                        hold(app.UIAxes2, 'on')
                    end
                    hold(app.UIAxes2, 'off')
                    title(app.UIAxes2, 'Unprocessed');
                    axis(app.UIAxes2, 'equal');  % app.UIAxes2.DataAspectRatio = [1 1 1]; this alternative trims the figure box
                    % set( findobj(app.UIAxes2.YAxis), 'Visible', app.yaxis);
                    set( findobj(app.UIAxes2.XAxis), 'Visible', app.xaxis);

                    % x-normalised
                    waitbar(.3,f,'Please wait...');
                    xnorm = (app.X{app.e}(:,:)-app.X{app.e}(:,app.NormalisedTo));

                    for i = 1:app.SegDens:size(app.X{app.e}, 1) % for i= all the rows (the size of the matrix)
                        plot (app.UIAxes3, xnorm(i,:), app.Y{app.e}(i,:), 'Marker', app.Mtype,...
                            'LineWidth', app.LineThickness, 'MarkerEdgeColor',...
                            app.MarkerEdgeColor, 'MarkerFaceColor', app.MarkerFaceColor, "MarkerSize", app.Msize);
                        hold(app.UIAxes3, 'on')
                    end
                    hold(app.UIAxes3, 'off')
                    title(app.UIAxes3, 'x-normalised');
                    axis(app.UIAxes3, 'equal');  % app.UIAxes2.DataAspectRatio = [1 1 1]; this alternative trims the figure box
                    set( findobj(app.UIAxes3.YAxis), 'Visible', app.yaxis);
                    set( findobj(app.UIAxes3.XAxis), 'Visible', app.xaxis);

                    % y-normalised
                    waitbar(.6,f,'Please wait...');
                    ynorm = (app.Y{app.e}(:,:)-app.Y{app.e}(:,app.NormalisedTo));

                    for i = 1:app.SegDens:size(app.X{app.e}, 1) % for i= all the rows (the size of the matrix)
                        plot (app.UIAxes4, app.X{app.e}(i,:), ynorm(i,:), 'Marker', app.Mtype,...
                            'LineWidth', app.LineThickness, 'MarkerEdgeColor',...
                            app.MarkerEdgeColor, 'MarkerFaceColor', app.MarkerFaceColor, "MarkerSize", app.Msize);
                        hold(app.UIAxes4, 'on')
                    end
                    hold(app.UIAxes4, 'off')
                    title(app.UIAxes4, 'y-normalised');
                    axis(app.UIAxes4, 'equal');  % app.UIAxes2.DataAspectRatio = [1 1 1]; this alternative trims the figure box
                    set( findobj(app.UIAxes4.YAxis), 'Visible', app.yaxis);
                    set( findobj(app.UIAxes4.XAxis), 'Visible', app.xaxis);

                    % xy-normalised
                    waitbar(.9,f,'Please wait...');
                    for i = 1:app.SegDens:size(app.X{app.e}, 1) % for i= all the rows (the size of the matrix)
                        plot (app.UIAxes5, xnorm(i,:), ynorm(i,:), 'Marker', app.Mtype,...
                            'LineWidth', app.LineThickness, 'MarkerEdgeColor',...
                            app.MarkerEdgeColor, 'MarkerFaceColor', app.MarkerFaceColor, "MarkerSize", app.Msize);
                        hold(app.UIAxes5, 'on')
                    end
                    hold(app.UIAxes5, 'off')
                    title(app.UIAxes5, 'xy-normalised');
                    axis(app.UIAxes5, 'equal');  % app.UIAxes2.DataAspectRatio = [1 1 1]; this alternative trims the figure box
                    set( findobj(app.UIAxes5.YAxis), 'Visible', app.yaxis);
                    set( findobj(app.UIAxes5.XAxis), 'Visible', app.xaxis);
                    %close waitbar
                    waitbar(1,f,'Done!');
                    pause(0.5);
                    close(f);
                else
                    msgbox('Insufficient POIs to plot stick diagrams')
                end
            end
        end

        % Callback function
        function RenamePOIEditFieldValueChanged(app, event)
            value = app.RenamePOIEditField.Value;

            value = convertCharsToStrings(value);
            app.designation = [app.designation, value];
        end

        % Callback function
        function NextPOIButtonPushed(app, event)
            app.RenamePOIEditField.Value = '';
        end

        % Button pushed function: DeletelastButton
        function DeletelastButtonPushed(app, event)
            % if values are still present in tvalue then update tables
            if isempty (app.capture_t3)
                msgbox ('No more recorded values for this position')
                app.UITableGait.Data = [];
            else
                % remove the last selected capture the selected coordinates
                app.capture_X_HS(end, :) = [];
                app.capture_Y_HS(end, :) = [];
                app.capture_Z_HS(end, :) = [];
                app.capture_t3(end,:) = [];

                % Remove the last x, y and z-values
                app.XHS{app.e}(end, :) = [];
                app.YHS{app.e}(end, :) = [];
                app.ZHS{app.e}(end, :) = [];

                % Remove the last position
                app.X_HS_position{app.e}(end, :) = [];
                app.Y_HS_position{app.e}(end, :) = [];
                app.Z_HS_position{app.e}(end, :) = [];

                % Remove the last time value for HS matrix
                app.tvalue3{app.e}(end, :) = [];

                % remove values from strlg and strdur matrixes
                app.strlg = {}; % stride lengths
                app.strdur = {}; % stride duration
            end
            % update table
            FillGaitTable(app)
        end

        % Button pushed function: DeletelastButton_3
        function DeletelastButton_3Pushed(app, event)
            % if values are still present in tvalue then update tables
            if isempty (app.capture_t1)
                msgbox ('No more recorded values for this position')
                app.UITableGait.Data = [];
            else
                % remove the last selected capture the selected coordinates
                app.capture_X_TO(end, :) = [];
                app.capture_Y_TO(end, :) = [];
                app.capture_Z_TO(end, :) = [];
                app.capture_t1(end,:) = [];

                % Remove the last x, y and z-values
                app.XTO{app.e}(end, :) = [];
                app.YTO{app.e}(end, :) = [];
                app.ZTO{app.e}(end, :) = [];

                % Remove the last x, y and z-values from the TO matrix
                app.X_TO_position{app.e}(end, :) = [];
                app.Y_TO_position{app.e}(end, :) = [];
                app.Z_TO_position{app.e}(end, :) = [];

                % Remove the last time value
                app.tvalue1{app.e}(end, :) = [];
            end
            % update table
            FillGaitTable(app)
        end

        % Button pushed function: DeletelastButton_4
        function DeletelastButton_4Pushed(app, event)
            % if values are still present in tvalue then update tables
            if isempty (app.capture_t2)
                msgbox ('No more recorded values for this position')
                app.UITableGait.Data = [];
            else
                % remove the last selected capture the selected coordinates
                app.capture_X_MTL(end, :) = [];
                app.capture_Y_MTL(end, :) = [];
                app.capture_Z_MTL(end, :) = [];
                app.capture_t2(end,:) = [];

                % Remove the last x, y and z-values
                app.XMTL{app.e}(end, :) = [];
                app.YMTL{app.e}(end, :) = [];
                app.ZMTL{app.e}(end, :) = [];

                % Remove the last x,y and z-values
                app.X_MTL_position{app.e}(end, :) = [];
                app.Y_MTL_position{app.e}(end, :) = [];
                app.Z_MTL_position{app.e}(end, :) = [];

                % Remove the last time value
                app.tvalue2{app.e}(end, :) = [];
            end
            % display on the table
            FillGaitTable(app)
        end

        % Button pushed function: PlotcorrelationButton
        function PlotcorrelationButtonPushed(app, event)
            SelectForCorrelationX(app);
            SelectForCorrelationY(app);

            % If necessary resample the data
            Resample(app)
            cla(app.UIAxes14); % clear uiAxes
            cla(app.UIAxes14,'reset'); % reset uiaxes

            plot (app.UIAxes14, app.corrx, app.corry)
            axis(app.UIAxes14, 'equal');

        end

        % Value changed function: ParameterX
        function ParameterXValueChanged(app, event)
            % Select the element according to the dropdown item
            [~, idx] = ismember(app.ElementDropDownX.Value, app.ElementName);
            app.e = idx;

            value = app.ParameterX.Value;
            switch value

                case 'Distance'
                    a = convertStringsToChars (app.colname{app.e});
                    app.POIX.Items = a;
                case 'Speed'
                    a = convertStringsToChars (app.colname{app.e});
                    app.POIX.Items = a;
                case 'Acceleration'
                    a = convertStringsToChars (app.colname{app.e});
                    app.POIX.Items = a;
                case 'Angular variation'
                    a = convertStringsToChars (app.colname{app.e}(:, 2:(end-1)));
                    app.POIX.Items = a;
                case 'Angular velocity'
                    a = convertStringsToChars (app.colname{app.e}(:, 2:(end-1)));
                    app.POIX.Items = a;
                case 'Angular acceleration'
                    a = convertStringsToChars (app.colname{app.e}(:, 2:(end-1)));
                    app.POIX.Items = a;
                case 'E-phy envelope'
                    if isempty (app.envelope)
                        msgbox('create an E-phy envelope first')
                        return
                    else
                        a = convertStringsToChars (app.colnameEMG);
                        app.POIX.Items = a;
                    end
                case 'Raw E-phy trace'
                    if isempty (app.Voltage)
                        msgbox('Import an EMG first')
                        return
                    else
                        a = convertStringsToChars (app.colnameEMG);
                        app.POIX.Items = a;
                    end
                case 'Raw sensor signal'
                    if isempty (app.SensorValues)
                        msgbox('Import an sensor signal first')
                        return
                    else
                        a = convertStringsToChars (app.colnameSensor);
                        app.POIX.Items = a;
                    end
                case ' Sensor envelope'
                    if isempty (app.Senvelope)
                        msgbox('Create a sensor signal envelope first')
                        return
                    else
                        a = convertStringsToChars (app.colnameSensor);
                        app.POIX.Items = a;
                    end
            end
        end

        % Value changed function: ParameterY
        function ParameterYValueChanged(app, event)
            % Select the element according to the dropdown item
            [~, idx] = ismember(app.ElementDropDownY.Value, app.ElementName);
            app.e = idx;

            value = app.ParameterY.Value;
            switch value

                case 'Distance'
                    a = convertStringsToChars (app.colname{app.e});
                    app.POIY.Items = a;
                case 'Speed'
                    a = convertStringsToChars (app.colname{app.e});
                    app.POIY.Items = a;
                case 'Acceleration'
                    a = convertStringsToChars (app.colname{app.e});
                    app.POIY.Items = a;
                case 'Angular variation'
                    a = convertStringsToChars (app.colname{app.e}(:, 2:(end-1)));
                    app.POIY.Items = a;
                case 'Angular velocity'
                    a = convertStringsToChars (app.colname{app.e}(:, 2:(end-1)));
                    app.POIY.Items = a;
                case 'Angular acceleration'
                    a = convertStringsToChars (app.colname{app.e}(:, 2:(end-1)));
                    app.POIY.Items = a;
                case 'E-phy envelope'
                    if isempty (app.envelope)
                        msgbox('create an E-phy envelope first')
                        return
                    else
                        a = convertStringsToChars (app.colnameEMG);
                        app.POIY.Items = a;
                    end
                case 'Raw E-phy trace'
                    if isempty (app.Voltage)
                        msgbox('Import an E-phy envelope first')
                        return
                    else
                        a = convertStringsToChars (app.colnameEMG);
                        app.POIY.Items = a;
                    end
                case 'Raw sensor signal'
                    if isempty (app.SensorValues)
                        msgbox('Import an sensor signal first')
                        return
                    else
                        a = convertStringsToChars (app.colnameSensor);
                        app.POIY.Items = a;
                    end
                case ' Sensor envelope'
                    if isempty (app.Senvelope)
                        msgbox('% % Create a sensor signal envelope first')
                        return
                    else
                        a = convertStringsToChars (app.colnameSensor);
                        app.POIY.Items = a;
                    end
            end
        end

        % Button pushed function: PlotcrosscorrelationButton
        function PlotcrosscorrelationButtonPushed(app, event)
            cla(app.UIAxes14); % clear uiAxes
            cla(app.UIAxes14,'reset'); % reset uiaxes

            % Determine the value for app.corrX
            SelectForCorrelationX(app)
            SelectForCorrelationY(app)

            % Remove the DC component from the signal
            app.corrx = app.corrx (~isnan(app.corrx)); %remove NaN
            app.corry = app.corry (~isnan(app.corry)); %remove NaN
            app.corrx = app.corrx-mean(app.corrx);
            app.corry = app.corry-mean(app.corry);

            % If necessary resample the data
            Resample(app)

            % clean again the Axis back from reampling
            cla(app.UIAxes14); % clear uiAxes
            cla(app.UIAxes14,'reset'); % reset uiaxes

            % calculate and plot crosscorrelation
            [r, lags] = xcorr(app.corrx, app.corry, app.Scaleoption.Value);
            plot (app.UIAxes14, lags, r);
            xlabel(app.UIAxes14, 'lag');
            ylabel(app.UIAxes14, 'Correlation values');

            % Determine the cross correlation value at lag 0:
            [C_value, ~] = xcorr(app.corrx, app.corry, 0, app.Scaleoption.Value);

            % Calculate the phase lag and the amplitude ratio
            % resize to the min matrix size to plot together data that have initially different number to data point
            minLength = min (length(app.corrx), length(app.corry));
            % resize
            A = app.corrx (1:minLength);
            B = app.corry (1:minLength);

            % remove bias
            A = A - mean(A);
            B = B - mean(B);

            % take the FFT
            x=fft(A);
            y=fft(B);

            % Determine the max value and max point
            [mag_x, idx_x] = max(abs(x));
            [mag_y, idx_y] = max(abs(y));

            % determine the phase difference at the maximum point
            px = angle(x(idx_x));
            py = angle(y(idx_y));
            Phaselag = (py - px)*180/pi;

            % determine the amplitude scaling
            Amplituderatio = mag_y/mag_x;

            % Fill the UITableCCC
            % fetch columnane etc.
            CorrTable(app)

            % Fetch data
            data = {app.CorrTbl1, app.CorrTbl2, C_value, Amplituderatio, Phaselag, 'NaN', 'NaN', 'NaN', 'NaN','NaN', 'NaN', 'NaN'};

            % Fill data in the table as an interative process
            c = app.UITableCCC.Data;
            app.UITableCCC.Data = [c;data];
        end

        % Button pushed function: PlotautocorrelationButton_2
        function PlotautocorrelationButton_2Pushed(app, event)
            cla(app.UIAxes14); % clear uiAxes
            cla(app.UIAxes14,'reset'); % reset uiaxes

            SelectForCorrelationX(app);
            app.corrx = app.corrx-mean(app.corrx); % remove DC component

            [acf, lags] = xcorr(app.corrx, app.Scaleoption.Value);
            plot (app.UIAxes14, lags, acf);
            xlabel(app.UIAxes14, 'lag');
            ylabel(app.UIAxes14, 'Correlation values');
        end

        % Button pushed function: PlotautocorrelationButton
        function PlotautocorrelationButtonPushed(app, event)
            cla(app.UIAxes14); % clear uiAxes
            cla(app.UIAxes14,'reset'); % reset uiaxes

            SelectForCorrelationY(app);
            app.corry = app.corry-mean(app.corry); % remove DC component

            [acf, lags] = xcorr(app.corry, app.Scaleoption.Value);
            plot (app.UIAxes14, lags, acf);
            xlabel(app.UIAxes14, 'lag');
            ylabel(app.UIAxes14, 'Correlation values');
        end

        % Button pushed function: GaitdiagramButton
        function GaitdiagramButtonPushed(app, event)
            if isempty (app.e) || numel(app.TimeGait) < app.e
                msgbox('insuffisent data for plotting')
            else
                cla(app.UIAxes13); cla(app.UIAxes13,'reset') % reset uiaxes%

                for k=1:size(app.TimeGait, 2)
                    plot (app.UIAxes13, app.TimeGait{k}, app.ZGait{k}+k, 'LineWidth', 4);
                    hold (app.UIAxes13, 'on')
                end
                xlabel(app.UIAxes13, 'Time'); ylabel(app.UIAxes13, 'Inter-limb distance');

                % adjust ylim at 15% of the distance
                a = ylim(app.UIAxes13);
                ydistance = max(a)-min(a);
                inf = min(a)-(ydistance*0.15);
                sup = max (a)+(ydistance*0.15);
                ylim (app.UIAxes13,[inf,sup]);
            end

        end

        % Button pushed function: PositionButton
        function PositionButtonPushed(app, event)
            CleanKinematicPlots(app)
            if numel(app.dX) >=1
                % plot x-position vs time
                plot (app.UIAxes2, app.T{app.e}, app.X{app.e}(1:end,app.idxPOI));
                title(app.UIAxes2, 'x-position');
                xlabel(app.UIAxes2, 'time');
                ylabel(app.UIAxes2, 'x');
                legend(app.UIAxes2, app.colname{app.e}(1:end,app.idxPOI), 'Location','southoutside',"Orientation","horizontal", 'NumColumns',3,"Box","off");

                % plot y-position vs time
                plot (app.UIAxes3, app.T{app.e}, app.Y{app.e}(1:end,app.idxPOI));
                title(app.UIAxes3, 'y-position');
                xlabel(app.UIAxes3, 'time');
                ylabel(app.UIAxes3, 'y');
                legend(app.UIAxes3, app.colname{app.e}(1:end,app.idxPOI), 'Location','southoutside',"Orientation","horizontal", 'NumColumns',3,"Box","off");

                if app.Arb_Z == 0 % if the Z matrix has real values
                    % plot z-position vs time
                    plot (app.UIAxes4, app.T{app.e}, app.Z{app.e}(1:end,app.idxPOI));
                    title(app.UIAxes4, 'z-position');
                    xlabel(app.UIAxes4, 'time');
                    ylabel(app.UIAxes4, 'z');
                    legend(app.UIAxes4, app.colname{app.e}(1:end,app.idxPOI), 'Location','southoutside',"Orientation","horizontal", 'NumColumns',3,"Box","off");
                end
            end
        end

        % Button pushed function: PlottogetherButton
        function PlottogetherButtonPushed(app, event)
            cla(app.UIAxes14); % clear uiAxes
            cla(app.UIAxes14,'reset'); % reset uiaxes

            SelectForCorrelationX(app);
            SelectForCorrelationY(app);

            % Create a message to display in the dialog box
            message = 'Do you want to plot on the same Y-axis?';

            % Create a title for the dialog box
            title = 'Choose axis';

            % Define the button labels
            button1 = 'Same Y-axis';
            button2 = 'Different Y-axis';
            button3 = 'Abandon';

            % Create the dialog box and store the button clicked
            buttonClicked = questdlg(message, title, button1, button2, button3);

            % Process the user's choice
            switch buttonClicked
                case button2
                    % Plot elements together on the same axis
                    yyaxis(app.UIAxes14,'left')
                    plot(app.UIAxes14, app.corrTx, app.corrx);
                    ylabel(app.UIAxes14, app.ParameterX.Value);
                    yyaxis(app.UIAxes14,'right')
                    plot(app.UIAxes14, app.corrTy, app.corry);
                    xlabel(app.UIAxes14, 'time');
                    ylabel(app.UIAxes14, app.ParameterY.Value);

                case button1
                    % plot on the same Y-axis
                    plot(app.UIAxes14, app.corrTx, app.corrx, 'b')
                    hold (app.UIAxes14, 'on')
                    plot (app.UIAxes14, app.corrTy, app.corry, 'r');
                    hold (app.UIAxes14, 'off')

                case button3
                    return;
            end
        end

        % Button pushed function: ShowallButton
        function ShowallButtonPushed(app, event)
            ShowAllPositions(app)
        end

        % Button pushed function: HeeloffButton
        function HeeloffButtonPushed(app, event)
            % capture X
            app.capture_X_HO = [app.capture_X_HO; app.XStep{app.e}(app.n2,:)];
            app.X_HO_position{app.e} = app.capture_X_HO;
            app.XHO{app.e} = app.X_HO_position{app.e}(:, app.WhereIsHeel); % captures only the X-coordinate for the heel

            % capture Y
            app.capture_Y_HO = [app.capture_Y_HO; app.YStep{app.e}(app.n2,:)];
            app.Y_HO_position{app.e} = app.capture_Y_HO;
            app.YHO{app.e} = app.Y_HO_position{app.e}(:, app.WhereIsHeel); % captures only the Y-coordinate for the heel

            % capture Z
            app.capture_Z_HO = [app.capture_Z_HO; app.ZStep{app.e}(app.n2,:)];
            app.Z_HO_position{app.e} = app.capture_Z_HO;
            app.ZHO{app.e} = app.Z_HO_position{app.e}(:, app.WhereIsHeel); % captures only the Z-coordinate for the heel

            % capture T
            app.capture_t7 = [app.capture_t7; app.T{app.e}(app.n2,:)];
            app.tvalue7{app.e} = app.capture_t7;

            % display on the table
            FillGaitTable(app)
        end

        % Button pushed function: DeletelastButton_2
        function DeletelastButton_2Pushed(app, event)
            % if values are still present in tvalue then update tables
            if isempty (app.capture_t7)
                msgbox ('No more recorded values for this position')
                app.UITableGait.Data = [];
            else
                % remove the last selected capture the selected coordinates
                app.capture_X_HO(end, :) = [];
                app.capture_Y_HO(end, :) = [];
                app.capture_Z_HO(end, :) = [];
                app.capture_t7(end,:) = [];

                % Remove the last x, y and z-values
                app.XHO{app.e}(end, :) = [];
                app.YHO{app.e}(end, :) = [];
                app.ZHO{app.e}(end, :) = [];

                % Remove the last position
                app.X_HO_position{app.e}(end, :) = [];
                app.Y_HO_position{app.e}(end, :) = [];
                app.Z_HO_position{app.e}(end, :) = [];

                % Remove the last time value
                app.tvalue7{app.e}(end, :) = [];
            end
            FillGaitTable(app)
        end

        % Value changed function: SamplingDataRate
        function SamplingDataRateValueChanged(app, event)
            value = app.SamplingDataRate.Value;
            app.Freq = value;
        end

        % Button pushed function: CalculateButton_3
        function CalculateButton_3Pushed(app, event)
            if isempty(app.envelope) == 1
                msgbox ('Create an E-phy envelope  first')
            else
                % calculate the area under the curve of the envelope
                AUC = trapz(app.tEMG, app.envelope);

                % display data
                clear app.UITableAUC.Data; % reset table
                app.UITableAUC.ColumnName = app.colnameEMG;
                app.UITableAUC.Data = AUC;
            end
        end

        % Value changed function: SelectXY
        function SelectXYValueChanged(app, event)
            UpdateTable(app)
        end

        % Cell edit callback: UITable1
        function UITable1CellEdit(app, event)
            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1

                % extract data from table
                Tb = get(app.UITable1,'Data');
                %               UpdatedData = cell2mat(Tb);

                % remove the recording number
                UpdatedData = Tb(1:end, 2:end);

                switch app.SelectXY.Value

                    case "X"
                        % Isolate the time values
                        app.T{app.e} = UpdatedData(:,1); % all values of column 1
                        app.X{app.e} = UpdatedData(:,2:end); % all values all columns after column 1

                    case "Y"
                        % Isolate the time values
                        app.T{app.e} = UpdatedData(:,1); % all values of column 1
                        app.Y{app.e} = UpdatedData(:,2:end); % all values all columns after column 1

                    case "Z"
                        % Isolate the time values
                        app.T{app.e} = UpdatedData(:,1); % all values of column 1
                        app.Z{app.e} = UpdatedData(:,2:end); % all values all columns after column 1

                    case "XY"
                        % Isolate the time values
                        app.T{app.e} = UpdatedData(:,1); % all values of column 1

                        % remove the time values form the captured data
                        UpdatedData = UpdatedData(:,2:end); % all values form column 2 to end

                        % assigned the X-columns to app.X
                        app.X{app.e} = UpdatedData(:,1:2:end); % all values from 1st column, every second column to the end

                        % assigned the Y-columns to app.Y
                        app.Y{app.e} = UpdatedData(:,2:2:end); % all values from the 2nd column, every second column to the end

                    case "XYZ"
                        % Isolate the time values
                        app.T{app.e} = UpdatedData(:,1); % all values of column 1

                        % remove the time values form the captured data
                        UpdatedData = UpdatedData(:,2:end); % all values form column 2 to end

                        % assigned the X-columns to app.X
                        app.X{app.e} = UpdatedData(:,1:3:end); % all values from 1st column, every third column to the end

                        % assigned the Y-columns to app.Y
                        app.Y{app.e} = UpdatedData(:,2:3:end); % all values from the 2nd column, every third column to the end

                        % assigned the Y-columns to app.Z
                        app.Z{app.e} = UpdatedData(:,3:3:end); % all values from the 3rd column, every third column to the end
                end
                updateplot(app)
            end
        end

        % Button pushed function: NextButton_4
        function NextButton_4Pushed(app, event)
            if numel(app.X) >=1
                app.n6 = 1;
                lim = length(app.X{app.e(1)});
                if app.n29+1 >= lim+1
                    app.n6 = 0;
                    msgbox('This was the last position');
                    pause (2);
                    close;
                else
                    Slider1Position(app);
                end
            else
                msgbox('No coordinates available')
            end
        end

        % Button pushed function: PrevButton_4
        function PrevButton_4Pushed(app, event)
            if numel(app.X) >=1
                app.n6 = -1;
                if app.n29-1 <= 0
                    app.n6 = 0;
                    msgbox('This was the last position');
                    pause (2);
                    close;
                else
                    Slider1Position(app);
                end
            else
                msgbox('No coordinates available')
            end
        end

        % Callback function
        function OthersettingsButtonPushed(app, event)
            prompt = {'Distance between elements:','Marker size:','Line size:', 'Keep traces (y/n):'};
            dlgtitle = 'Appearance settings for both elements';
            dims = [1 45];
            definput = {'0','5','1','n'};
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)

            else
                app.dist = abs(str2double(answer(1)));
                app.Msize = abs(str2double(answer(2)));
                if app.Msize == 0
                    app.Msize = 0.1;
                end
                app.LineThickness = abs(str2double(answer(3)));
                if app.LineThickness == 0
                    app.LineThickness = 0.1;
                end

                if char(answer(4)) == 'y'
                    app.Phantom = 'on';
                elseif char(answer(4)) == 'Y'
                    app.Phantom = 'on';
                elseif char(answer(4)) == 'n'
                    app.Phantom = 'off';
                elseif char(answer(4)) == 'N'
                    app.Phantom = 'off';
                else
                    app.Phantom = 'off';
                end
            end
        end

        % Value changed function: Choose_a_AOI
        function Choose_a_AOIValueChanged(app, event)
            value = app.Choose_a_AOI.Value;

            % Indentifie the item number selected in the dropdown mwnu POI
            app.Choose_a_POI.ItemsData = 1:length(app.Choose_a_POI.Items);
            idx = app.Choose_a_POI.Value;
            ReverAnimCoordinates(app);

            switch value
                case 'Choose'
                case 'x'
                    for k = 1:size(app.X,2)
                        app.XAnim{k} = app.X{k}(:,:) -app.X{k}(:,idx);
                    end
                case 'y'
                    for k = 1:size(app.Y,2)
                        app.YAnim{k} = app.Y{k}(:,:) -app.Y{k}(:,idx);
                    end
                case 'xy'
                    for k = 1:size(app.Y,2)
                        app.XAnim{k} = app.X{k}(:,:) -app.X{k}(:,idx);
                        app.YAnim{k} = app.Y{k}(:,:) -app.Y{k}(:,idx);
                    end
                case 'Revert'
                    % no need to have a command because revertion occurs at
                    % the start anyway
            end
        end

        % Button down function: StrideGaitTab
        function StrideGaitTabButtonDown(app, event)
            if ~isempty(app.e)
                % Plot the position of the selected/default limb
                GaitPlot(app);

                % Make sure the elelement table is uptodate to have an update
                % of the drop down button that selectes the element
                UpdateElementTable(app)

                % Identify Toe and heel position unless they are already known
                if isempty(app.WhereIsToe) || isempty(app.WhereIsHeel)

                    % Dialog box for user interaction: definition of the columns for the toe and heel
                    % Define the options for the dropdown menu
                    options = app.colname{app.e};

                    % Get the screen size
                    screensize = get(groot, 'Screensize');

                    % Define the position and size of the dialog box
                    width = 350;
                    height = 200;
                    left = screensize(3)/2 - width/2;
                    bottom = screensize(4)/2 - height/2;
                    position = [left, bottom, width, height];

                    % Create a dialog box with two dropdown menus
                    dlg = dialog('Name', 'Select datasets for toe and heel', 'Position', position);
                    uicontrol(dlg, 'Style', 'text', 'String', 'Please select the dataset that corresponds to the toe', 'Position', [50, 150, 250, 25]);
                    uicontrol(dlg, 'Style', 'text', 'String', 'Please select the dataset that corresponds to the heel', 'Position', [50, 100, 250, 25]);
                    toeDropdown = uicontrol(dlg, 'Style', 'popupmenu', 'String', options, 'Position', [50, 125, 250, 25]);
                    heelDropdown = uicontrol(dlg, 'Style', 'popupmenu', 'String', options, 'Position', [50, 75, 250, 25]);

                    % Add a push button to the dialog box
                    uicontrol(dlg, 'Style', 'pushbutton', 'String', 'OK', 'Position', [50, 25, 250, 25], 'Callback', 'uiresume(gcbf)');

                    % Wait for the user to close the dialog box
                    uiwait(dlg);

                    % Get the index of the selected options from the dropdown menus
                    app.WhereIsToe = get(toeDropdown, 'Value');
                    app.WhereIsHeel = get(heelDropdown, 'Value');

                    % Close the dialog box
                    delete(dlg);
                else
                end
            else                
            end
        end

        % Button pushed function: ColorHeelStrike
        function ColorHeelStrikePushed(app, event)
            SelectColour(app)
            app.HeelstrikeColor = app.color;
        end

        % Button pushed function: ColorHeelOff
        function ColorHeelOffButtonPushed(app, event)
            SelectColour(app)
            app.HeeloffColor = app.color;
        end

        % Button pushed function: ColorHeelOff_2
        function ColorHeelOff_2ButtonPushed(app, event)
            SelectColour(app)
            app.ToeoffColor = app.color;
        end

        % Button pushed function: ColorHeelOff_3
        function ColorHeelOff_3ButtonPushed(app, event)
            SelectColour(app)
            app.MaxtoeliftColor = app.color;
        end

        % Value changed function: SelectaxisDropDown_2
        function SelectaxisDropDown_2ValueChanged(app, event)
            value = app.SelectaxisDropDown_2.Value;
            [~, idx] = ismember(app.SelectpointDropDown_2.Value, app.colname{app.e});

            % each time the coordinates are reverted to X and Y
            app.XStep{app.e} = app.X{app.e};
            app.YStep{app.e} = app.Y{app.e};

            switch value
                case 'Choose'
                case 'x'
                    app.XStep{app.e} = (app.X{app.e}(:,:)-app.X{app.e}(:,idx));
                case 'y'
                    app.YStep{app.e} = (app.Y{app.e}(:,:)-app.Y{app.e}(:,idx));
                case'xy'
                    app.XStep{app.e} = (app.X{app.e}(:,:)-app.X{app.e}(:,idx));
                    app.YStep{app.e} = (app.Y{app.e}(:,:)-app.Y{app.e}(:,idx));
                case 'Revert'
            end
            GaitPlot(app);
            DeleteGaitParameters(app)
        end

        % Value changed function: SetazimuthtoEditField
        function SetazimuthtoEditFieldValueChanged(app, event)
            updateview(app)
        end

        % Value changed function: SetelevationtoEditField
        function SetelevationtoEditFieldValueChanged(app, event)
            updateview(app)
        end

        % Menu selected function: ImportXYMenu
        function ImportXYMenuSelected(app, event)
            clear Table
            app.file= [];

            % Browse and copy values
            [app.file, path] = uigetfile('*.csv;*.txt;*.xls;*.xlsx');

            if isequal(app.file,0)
                % User clicked the "Cancel" button
                return
            else

                % Set the WindowStyle to "normal" to keep the app to the front
                app.MotionAnalyserUIFigure.WindowStyle = 'normal';

                Table = readtable((fullfile(path, app.file))); % import file into table
                header = Table.Properties.VariableNames; % extract column names
                namePOI = header (:,2:end);

                % Set the app window as the current figure to prevent the app
                % from going to the back
                figure(app.MotionAnalyserUIFigure);

                % extract values from the table
                xy = Table{:,:}; % extra xy
                t = xy(:,1); % extract time
                xy = xy(:,2:end); % remove the time column
                x = xy(:,1:2:end); % all values from 1st column, every second column to the end
                y = xy(:,2:2:end); % all values from the 2nd column, every second column to the end

                % Increment element number
                h = app.te(end) + 1;
                app.te = [app.e, h];
                app.e = app.te(end);

                % copy values in a cell array using e to identify the element
                app.T{app.e} = t;
                app.X{app.e} = x;
                app.Y{app.e} = y;
                app.name{app.e} = namePOI;
                app.colname{app.e} = app.name{app.e}(:,1:2:end);
                app.nPOI{app.e} = size (x,2); % count the number of column on X = number of POI
                CreateZseries(app) % function to create arbitrary Z series

                % Increment element name
                a = cellstr(app.file);
                app.ElementName = [app.ElementName; a];

                % Update Element Table
                UpdateElementTable(app)

                %% switch to the coordinates tab
                app.TabGroup.SelectedTab = app.CoordinatesTab;

                % Update
                updateplot(app);
                UpdateTable(app);
                UpdateAnimStep(app);

                % remove values from the table to free memory
                clear Table;
            end
        end

        % Callback function
        function NameEditFieldValueChanged(app, event)
            app.ElementName = [app.ElementName, app.NameEditField.Value];
            Ename = num2cell (app.ElementName);
            app.Tree ('Text', Ename);
        end

        % Callback function
        function ButtonValueChanged(app, event)
            prompt = {'How many elements, e.g. limb, you want to analyse'};
            dlgtitle = 'Choose';
            dims = [1 45];
            definput = {'1'};
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)

            else
                app.ChooseElement.Items = abs(str2double(answer(1)));
            end
        end

        % Callback function
        function nbofelementsEditFieldValueChanged(app, event)
            value = app.nbofelementsEditField.Value;
            nb = string (1:value); % create all values from 1 to the given value and convert to string
            nb = convertStringsToChars(nb);

            %Assign the nub to the different element dropdown menus
            app.ChooseElement.Items = nb;
            app.ElementDropDown.Items = nb;
            app.ElementDropDown_3.Items = nb;
            app.ElementDropDown_4.Items = nb;


            % Fill the ElementTable
            nb = transpose(str2double (nb));

            app.UITableElement.Data = nb;
            %             app.UItable.Columnformat = {'char', 'logical'};
            %             app.UITableElement.ColumnName = ["Element", "show"];

        end

        % Menu selected function: SelectfirstpositionMenu
        function SelectfirstpositionMenuSelected(app, event)
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab
            app.FirstPoint = [];

            if selectedTab == app.CoordinatesTab
                if numel(app.X) >=1
                    app.FirstPoint = app.n29;
                else
                    msgbox('No coordinates available')
                end
            elseif selectedTab == app.EphyTab
                if ~isempty(app.Voltage)
                    app.FirstPoint = app.n3;
                else
                    msgbox('No E-phys values available')
                end
            elseif selectedTab == app.SensorTab
                if ~isempty(app.SensorValues)
                    app.FirstPoint = app.n7;
                else
                    msgbox('No Sensor values available')
                end
            else
            end
        end

        % Menu selected function: TrimdatasetMenu
        function TrimdatasetMenuSelected(app, event)
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab
            % backup original data
            bkpData(app)

            if selectedTab == app.CoordinatesTab                
                    if numel(app.X) >=1
                        % Resize the data
                        for k=1:size(app.e, 2)
                            app.X{app.e(k)} = app.X{app.e(k)}(app.FirstPoint:app.LastPoint, :);
                            app.Y{app.e(k)} = app.Y{app.e(k)}(app.FirstPoint:app.LastPoint, :);
                            app.Z{app.e(k)} = app.Z{app.e(k)}(app.FirstPoint:app.LastPoint, :);
                            app.T{app.e(k)} = app.T{app.e(k)}(app.FirstPoint:app.LastPoint, :);
                        end

                        % Update
                        UpdateTable(app); updateplot(app); UpdateAnimStep(app);
                    else
                        msgbox('No coordinates available')
                    end
                

            elseif selectedTab == app.EphyTab
                if ~isempty(app.Voltage)
                    % Resize the data
                    app.tEMG = app.tEMG(app.FirstPoint:app.LastPoint, :);
                    app.Voltage = app.Voltage(app.FirstPoint:app.LastPoint, :);
                    app.fEMG = app.fEMG(app.FirstPoint:app.LastPoint, :);
                    if ~isempty(app.envelope)
                        app.envelope = app.enveloppe(app.FirstPoint:app.LastPoint, :);
                    end

                    % update
                    UpdateEMGTable(app); plotfEMG(app);
                else
                    msgbox('No E-phys values available')
                end

            elseif selectedTab == app.SensorTab
                if ~isempty(app.SensorValues)
                    % Resize the data
                    app.tSensor = app.tSensor(app.FirstPoint:app.LastPoint, :);
                    app.SensorValues = app.SensorValues (app.FirstPoint:app.LastPoint, :);
                    app.fSensorValues = app.fSensorValues (app.FirstPoint:app.LastPoint, :);
                    if ~isempty(app.envelope)
                        app.envelope = app.envelope(app.FirstPoint:app.LastPoint, :);
                    end

                    % update
                    UpdateSensorTable(app); plotfSensor(app);
                else
                    msgbox('No E-phys values available')
                end
            else
            end
        end

        % Callback function
        function RevertMenuSelected(app, event)
            Revert(app)
        end

        % Menu selected function: SelectlastpositionMenu
        function SelectlastpositionMenuSelected(app, event)
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab
            app.LastPoint = [];

            if selectedTab == app.CoordinatesTab
                if numel(app.X) >=1
                    app.LastPoint = app.n29;
                else
                    msgbox('No coordinates available')
                end
            elseif selectedTab == app.EphyTab
                if ~isempty(app.Voltage)
                    app.LastPoint = app.n3;
                else
                    msgbox('No E-phys values available')
                end
            elseif selectedTab == app.SensorTab
                if ~isempty(app.SensorValues)
                    app.LastPoint = app.n7;
                else
                    msgbox('No Sensor values available')
                end
            else
            end
        end

        % Value changed function: SingleCurveKinematic
        function SingleCurveKinematicValueChanged(app, event)
            value = app.SingleCurveKinematic.Value;

            cla(app.UIAxes2);cla(app.UIAxes2,'reset')
            cla(app.UIAxes3);cla(app.UIAxes3,'reset')
            cla(app.UIAxes4); cla(app.UIAxes4,'reset')
            cla(app.UIAxes5);cla(app.UIAxes5,'reset')

            [~, app.idxPOI] = ismember(value, app.colname{app.e});
        end

        % Button pushed function: AllButton
        function AllButtonPushed(app, event)
            cla(app.UIAxes2);cla(app.UIAxes2,'reset');
            cla(app.UIAxes3);cla(app.UIAxes3,'reset');
            cla(app.UIAxes4); cla(app.UIAxes4,'reset');
            cla(app.UIAxes5);cla(app.UIAxes5,'reset');
            app.idxPOI = ':';
        end

        % Cell edit callback: UITableElement
        function UITableElementCellEdit(app, event)
            app.ElementName = get(app.UITableElement,'Data');
            app.e = app.UITableElement.Selection;
            UpdateElementTable(app)
        end

        % Cell selection callback: UITableElement
        function UITableElementCellSelection(app, event)
            app.e = app.UITableElement.Selection;
            UpdateElementTable(app)
            UpdateTable(app)
            updateplot(app)
        end

        % Menu selected function: ReopenamatlabfileMenu
        function ReopenamatlabfileMenuSelected(app, event)
            % prompt the user to select a file to load
            [fnm, pth] = uigetfile('.mat', 'Select a file to load');
            if isequal(app.file,0)
                % User clicked the "Cancel" button
                return
            else

                % load the variables from the chosen file
                if fnm ~= 0
                    % Set the WindowStyle to "normal" to keep the app to the front
                    app.MotionAnalyserUIFigure.WindowStyle = 'normal';

                    % Load the data from the .mat file
                    data = load(fullfile(pth, fnm));

                    % Set the app window as the current figure to prevent the app
                    % from going to the back
                    figure(app.MotionAnalyserUIFigure);

                    % Assign the data back to the app variables
                    app.T = data.T;
                    app.X = data.X;
                    app.Y = data.Y;
                    app.Z = data.Z;
                    app.e = data.E;
                    app.te = data.te;
                    app.XStep = data.XStep;
                    app.YStep = data.YStep;
                    app.ZStep = data.ZStep;
                    app.XAnim = data.XAnim;
                    app.YAnim = data.YAnim;
                    app.YAnim = data.YAnim;
                    app.ZAnim = data.ZAnim;
                    app.ElementName = data.ElementName;
                    app.colname = data.colname;
                    app.name = data.name;
                    app.dX = data.dX;
                    app.dY = data.dY;
                    app.dZ = data.dZ;
                    app.dXY = data.dXY;
                    app.dXYZ = data.dXYZ;
                    app.VX = data.VX;
                    app.VY = data.VY;
                    app.VZ = data.VZ;
                    app.VXY = data.VXY;
                    app.VXYZ = data.VXYZ;
                    app.AX = data.AX;
                    app.AY = data.AY;
                    app.AZ = data.AZ;
                    app.AXY = data.AXY;
                    app.AXYZ = data.AXYZ;
                    app.AnglesXY = data.AnglesXY;
                    app.AnglesXZ = data.AnglesXZ;
                    app.AnglesYZ = data.AnglesYZ;
                    app.AngleStat = data.AngleStat;
                    app.AngVeloc_XY = data.AngVeloc_XY;
                    app.AngVeloc_XZ = data.AngVeloc_XZ;
                    app.AngVeloc_YZ = data.AngVeloc_YZ;
                    app.AngVelocStat = data.AngVelocStat;
                    app.AngAcc_XY = data.AngAcc_XY;
                    app.AngAcc_XZ = data.AngAcc_XZ;
                    app.AngAcc_YZ = data.AngAcc_YZ;
                    app.AngAccStat = data.AngAccStat;
                    app.DistanceStat = data.DistanceStat;
                    app.VelocityStat = data.VelocityStat;
                    app.AccelerationStat = data.AccelerationStat;
                    app.IntColname = data.IntColname;
                    app.nPOI = data.nPOI;
                    app.RecNumber = data.RecNumber;
                    app.zPosition = data.zPosition;
                    app.HeelstrikeColor = data.HeelstrikeColor;
                    app.HeeloffColor = data.HeeloffColor;
                    app.ToeoffColor = data.ToeoffColor;
                    app.MaxtoeliftColor = data.MaxtoeliftColor;
                    app.capX = data.capX;
                    app.capY = data.capY;
                    app.capZ = data.capZ;
                    app.capT = data.capT;
                    app.Xposition = data.Xposition;
                    app.Yposition = data.Yposition;
                    app.Zposition = data.Zposition;
                    app.tvalue = data.tvalue;
                    app.CalcGait = data.CalcGait;
                    app.WhereIsHeel = data.WhereIsHeel;
                    app.X_HS_position = data.X_HS_position;
                    app.capture_X_HS = data.capture_X_HS;
                    app.Y_HS_position = data.Y_HS_position;
                    app.capture_Y_HS = data.capture_Y_HS;
                    app.Z_HS_position = data.Z_HS_position;
                    app.capture_Z_HS = data.capture_Z_HS;
                    app.XHS = data.XHS;
                    app.YHS = data.YHS;
                    app.ZHS = data.ZHS;
                    app.tvalue3 = data.tvalue3;
                    app.capture_t3 = data.capture_t3;
                    app.X_HO_position = data.X_HO_position;
                    app.capture_X_HO = data.capture_X_HO;
                    app.Y_HO_position = data.Y_HO_position;
                    app.capture_Y_HO = data.capture_Y_HO;
                    app.Z_HO_position = data.Z_HO_position;
                    app.capture_Z_HO = data.capture_Z_HO;
                    app.XHO = data.XHO;
                    app.YHO = data.YHO;
                    app.ZHO = data.ZHO;
                    app.tvalue7 = data.tvalue7;
                    app.capture_t7 = data.capture_t7;
                    app.WhereIsToe = data.WhereIsToe;
                    app.X_TO_position = data.X_TO_position;
                    app.capture_X_TO = data.capture_X_TO;
                    app.Y_TO_position = data.Y_TO_position;
                    app.capture_Y_TO = data.capture_Y_TO;
                    app.Z_TO_position = data.Z_TO_position;
                    app.capture_Z_TO = data.capture_Z_TO;
                    app.XTO = data.XTO;
                    app.YTO = data.YTO;
                    app.ZTO = data.ZTO;
                    app.tvalue1 = data.tvalue1;
                    app.capture_t1 = data.capture_t1;
                    app.X_MTL_position = data.X_MTL_position;
                    app.capture_X_MTL = data.capture_X_MTL;
                    app.Y_MTL_position = data.Y_MTL_position;
                    app.capture_Y_MTL = data.capture_Y_MTL;
                    app.Z_MTL_position = data.Z_MTL_position;
                    app.capture_Z_MTL = data.capture_Z_MTL;
                    app.XMTL = data.XMTL;
                    app.YMTL = data.YMTL;
                    app.ZMTL = data.ZMTL;
                    app.tvalue2 = data.tvalue2;
                    app.capture_t2 = data.capture_t2;
                    app.strlg = data.strlg;
                    app.strdur = data.strdur;
                    app.SwingDur = data.SwingDur;
                    app.StanceDur = data.StanceDur;
                    app.HDdur = data.HDdur;
                    app.StepDur = data.StepDur;
                    app.StepSize = data.StepSize;
                    app.TimeGait = data.TimeGait;
                    app.ZGait = data.ZGait;
                    app.tEMG = data.tEMG;
                    app.Voltage = data.Voltage;
                    app.colnameEMG = data.colnameEMG;
                    app.SpreadV = data.SpreadV;
                    app.Freq = data.Freq;
                    app.fEMG = data.fEMG;
                    app.envelope = data.envelope;
                    app.SensorValues = data.SensorValues;
                    app. fSensorValues = data.fSensorValues;
                    app.tSensor = data.tSensor;
                    app.Senvelope = data.Senvelope;
                    app.colnameSensor = data.colnameSensor;
                    app.SFreq = data.SFreq;
                    app.P1 = data.P1;
                    app.N1 = data.N1;
                    app.colx = data.colx;
                    app.coly = data.coly;
                    app.colz = data.colz;
                    app.colxy = data.colxy;
                    app.colvx = data.colvx;
                    app.colvy = data.colvy;
                    app.colvxy = data.colvxy;
                    app.colax = data.colax;
                    app.colay = data.colay;
                    app.colaxy = data.colaxy;
                    app.colvw = data.colvw;
                    app.colaw = data.colaw;
                    app.n = data.n;
                    app.n4 = data.n4;
                    app.n6 = data.n6;
                    app.n29 = data.n29;
                    app.n30 = data.n30;
                    app.min_dx = data.min_dx;
                    app.max_dx = data.max_dx;
                    app.mean_dx = data.mean_dx;
                    app.median_dx = data.median_dx;
                    app.mode_dx = data.mode_dx;
                    app.min_dy = data.min_dy;
                    app.max_dy = data.max_dy;
                    app.mean_dy = data.mean_dy;
                    app.median_dy = data.median_dy;
                    app.mode_dy = data.mode_dy;
                    app.min_dxy = data.min_dxy;
                    app.max_dxy = data.max_dxy;
                    app.mean_dxy = data.mean_dxy;
                    app.median_dxy = data.median_dxy;
                    app.mode_dxy = data.mode_dxy;
                    app.sum_dx = data.sum_dx;
                    app.sum_dy = data.sum_dy;
                    app.sum_dxy = data.sum_dxy;
                    app.min_vx = data.min_vx;
                    app.max_vx = data.max_vx;
                    app.mean_vx = data.mean_vx;
                    app.median_vx = data.median_vx;
                    app.mode_vx = data.mode_vx;
                    app.min_vy = data.min_vy;
                    app.max_vy = data.max_vy;
                    app.mean_vy = data.mean_vy;
                    app.median_vy = data.median_vy;
                    app.mode_vy = data.mode_vy;
                    app.min_vxy = data.min_vxy;
                    app.max_vxy = data.max_vxy;
                    app.mean_vxy = data.mean_vxy;
                    app.median_vxy = data.median_vxy;
                    app.mode_vxy = data.mode_vxy;
                    app.min_ax = data.min_ax;
                    app.max_ax = data.max_ax;
                    app.mean_ax = data.mean_ax;
                    app.median_ax = data.median_ax;
                    app.mode_ax = data.mode_ax;
                    app.min_ay = data.min_ay;
                    app.max_ay = data.max_ay;
                    app.mean_ay = data.mean_ay;
                    app.median_ay = data.median_ay;
                    app.mode_ay = data.mode_ay;
                    app.min_axy = data.min_axy;
                    app.max_axy = data.max_axy;
                    app.mean_axy = data.mean_axy;
                    app.median_axy = data.median_axy;
                    app.mode_axy = data.mode_axy;
                    app.min_angle = data.min_angle;
                    app.max_angle = data.max_angle;
                    app.mean_angle = data.mean_angle;
                    app.median_angle = data.median_angle;
                    app.mode_angle = data.mode_angle;
                    app.min_vw = data.min_vw;
                    app.max_vw = data.max_vw;
                    app.mean_vw = data.mean_vw;
                    app.median_vw = data.median_vw;
                    app.mode_vw = data.mode_vw;
                    app.min_aw = data.min_aw;
                    app.max_aw = data.max_aw;
                    app.mean_aw = data.mean_aw;
                    app.median_aw = data.median_aw;
                    app.mode_aw = data.mode_aw;
                    app.MultiplyingFactor1 = data.MultiplyingFactor1;

                    % Update Element Table
                    UpdateElementTable(app)
                    UpdateTable (app)
                    clear data;
                end
            end
        end

        % Menu selected function: TrimthestitchatthejunctionMenu
        function TrimthestitchatthejunctionMenuSelected(app, event)
            if numel(app.XStitch) >=1
                if app.n29 == 0
                    msgbox ('Select the stitch position in the appended sequence')
                else

                    % resize the stitch based on the selected position
                    a = [app.TStitch, app.XStitch]; % tstich and xstich
                    a = a(app.n29:end, :); % resize the matrix to the selected position
                    b = [app.TStitch, app.YStitch];
                    b = b(app.n29:end, :);

                    % Redefine the time and coordinates variables
                    % For time
                    app.TStitch = a(:,1);

                    % fit the time between the original dataset and the stitch dataset
                    difft = mean(diff(app.TStitch)); % mean sampling interval

                    m = length (app.TStitch);
                    first = app.T{app.e}(end)+difft; % first point on new time series
                    time = first + (0:m-1)*difft;
                    app.TStitch = transpose(time);

                    % update all x-values and y-values
                    app.XStitch = a(:, 2:end);
                    app.YStitch = b(:, 2:end);

                    updateplot(app);
                end
            else
                msgbox('No coordinates available')
            end
        end

        % Menu selected function: ConcatenateMenu
        function ConcatenateMenuSelected(app, event)
            if numel(app.XStitch) >=1
                % Back-up stitch values
                bkpData(app);

                % concatenate x
                app.X{app.e} = [app.X{app.e}; app.XStitch];
                % concatenate y
                app.Y{app.e} = [app.Y{app.e}; app.YStitch];
                % concatenate the dummy Z array
                value = app.Z{app.e}(1);
                s = size(app.X{app.e});
                app.Z{app.e} = repmat(value, s(1), s(2));

                % concatenate t
                m = length (app.X{app.e}); % length of the newly cocatenated X array
                difft = mean(diff(app.T{app.e})); % find the time difference between 2 points
                app.T{app.e} = (0+(0:m-1)*difft)'; % New time array

                % Inform MotionAnalyser that there is no more Stitch
                app.Is_stitch  = "No";

                updateplot(app); UpdateTable(app);
            else
                msgbox('No coordinates available')
            end
        end

        % Menu selected function: ShiftstitchcoordinatesMenu
        function ShiftstitchcoordinatesMenuSelected(app, event)
            if numel(app.XStitch) >=1
                dlgtitle = 'Shift XY-coordinates from the stitch element';
                prompt = {'Define the shift values on X','Define the shift values on Y'};
                dims = [1 40];
                definput = {'0','0'};
                answer = inputdlg(prompt,dlgtitle,dims,definput);

                if isempty(answer)
                else
                    answer = str2double(answer);
                    app.XStitch = app.XStitch+answer(1,1);
                    app.YStitch  = app.YStitch +answer(2,1);
                    updateplot(app);
                end
            else
                msgbox('No coordinates available')
            end
        end

        % Menu selected function: RotateStitchMenu
        function RotateStitchMenuSelected(app, event)
            if numel(app.XStitch) >=1
                dlgtitle = 'Rotate';
                prompt = {'Define the rotation factor'};
                dims = [1 40];
                definput = {'0'};
                answer = inputdlg(prompt,dlgtitle,dims,definput);

                if isempty(answer)
                else
                    factor = str2double(answer);
                    R = [cosd(factor) sind(factor); -sind(factor) cosd(factor)];

                    % Preallocation and erasing of rotation variables
                    app.X_ro = [];
                    app.Y_ro = [];

                    % calculate rotation for each point
                    for i = 1:size(app.XStitch, 1)
                        vector = [app.XStitch; app.YStitch];
                        so = R*vector;
                        app.X_ro = [app.X_ro; so(1,:)];
                        app.Y_ro = [app.Y_ro; so(2,:)];
                    end

                    % replace coordinates by rotated coordinates
                    app.XStitch = app.X_ro;
                    app.YStitch = app.Y_ro;
                    updateplot(app);
                end
            else
                msgbox('No coordinates available')
            end
        end

        % Menu selected function: InvertXMenu_2
        function InvertXMenu_2Selected(app, event)
            if numel(app.XStitch) >=1
                app.XStitch = app.XStitch.*(-1);
                updateplot(app);
            else
                msgbox('No coordinates available')
            end
        end

        % Menu selected function: InvertYMenu_2
        function InvertYMenu_2Selected(app, event)
            if numel(app.YStitch) >=1
                app.YStitch = app.YStitch.*(-1);
                updateplot(app);
            else
                msgbox('No coordinates available')
            end
        end

        % Menu selected function: AlignstitchwithelementMenu
        function AlignstitchwithelementMenuSelected(app, event)
            if numel(app.XStitch) >=1
                % dialogue box for choosing reference point
                SelectPOI(app)
                % collect the number that corresponds to the selection
                ReferencePoint = app.SelectedOptionIndex; % user choice

                % translate x
                a = app.X{app.e}(end,ReferencePoint);
                b = app.XStitch(2,ReferencePoint);
                c= b-a; % distance between a and b
                app.XStitch= app.XStitch-c; % distance between x2 and x1 points

                % translate y
                a = app.Y{app.e}(end,ReferencePoint);
                b = app.YStitch(2,ReferencePoint);
                c= b-a; % distance between a and b
                app.YStitch = app.YStitch-c; % distance between x2 and x1 points

                updateplot(app) % call updateplot function
            else
                msgbox('No coordinates available')
            end
        end

        % Menu selected function: EdgecolorMenu_2
        function EdgecolorMenuSelected(app, event)
            SelectColour(app)
            app.MarkerEdgeColor = app.color;
        end

        % Menu selected function: HideMenu_5
        function HideMenuSelected(app, event)
            app.Mtype = 'none';
        end

        % Menu selected function: CircleMenu_2
        function CircleMenuSelected(app, event)
            app.Mtype = "o";
        end

        % Menu selected function: FillcolorMenu_2
        function FillcolorMenuSelected(app, event)
            SelectColour(app)
            app.MarkerFaceColor = app.color;
        end

        % Menu selected function: PlussignMenu_2
        function PlussignMenuSelected(app, event)
            app.Mtype = "+";
        end

        % Menu selected function: AsteriskMenu_2
        function AsteriskMenuSelected(app, event)
            app.Mtype = "*";
        end

        % Menu selected function: PointMenu_2
        function PointMenuSelected(app, event)
            app.Mtype = ".";
        end

        % Menu selected function: CrossMenu_2
        function CrossMenuSelected(app, event)
            app.Mtype = "x";
        end

        % Menu selected function: SquareMenu_2
        function SquareMenuSelected(app, event)
            app.Mtype = "square";
        end

        % Menu selected function: DiamondMenu_2
        function DiamondMenuSelected(app, event)
            app.Mtype = "diamond";
        end

        % Menu selected function: PentagramMenu_2
        function PentagramMenuSelected(app, event)
            app.Mtype = "pentagram";
        end

        % Menu selected function: HexagramMenu_2
        function HexagramMenuSelected(app, event)
            app.Mtype = "hexagram";
        end

        % Cell edit callback: UITableElement_2
        function UITableElement_2CellEdit(app, event)
            app.ElementName = get(app.UITableElement_2,'Data');
            app.e = app.UITableElement_2.Selection;
            UpdateElementTable(app)
        end

        % Menu selected function: SizeMenu_2
        function SizeMenuSelected(app, event)
            dlgtitle = 'Appearance settings';
            prompt = {'Choose the size of the marker'};
            dims = [1 40];
            definput = {'5'};
            answer = inputdlg(prompt,dlgtitle,dims,definput);
            app.Msize = str2double(answer);
        end

        % Menu selected function: LinethicknessMenu_2
        function LinethicknessMenuSelected(app, event)
            dlgtitle = 'Appearance settings';
            prompt = {'Choose the thickness of the lines'};
            dims = [1 40];
            definput = {'1'};
            answer = inputdlg(prompt,dlgtitle,dims,definput);
            app.LineThickness = str2double(answer);
        end

        % Menu selected function: ShowMenu_5
        function ShowMenuSelected(app, event)
            app.Mtype = "o";
        end

        % Menu selected function: XaxisMenu
        function XaxisMenuSelected(app, event)
            app.xaxis = 'on';
            updateplot(app)
        end

        % Menu selected function: YaxisMenu
        function YaxisMenuSelected(app, event)
            app.yaxis = 'on';
            updateplot(app)
        end

        % Menu selected function: ZaxisMenu
        function ZaxisMenuSelected(app, event)
            app.zaxis = 'on';
            updateplot(app)
        end

        % Menu selected function: AllMenu
        function AllMenuSelected(app, event)
            app.xaxis = 'on';
            app.yaxis = 'on';
            app.zaxis = 'on';
            updateplot(app)
        end

        % Menu selected function: AllMenu_2
        function AllMenu_2Selected(app, event)
            app.xaxis = 'off';
            app.yaxis = 'off';
            app.zaxis = 'off';
            updateplot(app)
        end

        % Menu selected function: XaxisMenu_2
        function XaxisMenu_2Selected(app, event)
            app.xaxis = 'off';
            updateplot(app)
        end

        % Menu selected function: YaxisMenu_2
        function YaxisMenu_2Selected(app, event)
            app.yaxis = 'off';
            updateplot(app)
        end

        % Menu selected function: ZaxisMenu_2
        function ZaxisMenu_2Selected(app, event)
            app.zaxis = 'off';
            updateplot(app)
        end

        % Cell selection callback: UITableElement_2
        function UITableElement_2CellSelection(app, event)
            app.e = app.UITableElement_2.Selection;
            UpdateElementTable(app)
        end

        % Callback function
        function ZdistanceEditFieldValueChanged(app, event)
            app.dist = app.ZdistanceEditField.Value;
        end

        % Value changed function: TimeintervalEditField
        function TimeintervalEditFieldValueChanged(app, event)
            app.TimeInterval = app.TimeintervalEditField.Value;
        end

        % Value changed function: Choose_a_EOI
        function Choose_a_EOIValueChanged(app, event)
            % Indentifie the item number selected in the dropdown mwnu EOI
            app.Choose_a_EOI.ItemsData = 1:length(app.Choose_a_EOI.Items);
            app.e = app.Choose_a_EOI.Value;

            % Use this number to select the appropriate set of POI name used
            % filling the Chose_a_POI dropdown
            app.Choose_a_POI.Items = app.colname{app.e};
        end

        % Value changed function: ElementDropDown_4
        function ElementDropDown_4ValueChanged(app, event)
            GaitPlot(app);

            % reset captured values
            app.capture_X_HS = [];
            app.capture_Y_HS = [];
            app.capture_Z_HS = [];
            app.capture_t3 = [];

            app.capture_X_HO = [];
            app.capture_Y_HO = [];
            app.capture_Z_HO = [];
            app.capture_t7 = [];

            app.capture_X_TO = [];
            app.capture_Y_TO = [];
            app.capture_Z_TO = [];
            app.capture_t1 = [];

            app.capture_X_MTL = [];
            app.capture_Y_MTL = [];
            app.capture_Z_MTL = [];
            app.capture_t2 = [];

            app.PositionSlider_2.Value = 1; % reposition slider
            app.PositionEditField.Value = 1; % reset position number
        end

        % Menu selected function: ImportXandYKinoveaMenu
        function ImportXandYKinoveaMenuSelected(app, event)
            % Browse and copy x-values
            [app.file, path] = uigetfile('*.csv;*.txt;*.xls;*.xlsx');

            if isequal(app.file,0)
                % User clicked the "Cancel" button
                return
            else

                TableX = readtable((fullfile(path, app.file))); % import file into table
                header = TableX.Properties.VariableNames; % extract column names
                namePOI = header (:,2:end);

                % extract X values from the table
                x = TableX{:,:}; % extra x
                t = x(:,1); % extract time
                x = x(:,2:end); % remove the time column

                % % Browse and copy y-values
                [app.file, path] = uigetfile('*.csv;*.txt;*.xls;*.xlsx');

                if isequal(app.file,0)
                    % User clicked the "Cancel" button
                    return
                else
                    TableY = readtable((fullfile(path, app.file))); % import file into table

                    % switch to the EMG tab
                    app.TabGroup.SelectedTab = app.CoordinatesTab;

                    % extract Y values from the table
                    y = TableY{:,:}; % extra x
                    y = y(:,2:end); % remove the time column

                    % Increment element number
                    h = app.te(end) + 1;
                    app.te = [app.e, h];
                    app.e = app.te(end);

                    % copy values in a cell array using e to identify the element
                    app.T{app.e} = t;
                    app.X{app.e} = x;
                    app.Y{app.e} = y;
                    app.name{app.e} = namePOI;
                    app.colname{app.e} = app.name{app.e}(:,1:end);
                    app.nPOI{app.e} = size (x,2); % count the number of column on X = number of POI
                    CreateZseries(app) % function to create arbitrary Z series

                    % Increment element name
                    a = cellstr(app.file);
                    app.ElementName = [app.ElementName; a];

                    % define dropdown menu items based on POI names
                    app.SingleCurveKinematic.Items = app.name{app.e}(:,1:end);

                    % Update Element Table
                    UpdateElementTable(app)

                    % switch to the coordinates tab
                    app.TabGroup.SelectedTab = app.CoordinatesTab;

                    % Update
                    updateplot(app);
                    UpdateTable(app);
                    UpdateAnimStep(app);

                    % remove values from the table to free memory
                    clear TableX;
                    clear TableY;
                end
            end
        end

        % Button pushed function: CalculateButton_2
        function CalculateButton_2Pushed(app, event)
            % Calculate stride length
            if isempty (app.e) || numel(app.XHS) < app.e
                l1=[];
            else
                app.strlg{app.e} = abs(diff(app.XHS{app.e}));
                l1 = length (app.strlg{app.e});

            end

            % Calculate stride duration
            if isempty (app.e) || numel(app.tvalue3) < app.e
                l2=[];
            else
                app.strdur{app.e} = diff(app.tvalue3{app.e});
                l2 = length (app.strdur{app.e});
            end

            % Calculate stance duration
            if isempty (app.e) || numel (app.tvalue1) < app.e  || numel(app.tvalue3) < app.e
                l3 = [];
                l4 = [];
            else
                % pass app variables to local variables
                TO = app.tvalue1{app.e};
                HS = app.tvalue3{app.e};
                % find which of the TO and HS is the shortest column
                minLength = min (length(TO), length(HS));
                % Shorten HO and HS
                TO_resized = TO (1:minLength);
                HS_resized = HS (1:minLength);
                % calculate the stance duration time from HS to Toe-off
                app.StanceDur{app.e} = (TO_resized-HS_resized);
                l3 = length (app.StanceDur{app.e});

                % calculate swing duration
                HSnext = HS(2:end); % remove the first value from HS (Heel strike2 - Toe-off1 etc...)
                minLength = min (length(TO), length(HSnext)); % check max length
                TO = TO (1:minLength); % resize to max length
                HSnext = HSnext (1:minLength); % resize to max length
                app.SwingDur{app.e} = HSnext-TO; % Calculate the swing duration (time from TO to HSnext)
                l4 = length (app.SwingDur{app.e});
            end

            % Calculate the Heel down duration
            if isempty (app.e) || numel(app.tvalue7) < app.e
                l5 =[];
            else
                % Pass tvalue7 to a local variable
                HO = app.tvalue7{app.e};
                % find which of the HS and HO and has the shortest column
                minLength = min (length(HS), length(HO));
                % Shorten HO and HS
                HO_resized = HO (1:minLength);
                HS_resized = HS (1:minLength);
                % Calculate the Heel-down durationue
                app.HDdur{app.e} = abs(HS_resized-HO_resized);
                l5 = length (app.HDdur{app.e});
            end

            % calculate foot lift amplitude (FLA)
            if isempty(app.e) || numel(app.YTO) < app.e || numel(app.YMTL) < app.e
                l6 = [];
            else
                minLength = min(length (app.YTO{app.e}), length(app.YMTL{app.e}));
                app.FLA{app.e} = abs(app.YTO{app.e}(1:minLength)-app.YMTL{app.e}(1:minLength));
                l6 = length (app.FLA{app.e});
            end

            % calculate take off duration (TOD)
            if isempty (app.e) || numel(app.tvalue3) < app.e  || numel(app.tvalue2) < app.e || numel(app.tvalue1) < app.e
                l7 = [];
            else
                minLength = min(length (app.tvalue2{app.e}), length(app.tvalue3{app.e}));
                app.TOD{app.e} = abs(app.tvalue2{app.e}(1:minLength)-app.tvalue1{app.e}(1:minLength));
                l7 = length (app.TOD{app.e});
            end

            % Calculate foot lift velocity (FLV)
            if isempty (app.e) || numel(app.FLA) < app.e
                l8 = [];
            else
                app.FLV{app.e} = app.FLA{app.e}./app.TOD{app.e};
                l8 = length (app.FLV{app.e});
            end

            % determine the longest matrix
            L= max ([l1;l2;l3;l4;l5;l6;l7;l8]);

            % create matrix of max size containing NaN and fill with data
            % from row 1 to the last row

            if isempty (app.e) || numel(app.strlg) < app.e
                a = nan(L,1);
            else
                a = nan(L,1);
                a(1:l1) = (app.strlg{app.e});
            end

            if isempty (app.e) || numel(app.strdur) < app.e
                b = nan(L,1);
            else
                b = nan(L,1);
                b(1:l2) = (app.strdur{app.e});
            end

            if isempty (app.e) || numel(app.StanceDur) < app.e
                c = nan(L,1);
            else
                c = nan(L,1);
                c(1:l3) = (app.StanceDur{app.e});
            end

            if isempty (app.e) || numel(app.SwingDur) < app.e
                d = nan(L,1);
            else
                d = nan(L,1);
                d(1:l4) = (app.SwingDur{app.e});
            end

            if isempty (app.e) || numel(app.HDdur) < app.e
                f = nan(L,1);
            else
                f = nan(L,1);
                f(1:l5) = (app.HDdur{app.e});
            end

            if isempty (app.e) || numel(app.FLA) < app.e
                g = nan(L,1);
            else
                g = nan(L,1);
                g(1:l6) = (app.FLA{app.e});
            end

            if isempty (app.e) || numel(app.TOD) < app.e
                h = nan(L,1);
            else
                h = nan(L,1);
                h(1:l7) = (app.TOD{app.e});
            end

            if isempty (app.e) || numel(app.FLV) < app.e
                i = nan(L,1);
            else
                i = nan(L,1);
                i(1:l8) = (app.FLV{app.e});
            end

            % create a single matrix concatenated
            app.CalcGait{app.e} = [a b c d f g h i];

            % plots the selected positions and display tables
            ShowAllPositions(app);

            % Fill table
            app.UITableGait.ColumnName = ["Stride length" "Stride duration" "Stance duration" "Swing duration" "Heel-down duration" "Foot-lift amplitude " "Take-off duration" "Foot-lift velocity"];
            app.UITableGait.Data = app.CalcGait{app.e};

            % Calculate the time values for later ploting of the gait
            % diagram

            if isempty (app.e) || numel(app.tvalue1) < app.e || numel(app.tvalue3) < app.e
            else
                % Ensure to use only equal size time series
                time1 = app.tvalue1{app.e};
                time3 = app.tvalue3{app.e};

                minLength = min (length(time1), length(time3));
                tTO = time1(1:minLength);
                tTO = transpose (tTO);
                tHS = time3(1:minLength);
                tHS = transpose(tHS);

                % create the TimeGait from heel strike and toe off time-points
                app.TimeGait{app.e} = [tHS; tTO];

                % Create the z values that correspond to the TimeGait matrix
                a = size(app.TimeGait{app.e});
                value = app.Z{app.e}(1,1);
                app.ZGait {app.e} = repmat(value, a(1), a(2));
            end
        end

        % Value changed function: UseanarbitraryZEditField
        function UseanarbitraryZEditFieldValueChanged(app, event)
            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1
                CreateZseries(app)
                UpdateTable(app)
            end
        end

        % Menu selected function: ImportMenu
        function ImportMenuSelected(app, event)
            app.UseanarbitraryZEditField.Value = 0;
        end

        % Button down function: KinematicTab
        function KinematicTabButtonDown(app, event)
            UpdateElementTable(app)
            
            if numel (app.colname)>=1
                % define dropdown menu items based on POI names
                app.SingleCurveKinematic.Items = app.colname{app.e(1)}(:,1:end);
            end
        end

        % Button down function: CorrelationTab
        function CorrelationTabButtonDown(app, event)
            UpdateElementTable(app)
        end

        % Menu selected function: LinearinterpolationMenu
        function LinearinterpolationMenuSelected(app, event)
            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1
                if numel(app.X) >=1

                    bkpData(app)
                    x = app.X{app.e};
                    x = fillmissing (x,'linear');

                    y = app.Y{app.e};
                    y = fillmissing(y,'linear');

                    z = app.Z{app.e};
                    z = fillmissing(z,'linear');

                    app.X{app.e} = x;
                    app.Y{app.e} = y;
                    app.Z{app.e} = z;

                    updateplot(app);
                    UpdateTable(app);
                else
                    msgbox('No coordinates available')
                end
            end
        end

        % Menu selected function: MinvalueMenu
        function MinvalueMenuSelected(app, event)
            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1
                if numel(app.X) >=1
                    % back-up original values
                    app.X_old = app.X{app.e};
                    app.Y_old = app.Y{app.e};
                    app.Z_old = app.Z{app.e};

                    x = app.X{app.e};
                    y = app.Y{app.e};
                    z = app.Z{app.e};

                    for k = 1:size(x,2)
                        a = x(:,k);
                        a(isnan(a)) = min(a);
                        x(:,k) = a;
                    end

                    for k = 1:size(y,2)
                        b = y(:,k);
                        b(isnan(b)) = min(b);
                        y(:,k) = b;
                    end

                    for k = 1:size(z,2)
                        c = z(:,k);
                        c(isnan(c)) = min(c);
                        z(:,k) = c;
                    end

                    app.X{app.e} = x;
                    app.Y{app.e} = y;
                    app.Z{app.e} = z;

                    updateplot(app);
                    UpdateTable(app);
                else
                    msgbox('No coordinates available')
                end
            end
        end

        % Menu selected function: MaxvalueMenu
        function MaxvalueMenuSelected(app, event)
            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1
                if numel(app.X) >=1

                    % back-up original values
                    app.X_old = app.X{app.e};
                    app.Y_old = app.Y{app.e};
                    app.Z_old = app.Z{app.e};

                    x = app.X{app.e};
                    y = app.Y{app.e};
                    z = app.Z{app.e};

                    for k = 1:size(x,2)
                        a = x(:,k);
                        a(isnan(a)) = max(a);
                        x(:,k) = a;
                    end

                    for k = 1:size(y,2)
                        b = y(:,k);
                        b(isnan(b)) = max(b);
                        y(:,k) = b;
                    end

                    for k = 1:size(z,2)
                        c = z(:,k);
                        c(isnan(c)) = max(c);
                        z(:,k) = c;
                    end

                    app.X{app.e} = x;
                    app.Y{app.e} = y;
                    app.Z{app.e} = z;

                    updateplot(app);
                    UpdateTable(app);
                else
                    msgbox('No coordinates available')
                end
            end
        end

        % Menu selected function: MeanvakueMenu
        function MeanvakueMenuSelected(app, event)
            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1
                if numel(app.X) >=1
                    % back-up original values
                    app.X_old = app.X{app.e};
                    app.Y_old = app.Y{app.e};
                    app.Z_old = app.Z{app.e};

                    x = app.X{app.e};
                    y = app.Y{app.e};
                    z = app.Z{app.e};

                    for k = 1:size(x,2)
                        a = x(:,k);
                        a(isnan(a)) = mean(a,'omitnan');
                        x(:,k) = a;
                    end

                    for k = 1:size(y,2)
                        b = y(:,k);
                        b(isnan(b)) = mean(b,'omitnan');
                        y(:,k) = b;
                    end

                    for k = 1:size(z,2)
                        c = z(:,k);
                        c(isnan(c)) = mean(c,'omitnan');
                        z(:,k) = c;
                    end

                    app.X{app.e} = x;
                    app.Y{app.e} = y;
                    app.Z{app.e} = z;

                    updateplot(app);
                    UpdateTable(app);
                else
                    msgbox('No coordinates available')
                end
            end
        end

        % Menu selected function: ZeroMenu
        function ZeroMenuSelected(app, event)
            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1
                if numel(app.X) >=1
                    % back-up original values
                    app.X_old = app.X{app.e};
                    app.Y_old = app.Y{app.e};
                    app.Z_old = app.Z{app.e};

                    x = app.X{app.e};
                    y = app.Y{app.e};
                    z = app.Z{app.e};

                    for k = 1:size(x,2)
                        a = x(:,k);
                        a(isnan(a)) = 0;
                        x(:,k) = a;
                    end

                    for k = 1:size(y,2)
                        b = y(:,k);
                        b(isnan(b)) = 0;
                        y(:,k) = b;
                    end

                    for k = 1:size(z,2)
                        c = z(:,k);
                        c(isnan(c)) = 0;
                        z(:,k) = c;
                    end

                    app.X{app.e} = x;
                    app.Y{app.e} = y;
                    app.Z{app.e} = z;

                    updateplot(app);
                    UpdateTable(app);
                else
                    msgbox('No coordinates available')
                end
            end
        end

        % Menu selected function: NextvalueMenu
        function NextvalueMenuSelected(app, event)
            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1
                if numel(app.X) >=1
                    % back-up original values
                    app.X_old = app.X{app.e};
                    app.Y_old = app.Y{app.e};
                    app.Z_old = app.Z{app.e};

                    x = app.X{app.e};
                    x = fillmissing (x,'next');

                    y = app.Y{app.e};
                    y = fillmissing(y,'next');

                    z = app.Z{app.e};
                    z = fillmissing(z,'next');

                    app.X{app.e} = x;
                    app.Y{app.e} = y;
                    app.Z{app.e} = z;

                    updateplot(app);
                    UpdateTable(app);
                else
                    msgbox('No coordinates available')
                end
            end
        end

        % Menu selected function: NearestvalueMenu
        function NearestvalueMenuSelected(app, event)
            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1
                if numel(app.X) >=1
                    % back-up original values
                    app.X_old = app.X{app.e};
                    app.Y_old = app.Y{app.e};
                    app.Z_old = app.Z{app.e};

                    x = app.X{app.e};
                    x = fillmissing (x,'nearest');

                    y = app.Y{app.e};
                    y = fillmissing(y,'nearest');

                    z = app.Z{app.e};
                    z = fillmissing(z,'nearest');

                    app.X{app.e} = x;
                    app.Y{app.e} = y;
                    app.Z{app.e} = z;

                    updateplot(app);
                    UpdateTable(app);
                else
                    msgbox('No coordinates available')
                end
            end
        end

        % Menu selected function: PreviousvalueMenu
        function PreviousvalueMenuSelected(app, event)
            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1
                if numel(app.X) >=1
                    % back-up original values
                    app.X_old = app.X{app.e};
                    app.Y_old = app.Y{app.e};
                    app.Z_old = app.Z{app.e};

                    x = app.X{app.e};
                    x = fillmissing (x,'previous');

                    y = app.Y{app.e};
                    y = fillmissing(y,'previous');

                    z = app.Z{app.e};
                    z = fillmissing(z,'previous');

                    app.X{app.e} = x;
                    app.Y{app.e} = y;
                    app.Z{app.e} = z;

                    updateplot(app);
                    UpdateTable(app);
                else
                    msgbox('No coordinates available')
                end
            end
        end

        % Menu selected function: MeanwindowMenu
        function MeanwindowMenuSelected(app, event)
            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1
                if numel(app.X) >=1
                    dlgtitle = 'Mean from a window of values';
                    prompt = {'Choose the window size'};
                    dims = [1 40];
                    definput = {'3'};
                    answer = inputdlg(prompt,dlgtitle,dims,definput);

                    if isempty(answer)
                    else
                        window = str2double(answer);

                        % back-up original values
                        bkpData(app)

                        x = app.X{app.e};
                        x = fillmissing (x,'movmean', window);

                        y = app.Y{app.e};
                        y = fillmissing(y,'movmean', window);

                        z = app.Z{app.e};
                        z = fillmissing(z,'movmean', window);

                        app.X{app.e} = x;
                        app.Y{app.e} = y;
                        app.Z{app.e} = z;

                        updateplot(app);
                        UpdateTable(app);
                    end
                else
                    msgbox('No coordinates available')
                end
            end
        end

        % Menu selected function: MedianwindowMenu
        function MedianwindowMenuSelected(app, event)
            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1

                if numel(app.X) >=1
                    dlgtitle = 'Mean from a window of values';
                    prompt = {'Choose the window size'};
                    dims = [1 40];
                    definput = {'3'};
                    answer = inputdlg(prompt,dlgtitle,dims,definput);

                    if isempty(answer)
                    else
                        window = str2double(answer);

                        % back-up original values
                        bkpData(app)

                        x = app.X{app.e};
                        x = fillmissing (x,'movmedian', window);

                        y = app.Y{app.e};
                        y = fillmissing(y,'movmedian', window);

                        z = app.Z{app.e};
                        z = fillmissing(z,'movmedian', window);

                        app.X{app.e} = x;
                        app.Y{app.e} = y;
                        app.Z{app.e} = z;

                        updateplot(app);
                        UpdateTable(app);
                    end
                else
                    msgbox('No coordinates available')
                end
            end
        end

        % Menu selected function: UseXYfileMenu
        function UseXYfileMenuSelected(app, event)
            % Inform the software that there is Stitch
            app.Is_stitch  = "yes";

            % Browse and copy values
            [app.file, path] = uigetfile('*.csv;*.txt;*.xls;*.xlsx');
            if isequal(app.file,0)
                % User clicked the "Cancel" button
                return
            else

                Table = readtable((fullfile(path, app.file))); % import file into table

                % extract values from the table
                xy = Table{:,:}; % extra xy
                t = xy(:,1); % extract time
                xy = xy(:,2:end); % remove the time column
                x = xy(:,1:2:end); % all values from 1st column, every second column to the end
                y = xy(:,2:2:end); % all values from the 2nd column, every second column to the end

                % copy values in a cell array using e to identify the element
                app.TStitch = t;
                app.XStitch = x;
                app.YStitch = y;

                % create an arbitrary Z-stitch series
                value = app.UseanarbitraryZEditField.Value;
                a = size(app.XStitch);
                app.ZStitch = repmat(value, a(1), a(2));

                % Update plot and table
                updateplot(app)

                % remove values from the table to free memory
                Table =[]; %#ok<NASGU>
            end
        end

        % Callback function
        function UseXYZfileMenuSelected(app, event)
            % Inform the software that there is Stitch
            app.Is_stitch  = "yes";

            % Browse and copy values
            [app.file, path] = uigetfile('*.csv;*.txt;*.xls;*.xlsx');
            Table = readtable((fullfile(path, app.file))); % import file into table

            % extract values from the table
            xyz = Table{:,:}; % extra xy
            t = xyz(:,1); % extract time
            xyz = xyz(:,2:end); % remove the time column
            x = xyz(:,1:3:end); % all values from 1st column, every 3 columns to the end
            y = xyz(:,2:3:end); % all values from the 2nd column, every 3 columns to the end
            z = xyz(:,3:3:end); % all values from the 2nd column, every 3 columns to the end

            % copy values in a cell array using e to identify the element
            app.TStitch = t;
            app.XStitch = x;
            app.YStitch = y;
            app.ZStitch = z;

            % Update plot and table
            updateplot(app)

            % remove values from the table to free memory
            Table =[]; %#ok<NASGU>
        end

        % Menu selected function: InvertXMenu_3
        function InvertXMenu_3Selected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab
                       
            if selectedTab == app.CoordinatesTab
                if numel(app.X) >=1
                    % backup original data
                    bkpData(app)

                    % Invert
                    for k=1:size(app.e, 2)
                        app.X{app.e(k)} = app.X{app.e(k)}.*(-1);
                    end

                    % update
                    updateplot(app);
                    UpdateTable (app);
                    UpdateAnimStep(app);
                else
                    msgbox('No coordinates available')
                end
            else
                msgbox('This function is only available for preprosessing of coordinates')
            end
        end

        % Menu selected function: InvertYMenu_3
        function InvertYMenu_3Selected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab
                     
                if selectedTab == app.CoordinatesTab
                    if numel(app.Y) >=1
                        % backup original data
                        bkpData(app)

                        % Invert
                        for k=1:size(app.e, 2)
                            app.Y{app.e(k)} = app.Y{app.e(k)}.*(-1);
                        end

                        % update
                        updateplot(app);
                        UpdateTable (app);
                        UpdateAnimStep(app);
                    else
                        msgbox('No coordinates available')
                    end
                else
                    msgbox('This function is only available for preprosessing of coordinates')
                end
            
        end

        % Menu selected function: InvertZMenu_2
        function InvertZMenu_2Selected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab
            
                if selectedTab == app.CoordinatesTab
                    if numel(app.Z) >=1
                        % backup original data
                        bkpData(app)

                        % Invert
                        for k=1:size(app.e, 2)
                        app.Z{app.e(k)} = app.Z{app.e(k)}.*(-1);
                        end

                        % update
                        updateplot(app);
                        UpdateTable (app);
                        UpdateAnimStep(app);

                    else
                        msgbox('No coordinates available')
                    end
                else
                    msgbox('This function is only available for preprosessing of coordinates')
                end
        end

        % Menu selected function: RotatetheXYplanMenu
        function RotatetheXYplanMenuSelected(app, event)
            %Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab            

            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1

                if selectedTab == app.CoordinatesTab
                    if numel(app.X) >=1
                        dlgtitle = 'Rotate the XY plan';
                        prompt = {'Define the rotation factor'};
                        dims = [1 40];
                        definput = {'0'};
                        answer = inputdlg(prompt,dlgtitle,dims,definput);

                        if isempty(answer)
                        else
                            % backup original data
                            bkpData(app)

                            factor = str2double(answer);
                            R = [cosd(factor) sind(factor); -sind(factor) cosd(factor)];

                            % Preallocation and erasing of rotation variables
                            app.X_ro = [];
                            app.Y_ro = [];

                            % calculate rotation for each point
                            for i = 1:size(app.X{app.e}, 1)
                                vector = [app.X{app.e}(i,:); app.Y{app.e}(i,:)];
                                so = R*vector;
                                app.X_ro = [app.X_ro; so(1,:)];
                                app.Y_ro = [app.Y_ro; so(2,:)];
                            end

                            % replace coordinates by rotated coordinates
                            app.X{app.e} = app.X_ro;
                            app.Y{app.e} = app.Y_ro;

                            updateplot(app);
                            UpdateTable(app);
                            UpdateAnimStep(app);
                        end
                    else
                        msgbox('No coordinates available')
                    end
                else
                    msgbox('This function is only available for preprosessing of coordinates')
                end
            end
        end

        % Menu selected function: RotatetheXZplanMenu
        function RotatetheXZplanMenuSelected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1

                if selectedTab == app.CoordinatesTab
                    if numel(app.X) >=1
                        dlgtitle = 'Rotate the XZ plan';
                        prompt = {'Define the rotation factor'};
                        dims = [1 40];
                        definput = {'0'};
                        answer = inputdlg(prompt,dlgtitle,dims,definput);

                        if isempty(answer)
                        else

                            % backup original data
                            bkpData(app)

                            factor = str2double(answer);
                            R = [cosd(factor) sind(factor); -sind(factor) cosd(factor)];

                            % Preallocation and erasing of rotation variables
                            app.X_ro = [];
                            app.Z_ro = [];

                            % calculate rotation for each point
                            for i = 1:size(app.X{app.e}, 1)
                                vector = [app.X{app.e}(i,:); app.Z{app.e}(i,:)];
                                so = R*vector;
                                app.X_ro = [app.X_ro; so(1,:)];
                                app.Z_ro = [app.Z_ro; so(2,:)];
                            end

                            % replace coordinates by rotated coordinates
                            app.X{app.e} = app.X_ro;
                            app.Z{app.e} = app.Z_ro;

                            updateplot(app);
                            UpdateTable(app);
                            UpdateAnimStep(app);
                        end
                    else
                        msgbox('No coordinates available')
                    end
                else
                    msgbox('This function is only available for preprosessing of coordinates')
                end
            end
        end

        % Menu selected function: RotatetheYZplanMenu
        function RotatetheYZplanMenuSelected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            % check number of elements
            NumberElement = CheckNumberElementSelected(app);
            if NumberElement == 1

                if selectedTab == app.CoordinatesTab
                    if numel(app.Y) >=1
                        dlgtitle = 'Rotate the YZ plan';
                        prompt = {'Define the rotation factor'};
                        dims = [1 40];
                        definput = {'0'};
                        answer = inputdlg(prompt,dlgtitle,dims,definput);

                        if isempty(answer)
                        else

                            % backup original data
                            bkpData(app)

                            factor = str2double(answer);
                            R = [cosd(factor) sind(factor); -sind(factor) cosd(factor)];

                            % Preallocation and erasing of rotation variables
                            app.Y_ro = [];
                            app.Z_ro = [];

                            % calculate rotation for each point
                            for i = 1:size(app.Y{app.e}, 1)
                                vector = [app.Y{app.e}(i,:); app.Z{app.e}(i,:)];
                                so = R*vector;
                                app.Y_ro = [app.Y_ro; so(1,:)];
                                app.Z_ro = [app.Z_ro; so(2,:)];
                            end

                            % replace coordinates by rotated coordinates
                            app.Y{app.e} = app.Y_ro;
                            app.Z{app.e} = app.Z_ro;

                            updateplot(app);
                            UpdateTable(app);
                            UpdateAnimStep(app);
                        end
                    else
                        msgbox('No coordinates available')
                    end
                else
                    msgbox('This function is only available for preprosessing of coordinates')
                end
            end
        end

        % Menu selected function: ShiftXMenu
        function ShiftXMenuSelected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

                if selectedTab == app.CoordinatesTab
                    if numel(app.X) >=1
                        dlgtitle = 'Shift X-coordinates';
                        prompt = {'Define the shift value on X'};
                        dims = [1 40];
                        definput = {'0'};
                        answer = inputdlg(prompt,dlgtitle,dims,definput);

                        if isempty(answer)
                        else
                            % backup original data
                            bkpData(app)

                            % calculate shifted coordinates
                            answer = str2double(answer);
                            for k=1:size(app.e, 2)
                                app.X{app.e(k)} = app.X{app.e(k)}+answer(1,1);
                            end

                            % update
                            updateplot(app); UpdateTable(app); UpdateAnimStep(app);
                        end
                    else
                        msgbox('No coordinates available')
                    end
                else
                    msgbox('This function is only available for preprosessing of coordinates')
                end         
        end

        % Menu selected function: ShiftYMenu
        function ShiftYMenuSelected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab
            
                if selectedTab == app.CoordinatesTab
                    if numel(app.Y) >=1
                        dlgtitle = 'Shift Y-coordinates';
                        prompt = {'Define the shift value on Y'};
                        dims = [1 40];
                        definput = {'0'};
                        answer = inputdlg(prompt,dlgtitle,dims,definput);

                        if isempty(answer)
                        else
                            % backup original data
                            bkpData(app)

                            % calculate shifted coordinates
                            answer = str2double(answer);
                            for k=1:size(app.e, 2)
                                app.Y{app.e(k)} = app.Y{app.e(k)}+answer(1,1);
                            end

                            % update
                            updateplot(app); UpdateTable(app); UpdateAnimStep(app);
                        end
                    else
                        msgbox('No coordinates available')
                    end
                else
                    msgbox('This function is only available for preprosessing of coordinates')
                end
        end

        % Menu selected function: ShiftZMenu
        function ShiftZMenuSelected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

                if selectedTab == app.CoordinatesTab
                    if numel(app.Z) >=1
                        dlgtitle = 'Shift Z-coordinates';
                        prompt = {'Define the shift values on Z'};
                        dims = [1 40];
                        definput = {'0'};
                        answer = inputdlg(prompt,dlgtitle,dims,definput);

                        if isempty(answer)
                        else
                            % backup original data
                            bkpData(app)

                            % calculate shifted coordinates
                            answer = str2double(answer);
                            for k=1:size(app.e, 2)
                            app.Z{app.e(k)} = app.Z{app.e(k)}+answer(1,1);
                            end

                            % update
                            updateplot(app); UpdateTable(app); UpdateAnimStep(app);
                        end
                    else
                        msgbox('No coordinates available')
                    end
                else
                    msgbox('This function is only available for preprosessing of coordinates')
                end
        end

        % Menu selected function: ShiftXYZMenu
        function ShiftXYZMenuSelected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

                if selectedTab == app.CoordinatesTab
                    if numel(app.X) >=1
                        dlgtitle = 'Shift XYZ-coordinates';
                        prompt = {'Define the shift values on X','Define the shift values on Y', 'Define the shift values on Z'};
                        dims = [1 40];
                        definput = {'0','0','0'};
                        answer = inputdlg(prompt,dlgtitle,dims,definput);

                        if isempty(answer)
                        else
                            % backup original data
                            bkpData(app)

                            % calculate shifted coordinates
                            answer = str2double(answer);
                            for k=1:size(app.e, 2)
                                app.X{app.e(k)} = app.X{app.e(k)}+answer(1,1);
                                app.Y{app.e(k)} = app.Y{app.e(k)}+answer(2,1);
                                app.Z{app.e(k)} = app.Z{app.e(k)}+answer(3,1);
                            end

                            % update
                            updateplot(app); UpdateTable(app); UpdateAnimStep(app);
                        end
                    else
                        msgbox('No coordinates available')
                    end
                else
                    msgbox('This function is only available for preprosessing of coordinates')
                end
        end

        % Button pushed function: ReplotButton
        function ReplotButtonPushed(app, event)
            if numel(app.X) >=1
                updateplot(app)
            else
                msgbox('No coordinates available')
            end
        end

        % Menu selected function: AlignonXMenu
        function AlignonXMenuSelected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            if selectedTab == app.CoordinatesTab
                if numel(app.X) >= 1
                    % backup coordinates to be able to revert if necessary
                    bkpData(app)

                    % launch a dialogue box
                    SelectPOI(app)
                    ChoosenPOI = app.SelectedOptionIndex; % user choice
                    a = app.X{1}(1,ChoosenPOI); % reference point

                    % calculate alignement on X
                    for k = 2:size(app.X,2)
                        d = app.X{k}(1, ChoosenPOI)-a; % distance between the x points
                        app.X{k} = app.X{k}-d; % substract this distance to all x values
                    end
                    updateplot(app); UpdateTable(app); UpdateAnimStep(app);
                else
                    msgbox('No coordinates available')
                end
            else
                msgbox('This function is only available for preprosessing of coordinates')
            end
        end

        % Menu selected function: AlignonXYMenu
        function AlignonXYMenuSelected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            if selectedTab == app.CoordinatesTab
                if numel(app.X) >=1
                    % backup coordinates to be able to revert if necessary
                    bkpData(app)

                    % launch a dialogue box
                    SelectPOI(app)
                    ChoosenPOI = app.SelectedOptionIndex; % user choice

                    % reference point on X
                    a = app.X{1}(1,ChoosenPOI);

                    % calculate alignement on X
                    for k = 2:size(app.X,2)
                        disX = app.X{k}(1, ChoosenPOI)-a; % distance between the x points
                        app.X{k} = app.X{k}-disX; % substract this distance to all x values
                    end

                    % reference point on Y
                    b = app.Y{1}(1,ChoosenPOI);

                    % calculate alignement on Y
                    for k = 2:size(app.Y,2)
                        disY = app.Y{k}(1, ChoosenPOI)-b; % distance between the Y points
                        app.Y{k} = app.Y{k}-disY; % substract this distance to all Y values
                    end

                    updateplot(app); UpdateTable(app); UpdateAnimStep(app);
                else
                    msgbox('No coordinates available')
                end
            else
                msgbox('This function is only available for preprosessing of coordinates')
            end
        end

        % Menu selected function: AlignonXYZMenu
        function AlignonXYZMenuSelected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            if selectedTab == app.CoordinatesTab
                if numel(app.X) >=1
                    % backup coordinates to be able to revert if necessary
                    bkpData(app)

                    % launch a dialogue box
                    SelectPOI(app)
                    ChoosenPOI = app.SelectedOptionIndex; % user choice

                    % reference point on X
                    a = app.X{1}(1,ChoosenPOI);

                    % calculate alignement on X
                    for k = 2:size(app.X,2)
                        disX = app.X{k}(1, ChoosenPOI)-a; % distance between the x points
                        app.X{k} = app.X{k}-disX; % substract this distance to all x values
                    end

                    % reference point on Y
                    b = app.Y{1}(1,ChoosenPOI);

                    % calculate alignement on Y
                    for k = 2:size(app.Y,2)
                        disY = app.Y{k}(1, ChoosenPOI)-b; % distance between the Y points
                        app.Y{k} = app.Y{k}-disY; % substract this distance to all Y values
                    end

                    % reference point on Z
                    c = app.Y{1}(1,ChoosenPOI);

                    % calculate alignement on Z
                    for k = 2:size(app.Z,2)
                        disZ = app.Z{k}(1, ChoosenPOI)-c; % distance between the Z points
                        app.Z{k} = app.Z{k}-disZ; % substract this distance to all Z values
                    end
                    updateplot(app); UpdateTable(app); UpdateAnimStep(app);
                else
                    msgbox('No coordinates available')
                end
            else
                msgbox('This function is only available for preprosessing of coordinates')
            end
        end

        % Menu selected function: AlignonYMenu
        function AlignonYMenuSelected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            if selectedTab == app.CoordinatesTab
                if numel(app.Y) >=1
                    % backup coordinates to be able to revert if necessary
                    bkpData(app)

                    % launch a dialogue box
                    SelectPOI(app)
                    ChoosenPOI = app.SelectedOptionIndex; % user choice
                    a = app.Y{1}(1,ChoosenPOI); % reference point

                    % calculate alignement on Y
                    for k = 2:size(app.Y,2)
                        d = app.Y{k}(1, ChoosenPOI)-a; % distance between the Y points
                        app.Y{k} = app.Y{k}-d; % substract this distance to all Y values
                    end
                    updateplot(app); UpdateTable(app); UpdateAnimStep(app);
                else
                    msgbox('No coordinates available')
                end
            else
                msgbox('This functions is only available for preprosessing of coordinates')
            end
        end

        % Menu selected function: AlignonZMenu
        function AlignonZMenuSelected(app, event)
            % Identify which tab is used
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            if selectedTab == app.CoordinatesTab
                if numel(app.Z) >=1
                    % backup coordinates to be able to revert if necessary
                    bkpData(app)

                    % launch a dialogue box
                    SelectPOI(app)
                    ChoosenPOI = app.SelectedOptionIndex; % user choice
                    a = app.Z{1}(1,ChoosenPOI); % reference point

                    % calculate alignement on Z
                    for k = 2:size(app.Z,2)
                        d = app.Z{k}(1, ChoosenPOI)-a; % distance between the Z points
                        app.Z{k} = app.Z{k}-d; % substract this distance to all Z values
                    end
                    updateplot(app); UpdateTable(app); UpdateAnimStep(app);

                else
                    msgbox('No coordinates available')
                end
            else
                msgbox('This function is only available for preprosessing of coordinates')
            end
        end

        % Menu selected function: ImportfromDeepLabCutMenu
        function ImportfromDeepLabCutMenuSelected(app, event)
            % Browse and copy values
            [app.file, path] = uigetfile('*.csv');

            if isequal(app.file,0)
                % User clicked the "Cancel" button
                return
            else
                % Set the WindowStyle to "normal" to keep the app to the front
                app.MotionAnalyserUIFigure.WindowStyle = 'normal';

                % Import table
                path = (fullfile(path, app.file)); % importing path
                type path;
                opts = detectImportOptions (path);
                opts.DataLines = 4;
                opts.VariableNamesLine = 2;
                Table = readtable(path, opts);
                header = Table.Properties.VariableNames; % extract column names
                namePOI = header (:,2:end); % remove the time column

                % Set the app window as the current figure to prevent the app
                % from going to the back
                figure(app.MotionAnalyserUIFigure);

                % extract values from the table
                xy = Table{:,:}; % extra xy
                t = xy(:,1); % extract time
                xy = xy(:,2:end); % remove the time column
                x = xy(:,1:3:end); % all values from 1st column, every second column to the end
                y = xy(:,2:3:end); % all values from the 2nd column, every second column to the end

                % Increment element number
                h = app.te(end) + 1;
                app.te = [app.e, h];
                app.e = app.te(end);

                % copy values in a cell array using e to identify the element
                app.T{app.e} = t;
                app.X{app.e} = x;
                app.Y{app.e} = y;
                app.name{app.e} = namePOI;
                app.colname{app.e} = app.name{app.e}(:,1:3:end);
                app.nPOI{app.e} = size (x,2); % count the number of column on X = number of POI
                CreateZseries(app) % function to create arbitrary Z series

                % Increment element name
                a = cellstr(app.file);
                app.ElementName = [app.ElementName; a];

                % define dropdown menu items based on POI names
                app.SingleCurveKinematic.Items = app.name{app.e}(:,1:2:end);

                %% switch to the coordinate tab
                app.TabGroup.SelectedTab = app.CoordinatesTab;

                % Update Element Table
                UpdateElementTable(app)

                % Update
                updateplot(app);
                UpdateTable(app);
                UpdateAnimStep(app);

                % remove values from the table to free memory
                clear Table;

                % Define the sampling rate
                dlgtitle = 'Sampling rate';
                prompt = {'Define a new sampling rate'};
                dims = [1 40];
                definput = {'Unchanged'};
                answer = inputdlg(prompt,dlgtitle,dims,definput);

                if isempty(answer)
                elseif answer == "Unchanged"
                else
                    factor = str2double(answer);
                    difft = 1./factor; % time difference between 2 values
                    m = length (app.X{app.e});
                    time = 0+(0:m-1)*difft;
                    time = transpose(time);
                    app.T{app.e} = [];
                    app.T{app.e} = time;
                    UpdateTable(app); updateplot(app);
                end
            end
        end

        % Menu selected function: EPhystracesMenu
        function EPhystracesMenuSelected(app, event)
            clear Table
            app.file= [];

            % Browse
            [app.file, path] = uigetfile('*.csv;*.txt;*.xls;*.xlsx');

            if isequal(app.file,0)
                % User clicked the "Cancel" button
                return
            else

                % Set the WindowStyle to "normal" to keep the app to the front
                app.MotionAnalyserUIFigure.WindowStyle = 'normal';
                Table = readtable((fullfile(path, app.file)));
                header = Table.Properties.VariableNames; % extract column names
                data =Table{:,:}; % transform the numerical data table into matrix

                % Set the app window as the current figure to prevent the app from going to the back
                figure(app.MotionAnalyserUIFigure);

                % select data
                app.tEMG = data(:,1); % time, all values of column 1
                app.Voltage = data (:,2:end); % voltage, all values of column 2
                app.colnameEMG = header(1, 2:end); % all muscle names without "time"

                % Remove zeros and NaN values that will create problemsfor fourier transform
                A= [app.tEMG,app.Voltage];
                nanRows = any(isnan(A), 2);
                zeroRows = any(A==0, 2);
                badRows = nanRows | zeroRows;
                A(badRows, :) = [];
                app.Voltage = A(:,2:end);
                app.fEMG = app.Voltage; % copy the voltage in fEMG for later filtering
                app.tEMG = A(:,1);
                app.tEMG_old = app.tEMG;

                %% switch to the EMG tab
                app.TabGroup.SelectedTab = app.EphyTab;

                % Fill table
                UpdateEMGTable(app);

                % send data to the function that spread values on Y
                app.transport = app.Voltage;
                SpreadOnY(app); % app function
                app.SpreadV = app.retour;

                % Plot spreaded EMG
                cla(app.UIAxesEMG); cla(app.UIAxesEMG,'reset');
                plot (app.UIAxesEMG, app.tEMG, app.SpreadV)
                title(app.UIAxesEMG, 'Original EMG signal');
                xlabel(app.UIAxesEMG, 'Time');
                ylabel(app.UIAxesEMG, 'Voltage');
                legend (app.UIAxesEMG, app.colnameEMG);

                % Determine the sampling rate
                app.Freq = 1/(mean(diff(app.tEMG))); % mean sampling rate
                app.SamplingDataRate.Value = app.Freq; % display the sampling rate
            end
        end

        % Value changed function: TimescalefactorSlider
        function TimescalefactorSliderValueChanged(app, event)
            TimeSlider(app)
        end

        % Value changed function: AmplitudescalefactorSlider
        function AmplitudescalefactorSliderValueChanged(app, event)
            AmplitudeSlider(app)
        end

        % Value changed function: PlotDropDown
        function PlotDropDownValueChanged(app, event)
            value = app.PlotDropDown.Value;

            % reset sliders position
            app.TimescalefactorSlider.Value = 1;
            app.AmplitudescalefactorSlider.Value = 1;
            cla(app.UIAxesEMG); cla(app.UIAxesEMG,'reset');

            switch value
                case "Filtered E-phy trace"
                    plotfEMG(app)

                case "Raw E-phy trace"
                    if ~isempty (app.Voltage)
                        % send data to the function that spread values on Y
                        app.transport = app.Voltage;
                        SpreadOnY(app); % app function
                        app.SpreadV = app.retour;

                        % Plot spreaded EMG
                        cla(app.UIAxesEMG); cla(app.UIAxesEMG,'reset');
                        plot (app.UIAxesEMG, app.tEMG, app.SpreadV)
                        title(app.UIAxesEMG, 'Original EMG signal');
                        xlabel(app.UIAxesEMG, 'Time');
                        ylabel(app.UIAxesEMG, 'Voltage');
                        legend (app.UIAxesEMG, app.colnameEMG);
                    else
                        msgbox ('No values available for plotting')
                    end

                case "E-phy envelope"
                    if isempty(app.envelope) == 1
                        msgbox ('Please create an E-phy envelope')
                    else
                        plotenvelope(app)
                    end

                case "Raw/envelope"

                    if isempty(app.envelope) == 1
                        msgbox ('Please create an E-phy envelope')
                    else
                        % send data to the function that spread values on Y
                        app.transport = [app.Voltage; app.envelope]; % place envelope values in the same column as EMG
                        SpreadOnY(app); % app function
                        E = app.retour;

                        % re-organise the values
                        A = size (app.Voltage); % determine size of voltage
                        A = A (1,1); % A is the number of raws in voltage
                        E1 = E(1:A,1:end); % use A to isolate the values of voltage

                        B = A+1; % B is the next raw after the last value from the voltage
                        E2 = E(B:end,1:end); % use B to isolate the values from the envelope

                        % Plot
                        plot (app.UIAxesEMG, app.tEMG, E1, 'Color', 'b');
                        hold (app.UIAxesEMG, 'on');
                        plot (app.UIAxesEMG, app.tEMG, E2,'Color', 'r');
                        hold (app.UIAxesEMG, 'off');
                        title(app.UIAxesEMG, 'Raw & E-phy envelope');
                        legend(app.UIAxesEMG, app.colnameEMG);
                    end

                case "FFT power spectrum"
                    if ~isempty (app.fEMG)
                        % launch a dialogue box
                        selectMOI(app)

                        E = app.fEMG(:,app.SelectedOptionIndex); % reference point

                        % Compute the one-sided FFT of the EMG signal
                        F = fft(E) / length(E); % FFT normalization

                        % Compute the one-sided frequency range
                        N = length(E);
                        f = (0:N/2)*(app.Freq/N);

                        % Find the index of the frequency closest to the specified frequency
                        [~, index] = min(abs(f - app.Freq));

                        % Calculate the amplitude at the specified frequency
                        amplitude = 2 * abs(F(index));

                        % Plot the FFT
                        plot(app.UIAxesEMG, f, 2*abs(F(1:N/2+1)));
                        xlabel(app.UIAxesEMG,'Frequency (Hz)');
                        ylabel(app.UIAxesEMG,'Amplitude');
                        title(app.UIAxesEMG,'FFT of EMG Signal');
                    else
                        msgbox('No values available for plotting')
                    end

                case "FFT spectrogram"
                    if ~isempty (app.fEMG)
                        % launch a dialogue box
                        selectMOI(app)

                        E = app.fEMG(:,app.SelectedOptionIndex); % reference point

                        % user defines the window and overlap
                        % Create a dialogue box
                        % Define the labels for the input fields in the dialog box.
                        prompt = {'Window (s), usually 0.1-0.01:', 'Overlap, usually 0.25-0.5:'};

                        % Define the title for the dialog box.
                        dlgtitle = 'Set parameters';

                        % Define the size of the dialog box.
                        dims = [1 45];

                        % Define the default values for the input fields.
                        definput = {'0.1', '0.5'};

                        % Display the dialog box and wait for the user to input values.
                        answer = inputdlg(prompt,dlgtitle,dims,definput);

                        % collect parameters from user input to set the window size and overlap parameters
                        win_size = abs(str2double(answer(1))); % 4th order filter is default.
                        overlap = abs(str2double(answer(2))); % Notch frequency in Hz

                        % Calculate the window and overlap sizes
                        win_samples = round(win_size * app.Freq);
                        overlap_samples = round(overlap * win_samples);

                        % Calculate the spectrogram using MATLAB's built-in function
                        [s, f, t] = spectrogram(E, win_samples, overlap_samples, [], app.Freq);

                        % Display the spectrogram colormap in the app.UIAxesEMG using imagesc
                        imagesc(app.UIAxesEMG, t, f, abs(s));

                        % Adjust the color map and axis labels
                        colormap(app.UIAxesEMG, 'jet');
                        xlabel(app.UIAxesEMG, 'Time (s)');
                        ylabel(app.UIAxesEMG, 'Frequency (Hz)');

                        % Display the spectrogram colormap in the app.UIAxesEMG using imagesc
                        imagesc(app.UIAxesEMG, t, f, abs(s));

                        % Adjust the color map and axis labels
                        colormap(app.UIAxesEMG, 'jet');
                        xlabel(app.UIAxesEMG, 'Time (s)');
                        ylabel(app.UIAxesEMG, 'Frequency (Hz)');

                        % Add a color bar to the right of the spectrogram
                        cb = colorbar('peer', app.UIAxesEMG);
                        ylabel(cb, 'Magnitude');
                    else
                        msgbox('No values available for plotting')
                    end
            end
            app.PlotDropDown.Value = 'Choose';
        end

        % Button pushed function: iButton_3
        function iButton_3Pushed(app, event)
            msgbox('If your imported file that only contains xy-coordinates, you can add an arbitrary z-coordinate that will be identical for all points. This allows you to set a desired distance between the elements when visualizing them in 3D.')
        end

        % Value changed function: EditField
        function EditFieldValueChanged(app, event)
            clear pos
            pos = app.AmplitudescalefactorSlider.Value;

            %% set the max value of the slider as the value of the field
            max_value = app.EditField.Value;
            min_value = 1;
            app.AmplitudescalefactorSlider.Limits = [min_value max_value];

            % return the slider to the value
            if pos < max_value
                app.AmplitudescalefactorSlider.Value = pos;
            else
                app.AmplitudescalefactorSlider.Value = 1;
            end
        end

        % Value changed function: EditField_2
        function EditField_2ValueChanged(app, event)
            clear pos
            pos = app.TimescalefactorSlider.Value;

            %% set the max value of the slider as the value of the field
            max_value = app.EditField_2.Value;
            min_value = 1;
            app.TimescalefactorSlider.Limits = [min_value max_value];

            % return the slider to the value
            if pos < max_value
                app.TimescalefactorSlider.Value = pos;
            else
                app.TimescalefactorSlider.Value = 1;
            end
        end

        % Button pushed function: ShowtableButton
        function ShowtableButtonPushed(app, event)
            % Select the value that correspond to the list of POI
            clear idx3
            [~, idx3] = ismember(app.POI_list.Value, app.POI_list.Items);
            app.UITableStat.Data = [];
            app.UITableData.ColumnName = [];


            % Fill the table depending on the element selected and the POI selected
            if app.ParameterX_2.Value == "Distance"
                % show descriptive stats
                app.UITableStat.ColumnName = ["", "x","y","z","xy","xz","yz","xyz"];
                col1 = ["Min"; "Max"; "Mean"; "Median"; "Sum"];
                col2 = [(app.DistanceStat {app.e,1}(:,idx3)); (app.DistanceStat {app.e,2}(:,idx3)); (app.DistanceStat {app.e,3}(:,idx3)); (app.DistanceStat {app.e,4}(:,idx3)); (app.DistanceStat {app.e,5}(:,idx3))];
                col3 = [(app.DistanceStat {app.e,6}(:,idx3)); (app.DistanceStat {app.e,7}(:,idx3)); (app.DistanceStat {app.e,8}(:,idx3)); (app.DistanceStat {app.e,9}(:,idx3)); (app.DistanceStat {app.e,10}(:,idx3))];
                col4 = [(app.DistanceStat {app.e,11}(:,idx3)); (app.DistanceStat {app.e,12}(:,idx3)); (app.DistanceStat {app.e,13}(:,idx3)); (app.DistanceStat {app.e,14}(:,idx3)); (app.DistanceStat {app.e,15}(:,idx3))];
                col5 = [(app.DistanceStat {app.e,16}(:,idx3)); (app.DistanceStat {app.e,17}(:,idx3)); (app.DistanceStat {app.e,18}(:,idx3)); (app.DistanceStat {app.e,19}(:,idx3)); (app.DistanceStat {app.e,20}(:,idx3))];
                col6 = [(app.DistanceStat {app.e,21}(:,idx3)); (app.DistanceStat {app.e,22}(:,idx3)); (app.DistanceStat {app.e,23}(:,idx3)); (app.DistanceStat {app.e,24}(:,idx3)); (app.DistanceStat {app.e,25}(:,idx3))];
                col7 = [(app.DistanceStat {app.e,26}(:,idx3)); (app.DistanceStat {app.e,27}(:,idx3)); (app.DistanceStat {app.e,28}(:,idx3)); (app.DistanceStat {app.e,29}(:,idx3)); (app.DistanceStat {app.e,30}(:,idx3))];
                col8 = [(app.DistanceStat {app.e,31}(:,idx3)); (app.DistanceStat {app.e,32}(:,idx3)); (app.DistanceStat {app.e,33}(:,idx3)); (app.DistanceStat {app.e,34}(:,idx3)); (app.DistanceStat {app.e,35}(:,idx3))];
                data = [col1 col2 col3 col4 col5 col6 col7 col8];
                app.UITableStat.Data = data;
                clear col1 col2 col3 col4 col5 col6 col7 col8 data;

                % show calculated data
                app.UITableData.ColumnName = ["x","y","z","xy","xz","yz","xyz"];
                data = [app.dX{app.e}(:,idx3), app.dY{app.e}(:,idx3), app.dZ{app.e}(:,idx3), app.dXY{app.e}(:,idx3), app.dXZ{app.e}(:,idx3), app.dYZ{app.e}(:,idx3), app.dXYZ{app.e}(:,idx3);];
                app.UITableData.Data = data;
                clear data;

            elseif app.ParameterX_2.Value == "Speed"
                col1 = ["Min"; "Max"; "Mean"; "Median"; "Mode"];
                if app.Arb_Z == 0 % if the Z matrix has real values
                    % Plots descriptive stats
                    app.UITableStat.ColumnName = ["", "Vx","Vy","Vz","Vxy","Vxz","Vyz","Vxyz"];
                    col2 = [(app.AccelerationStat {app.e,1}(:,idx3)); (app.AccelerationStat {app.e,2}(:,idx3)); (app.AccelerationStat {app.e,3}(:,idx3)); (app.AccelerationStat {app.e,4}(:,idx3)); (app.AccelerationStat {app.e,5}(:,idx3))];
                    col3 = [(app.AccelerationStat {app.e,6}(:,idx3)); (app.AccelerationStat {app.e,7}(:,idx3)); (app.AccelerationStat {app.e,8}(:,idx3)); (app.AccelerationStat {app.e,9}(:,idx3)); (app.AccelerationStat {app.e,10}(:,idx3))];
                    col4 = [(app.AccelerationStat {app.e,11}(:,idx3)); (app.AccelerationStat {app.e,12}(:,idx3)); (app.AccelerationStat {app.e,13}(:,idx3)); (app.AccelerationStat {app.e,14}(:,idx3)); (app.AccelerationStat {app.e,15}(:,idx3))];
                    col5 = [(app.AccelerationStat {app.e,16}(:,idx3)); (app.AccelerationStat {app.e,17}(:,idx3)); (app.AccelerationStat {app.e,18}(:,idx3)); (app.AccelerationStat {app.e,19}(:,idx3)); (app.AccelerationStat {app.e,20}(:,idx3))];
                    col6 = [(app.AccelerationStat {app.e,21}(:,idx3)); (app.AccelerationStat {app.e,22}(:,idx3)); (app.AccelerationStat {app.e,23}(:,idx3)); (app.AccelerationStat {app.e,24}(:,idx3)); (app.AccelerationStat {app.e,25}(:,idx3))];
                    col7 = [(app.AccelerationStat {app.e,26}(:,idx3)); (app.AccelerationStat {app.e,27}(:,idx3)); (app.AccelerationStat {app.e,28}(:,idx3)); (app.AccelerationStat {app.e,29}(:,idx3)); (app.AccelerationStat {app.e,30}(:,idx3))];
                    col8 = [(app.AccelerationStat {app.e,31}(:,idx3)); (app.AccelerationStat {app.e,32}(:,idx3)); (app.AccelerationStat {app.e,33}(:,idx3)); (app.AccelerationStat {app.e,34}(:,idx3)); (app.AccelerationStat {app.e,35}(:,idx3))];
                    data = [col1 col2 col3 col4 col5 col6 col7 col8];
                    app.UITableStat.Data = data;
                    clear data;

                    % Show calculated data
                    app.UITableData.ColumnName = ["Vx","Vy","Vz","Vxy","Vxz","Vyz","Vxyz"];
                    data = [app.VX{app.e}(:,idx3), app.VY{app.e}(:,idx3), app.VZ{app.e}(:,idx3), app.VXY{app.e}(:,idx3), app.VXZ{app.e}(:,idx3), app.VYZ{app.e}(:,idx3), app.VXYZ{app.e}(:,idx3)];
                    app.UITableData.Data = data;
                    clear data;

                else
                    % Plots descriptive stats
                    app.UITableStat.ColumnName = ["", "Vx","Vy","Vxy"];
                    col2 = [(app.AccelerationStat {app.e,1}(:,idx3)); (app.AccelerationStat {app.e,2}(:,idx3)); (app.AccelerationStat {app.e,3}(:,idx3)); (app.AccelerationStat {app.e,4}(:,idx3)); (app.AccelerationStat {app.e,5}(:,idx3))];
                    col3 = [(app.AccelerationStat {app.e,6}(:,idx3)); (app.AccelerationStat {app.e,7}(:,idx3)); (app.AccelerationStat {app.e,8}(:,idx3)); (app.AccelerationStat {app.e,9}(:,idx3)); (app.AccelerationStat {app.e,10}(:,idx3))];
                    col5 = [(app.AccelerationStat {app.e,16}(:,idx3)); (app.AccelerationStat {app.e,17}(:,idx3)); (app.AccelerationStat {app.e,18}(:,idx3)); (app.AccelerationStat {app.e,19}(:,idx3)); (app.AccelerationStat {app.e,20}(:,idx3))];
                    data = [col1 col2 col3 col5];
                    app.UITableStat.Data = data;
                    clear data;

                    % show calculated data
                    app.UITableData.ColumnName = ["Vx","Vy","Vxy"];
                    data = [app.VX{app.e,1}(:,idx3), app.VY{app.e,1}(:,idx3), app.VXY{app.e,1}(:,idx3)];
                    app.UITableData.Data = data;
                    clear data;
                end
                clear col1 col2 col3 col4 col5 col6 col7 col8 data;

            elseif app.ParameterX_2.Value == "Acceleration"
                col1 = ["Min"; "Max"; "Mean"; "Median"; "Mode"];
                if app.Arb_Z == 0 % if the Z matrix is real
                    % Plots descriptive stats
                    app.UITableStat.ColumnName = ["", "Ax","Ay","Az","Axy","Axz","Ayz","Axyz"];
                    col2 = [(app.AccelerationStat {app.e,1}(:,idx3)); (app.AccelerationStat {app.e,2}(:,idx3)); (app.AccelerationStat {app.e,3}(:,idx3)); (app.AccelerationStat {app.e,4}(:,idx3)); (app.AccelerationStat {app.e,5}(:,idx3))];
                    col3 = [(app.AccelerationStat {app.e,6}(:,idx3)); (app.AccelerationStat {app.e,7}(:,idx3)); (app.AccelerationStat {app.e,8}(:,idx3)); (app.AccelerationStat {app.e,9}(:,idx3)); (app.AccelerationStat {app.e,10}(:,idx3))];
                    col4 = [(app.AccelerationStat {app.e,11}(:,idx3)); (app.AccelerationStat {app.e,12}(:,idx3)); (app.AccelerationStat {app.e,13}(:,idx3)); (app.AccelerationStat {app.e,14}(:,idx3)); (app.AccelerationStat {app.e,15}(:,idx3))];
                    col5 = [(app.AccelerationStat {app.e,16}(:,idx3)); (app.AccelerationStat {app.e,17}(:,idx3)); (app.AccelerationStat {app.e,18}(:,idx3)); (app.AccelerationStat {app.e,19}(:,idx3)); (app.AccelerationStat {app.e,20}(:,idx3))];
                    col6 = [(app.AccelerationStat {app.e,21}(:,idx3)); (app.AccelerationStat {app.e,22}(:,idx3)); (app.AccelerationStat {app.e,23}(:,idx3)); (app.AccelerationStat {app.e,24}(:,idx3)); (app.AccelerationStat {app.e,25}(:,idx3))];
                    col7 = [(app.AccelerationStat {app.e,26}(:,idx3)); (app.AccelerationStat {app.e,27}(:,idx3)); (app.AccelerationStat {app.e,28}(:,idx3)); (app.AccelerationStat {app.e,29}(:,idx3)); (app.AccelerationStat {app.e,30}(:,idx3))];
                    col8 = [(app.AccelerationStat {app.e,31}(:,idx3)); (app.AccelerationStat {app.e,32}(:,idx3)); (app.AccelerationStat {app.e,33}(:,idx3)); (app.AccelerationStat {app.e,34}(:,idx3)); (app.AccelerationStat {app.e,35}(:,idx3))];
                    data = [col1 col2 col3 col4 col5 col6 col7 col8];
                    app.UITableStat.Data = data;
                    clear data;

                    % Show calculated data
                    app.UITableData.ColumnName = ["Ax","Ay","Az","Axy","Axz","Ayz","Axyz"];
                    data = [app.AX{app.e,1}(:,idx3), app.AY{app.e,1}(:,idx3), app.AZ{app.e,1}(:,idx3), app.AXY{app.e,1}(:,idx3), app.AXZ{app.e,1}(:,idx3), app.AYZ{app.e,1}(:,idx3), app.AXYZ{app.e,1}(:,idx3)];
                    app.UITableData.Data = data;
                    clear data;

                else
                    % Show descriptive stats
                    app.UITableStat.ColumnName = ["", "Ax","Ay","Axy"];
                    col2 = [(app.AccelerationStat {app.e,1}(:,idx3)); (app.AccelerationStat {app.e,2}(:,idx3)); (app.AccelerationStat {app.e,3}(:,idx3)); (app.AccelerationStat {app.e,4}(:,idx3)); (app.AccelerationStat {app.e,5}(:,idx3))];
                    col3 = [(app.AccelerationStat {app.e,6}(:,idx3)); (app.AccelerationStat {app.e,7}(:,idx3)); (app.AccelerationStat {app.e,8}(:,idx3)); (app.AccelerationStat {app.e,9}(:,idx3)); (app.AccelerationStat {app.e,10}(:,idx3))];
                    col5 = [(app.AccelerationStat {app.e,16}(:,idx3)); (app.AccelerationStat {app.e,17}(:,idx3)); (app.AccelerationStat {app.e,18}(:,idx3)); (app.AccelerationStat {app.e,19}(:,idx3)); (app.AccelerationStat {app.e,20}(:,idx3))];
                    data = [col1 col2 col3 col5];
                    app.UITableStat.Data = data;
                    clear data;

                    % show calculated data
                    app.UITableData.ColumnName = ["Ax","Ay","Axy"];
                    data = [app.AX{app.e,1}(:,idx3), app.AY{app.e,1}(:,idx3), app.AXY{app.e,1}(:,idx3)];
                    app.UITableData.Data = data;
                    clear data;
                end
                clear col1 col2 col3 col4 col5 col6 col7 col8 data;

            elseif app.ParameterX_2.Value == "Angular variation"  % Δθ
                col1 = ["Min"; "Max"; "Mean"; "Median"; "Mode"];
                if app.Arb_Z == 0 % if the Z matrix is real
                    % Plots descriptive stats
                    app.UITableStat.ColumnName = ["", "Δθxy","Δθxz","Δθyz"];
                    col2 = [(app.AngleStat {app.e,1}(:,idx3)); (app.AngleStat {app.e,2}(:,idx3)); (app.AngleStat {app.e,3}(:,idx3)); (app.AngleStat {app.e,4}(:,idx3)); (app.AngleStat {app.e,5}(:,idx3))];
                    col3 = [(app.AngleStat {app.e,6}(:,idx3)); (app.AngleStat {app.e,7}(:,idx3)); (app.AngleStat {app.e,8}(:,idx3)); (app.AngleStat {app.e,9}(:,idx3)); (app.AngleStat {app.e,10}(:,idx3))];
                    col4 = [(app.AngleStat {app.e,11}(:,idx3)); (app.AngleStat {app.e,12}(:,idx3)); (app.AngleStat {app.e,13}(:,idx3)); (app.AngleStat {app.e,14}(:,idx3)); (app.AngleStat {app.e,15}(:,idx3))];
                    data = [col1 col2 col3 col4];
                    app.UITableStat.Data = data;
                    clear data;

                    % plot calculated date
                    app.UITableData.ColumnName = ["Δθxy","Δθxz","Δθyz"];
                    data = [app.AnglesXY{app.e,1}(:,idx3), app.AnglesXZ{app.e,1}(:,idx3), app.AnglesYZ{app.e,1}(:,idx3)];
                    app.UITableData.Data = data;
                    clear data;
                else
                    % Plots descriptive stats
                    app.UITableStat.ColumnName = ["", "Δθxy"];
                    col2 = [(app.AngleStat {app.e,1}(:,idx3)); (app.AngleStat {app.e,2}(:,idx3)); (app.AngleStat {app.e,3}(:,idx3)); (app.AngleStat {app.e,4}(:,idx3)); (app.AngleStat {app.e,5}(:,idx3))];
                    app.UITableStat.Data = [col1 col2];
                    clear data;

                    % plot calculated data
                    app.UITableData.ColumnName = "Δθxy";
                    app.UITableData.Data = app.AnglesXY{app.e,1}(:,idx3);
                    clear data;
                end
                clear col1 col2 col3 col4 data;

            elseif app.ParameterX_2.Value == "Angular velocity" % ω
                col1 = ["Min"; "Max"; "Mean"; "Median"; "Mode"];

                if app.Arb_Z == 0 % if the Z matrix is real
                    % Plots descriptive stats
                    app.UITableStat.ColumnName = ["", "ωxy","ωxz","ωyz"];
                    col2 = [(app.AngVelocStat {app.e,1}(:,idx3)); (app.AngVelocStat {app.e,2}(:,idx3)); (app.AngVelocStat {app.e,3}(:,idx3)); (app.AngVelocStat {app.e,4}(:,idx3)); (app.AngVelocStat {app.e,5}(:,idx3))];
                    col3 = [(app.AngVelocStat {app.e,6}(:,idx3)); (app.AngVelocStat {app.e,7}(:,idx3)); (app.AngVelocStat {app.e,8}(:,idx3)); (app.AngVelocStat {app.e,9}(:,idx3)); (app.AngVelocStat {app.e,10}(:,idx3))];
                    col4 = [(app.AngVelocStat {app.e,11}(:,idx3)); (app.AngVelocStat {app.e,12}(:,idx3)); (app.AngVelocStat {app.e,13}(:,idx3)); (app.AngVelocStat {app.e,14}(:,idx3)); (app.AngVelocStat {app.e,15}(:,idx3))];
                    data = [col1 col2 col3 col4];
                    app.UITableStat.Data = data;
                    clear data;

                    % plot calculated data
                    app.UITableData.ColumnName = ["ωxy","ωxz","ωyz"];
                    data = [app.AngVeloc_XY{app.e,1}(:,idx3), app.AngVeloc_XZ{app.e,1}(:,idx3), app.AngVeloc_XZ{app.e,1}(:,idx3)];
                    app.UITableData.Data = data;
                    clear data;
                else
                    % Plots descriptive stats
                    app.UITableStat.ColumnName = ["", "ωxy"];
                    col2 = [(app.AngVelocStat {app.e,1}(:,idx3)); (app.AngVelocStat {app.e,2}(:,idx3)); (app.AngVelocStat {app.e,3}(:,idx3)); (app.AngVelocStat {app.e,4}(:,idx3)); (app.AngVelocStat {app.e,5}(:,idx3))];
                    app.UITableStat.Data = [col1 col2];

                    % plot calculated date
                    app.UITableData.ColumnName = "ωxy";
                    app.UITableData.Data = app.AngVeloc_XY{app.e,1}(:,idx3);
                    clear data;
                end
                clear col1 col2 col3 col4 data;

            elseif app.ParameterX_2.Value == "Angular acceleration" % α
                col1 = ["Min"; "Max"; "Mean"; "Median"; "Mode"];
                if app.Arb_Z == 0 % if the Z matrix is real
                    % Plots descriptive stats
                    app.UITableStat.ColumnName = ["", "αxy","αxz","αyz"];
                    col2 = [(app.AngAccStat {app.e,1}(:,idx3)); (app.AngAccStat {app.e,2}(:,idx3)); (app.AngAccStat {app.e,3}(:,idx3)); (app.AngAccStat {app.e,4}(:,idx3)); (app.AngAccStat {app.e,5}(:,idx3))];
                    col3 = [(app.AngAccStat {app.e,6}(:,idx3)); (app.AngAccStat {app.e,7}(:,idx3)); (app.AngAccStat {app.e,8}(:,idx3)); (app.AngAccStat {app.e,9}(:,idx3)); (app.AngAccStat {app.e,10}(:,idx3))];
                    col4 = [(app.AngAccStat {app.e,11}(:,idx3)); (app.AngAccStat {app.e,12}(:,idx3)); (app.AngAccStat {app.e,13}(:,idx3)); (app.AngAccStat {app.e,14}(:,idx3)); (app.AngAccStat {app.e,15}(:,idx3))];
                    app.UITableStat.Data = [col1 col2 col3 col4];

                    % plot calculated data
                    app.UITableData.ColumnName = ["αxy","αxz","αyz"];
                    data = [app.AngAcc_XY{app.e,1}(:,idx3), app.AngACC_XZ{app.e,1}(:,idx3), app.AngAcc_XZ{app.e,1}(:,idx3)];
                    app.UITableData.Data = data;
                    clear data;
                else
                    % Plots descriptive stats
                    app.UITableStat.ColumnName = ["", "αxy"];
                    col2 = [(app.AngAccStat {app.e,1}(:,idx3)); (app.AngAccStat {app.e,2}(:,idx3)); (app.AngAccStat {app.e,3}(:,idx3)); (app.AngAccStat {app.e,4}(:,idx3)); (app.AngAccStat {app.e,5}(:,idx3))];
                    app.UITableStat.Data = [col1 col2];

                    % plot calculated data
                    app.UITableData.ColumnName = "αxy";
                    app.UITableData.Data = app.AngAcc_XY{app.e}(:,idx3);
                end
                clear col1 col2 col3 col4 data;
            end
        end

        % Value changed function: ParameterX_2
        function ParameterX_2ValueChanged(app, event)
            % Select the element according to the dropdown item
            [~, idx] = ismember(app.ElementDropDownX_2.Value, app.ElementName);
            app.e = idx;

            value = app.ParameterX_2.Value;
            switch value

                case 'Distance'
                    a = convertStringsToChars (app.colname{app.e});
                    app.POI_list.Items = a;
                case 'Speed'
                    a = convertStringsToChars (app.colname{app.e});
                    app.POI_list.Items = a;
                case 'Acceleration'
                    a = convertStringsToChars (app.colname{app.e});
                    app.POI_list.Items = a;
                case 'Angular variation'
                    a = convertStringsToChars (app.colname{app.e}(:, 2:(end-1)));
                    app.POI_list.Items = a;
                case 'Angular velocity'
                    a = convertStringsToChars (app.colname{app.e}(:, 2:(end-1)));
                    app.POI_list.Items = a;
                case 'Angular acceleration'
                    a = convertStringsToChars (app.colname{app.e}(:, 2:(end-1)));
                    app.POI_list.Items = a;
            end

        end

        % Menu selected function: pngMenu
        function pngMenuSelected(app, event)
            % Prompt user for file location
            path = uigetdir(app.file, 'Save As');


            % waitbar
            wb = waitbar(0.1,'Please wait...');
            waitbar(.1,wb,'Saving coordinates plot');

            % Construct the full file path
            filepath = fullfile(path, 'Coordinates.png');

            % Get the UIAxes component handle
            axesHandle = app.UIAxes;
            % Export the contents of the UIAxes component to an image file
            exportgraphics(axesHandle, filepath, 'Resolution', 300);

            waitbar(.2,wb,'Saving animation snap');

            % Construct the full file path
            filepath = fullfile(path, 'Snap_animation.png');

            % Get the UIAxes component handle
            axesHandle = app.UIAxes12;
            % Export the contents of the UIAxes component to an image file
            exportgraphics(axesHandle, filepath, 'Resolution', 300);

            waitbar(.3,wb,'Saving kinematic plot1');

            % Construct the full file path
            filepath = fullfile(path, 'Kinematic_plot1.png');

            % Get the UIAxes component handle
            axesHandle = app.UIAxes2;
            % Export the contents of the UIAxes component to an image file
            exportgraphics(axesHandle, filepath, 'Resolution', 300);

            waitbar(.4,wb,'Saving kinematic plot2');

            % Construct the full file path
            filepath = fullfile(path, 'Kinematic_plot2.png');

            % Get the UIAxes component handle
            axesHandle = app.UIAxes3;
            % Export the contents of the UIAxes component to an image file
            exportgraphics(axesHandle, filepath, 'Resolution', 300);

            waitbar(.5,wb,'Saving kinematic plot3');

            % Construct the full file path
            filepath = fullfile(path, 'Kinematic_plot3.png');

            % Get the UIAxes component handle
            axesHandle = app.UIAxes4;
            % Export the contents of the UIAxes component to an image file
            exportgraphics(axesHandle, filepath, 'Resolution', 300);

            waitbar(.6,wb,'Saving kinematic plot4');

            % Construct the full file path
            filepath = fullfile(path, 'Kinematic_plot4.png');

            % Get the UIAxes component handle
            axesHandle = app.UIAxes5;
            % Export the contents of the UIAxes component to an image file
            exportgraphics(axesHandle, filepath, 'Resolution', 300);

            waitbar(.7,wb,'Saving EMG plot');

            % Construct the full file path
            filepath = fullfile(path, 'EMG_plot.png');

            % Get the UIAxes component handle
            axesHandle = app.UIAxesEMG;
            % Export the contents of the UIAxes component to an image file
            exportgraphics(axesHandle, filepath, 'Resolution', 300);

            waitbar(.8,wb,'Saving Sensor plot');

            % Construct the full file path
            filepath = fullfile(path, 'Sensor_plot.png');

            % Get the UIAxes component handle
            axesHandle = app.UIAxesSensor;
            % Export the contents of the UIAxes component to an image file
            % exportgraphics(axesHandle, filepath, 'Resolution', 300);

            waitbar(.9,wb,'Saving gait plot');

            % Construct the full file path
            filepath = fullfile(path, 'Gait_plot.png');

            % Get the UIAxes component handle
            axesHandle = app.UIAxes13;
            % Export the contents of the UIAxes component to an image file
            exportgraphics(axesHandle, filepath, 'Resolution', 300);

            waitbar(.95,wb,'Saving correlation plot');

            % Construct the full file path
            filepath = fullfile(path, 'Correlation_plot.png');

            % Get the UIAxes component handle
            axesHandle = app.UIAxes14;
            % Export the contents of the UIAxes component to an image file
            exportgraphics(axesHandle, filepath, 'Resolution', 300);

            waitbar(1,wb,'Done!');
            pause(0.4);
            close(wb);
        end

        % Menu selected function: AVIMenu
        function AVIMenuSelected(app, event)
            %% switch to the animation tab
            app.TabGroup.SelectedTab = app.AnimationTab;

            lines = cell(size((app.XAnim{app.e(1)}), 1), size(app.e, 2));

            cla(app.UIAxes12,'reset')
            cmap = get(app.UIAxes12,'defaultAxesColorOrder');

            % plot all segments
            axis(app.UIAxes12, 'auto')
            hold(app.UIAxes12, 'on')

            for k=1:size(app.e, 2)
                lines(:, k) = num2cell(plot3(app.UIAxes12, app.XAnim{app.e(k)}', app.YAnim{app.e(k)}', app.Z{app.e(k)}', ...
                    'Color', cmap(k, :), 'Marker', app.Mtype, "MarkerEdgeColor",app.MarkerEdgeColor, ...
                    "MarkerFaceColor", app.MarkerFaceColor, "MarkerSize", app.Msize, "LineWidth", app.LineThickness));
            end
            app.UIAxes12.DataAspectRatio = [1 1 1];
            Axes1_12Settings(app)

            % ylim(app.UIAxes12,[(-app.dist.*1.5), (app.dist*1.5)]);
            updateview(app)

            %end
            hold(app.UIAxes12, 'off')
            axis(app.UIAxes12, 'manual')

            % Set up the video writer
            video = VideoWriter ('Animation.avi');
            video.FrameRate = 10;
            open(video);

            for i = 2:size(lines, 1)
                for l = lines(i, :)
                    l{1}.Visible = 0; %#ok<FXSET>
                end
            end

            for i = 2:size(lines, 1)
                pause(app.TimeInterval)
                for l = lines(i-1, :)
                    l{1}.Visible = 0; %#ok<FXSET>
                end
                for l = lines(i, :)
                    l{1}.Visible = 1; %#ok<FXSET>
                end
                frame = getframe(app.UIAxes12);
                writeVideo(video, frame);
            end

            % The length of the pause determines the fluidity and the animation speed (user defined)
            as = app.TimeintervalEditField.Value;
            pause(as);
            drawnow
            frame = getframe(app.UIAxes12);
            writeVideo(video, frame);
        end

        % Menu selected function: SavematfileMenu
        function SavematfileMenuSelected(app, event)
            filename = 'SaveData.mat';
            [fnm,pth] = uiputfile(filename);
            if ischar(fnm)
                % Convert app.variables into variables that can be saved to a mat
                data.T = app.T;
                data.E = app.e;
                data.te = app.te;
                data.ElementName = app.ElementName;
                data.colname = app.colname;
                data.name = app.name;
                data.X = app.X;
                data.Y = app.Y;
                data.Z = app.Z;
                data.XStep = app.XStep;
                data.YStep = app.YStep;
                data.ZStep = app.ZStep;
                data.XAnim = app.XAnim;
                data.YAnim = app.YAnim;
                data.YAnim = app.YAnim;
                data.ZAnim = app.ZAnim;
                data.dX = app.dX;
                data.dY = app.dY;
                data.dZ = app.dZ;
                data.dXY = app.dXY;
                data.dXYZ = app.dXYZ;
                data.VX = app.VX;
                data.VY = app.VY;
                data.VZ = app.VZ;
                data.VXY = app.VXY;
                data.VXYZ = app.VXYZ;
                data.AX = app.AX;
                data.AY = app.AY;
                data.AZ = app.AZ;
                data.AXY = app.AXY;
                data.AXYZ = app.AXYZ;
                data.AnglesXY = app.AnglesXY;
                data.AnglesXZ = app.AnglesXZ;
                data.AnglesYZ = app.AnglesYZ;
                data.AngleStat = app.AngleStat;
                data.AngVeloc_XY = app.AngVeloc_XY;
                data.AngVeloc_XZ = app.AngVeloc_XZ;
                data.AngVeloc_YZ = app.AngVeloc_YZ;
                data.AngVelocStat = app.AngVelocStat;
                data.AngAcc_XY = app.AngAcc_XY;
                data.AngAcc_XZ = app.AngAcc_XZ;
                data.AngAcc_YZ = app.AngAcc_YZ;
                data.AngAccStat = app.AngAccStat;
                data.DistanceStat = app.DistanceStat;
                data.VelocityStat = app.VelocityStat;
                data.AccelerationStat = app.AccelerationStat;
                data.IntColname = app.IntColname;
                data.nPOI = app.nPOI;
                data.RecNumber = app.RecNumber;
                data.zPosition = app.zPosition;
                data.HeelstrikeColor = app.HeelstrikeColor;
                data.HeeloffColor = app.HeeloffColor;
                data.ToeoffColor = app.ToeoffColor;
                data.MaxtoeliftColor = app.MaxtoeliftColor;
                data.capX = app.capX;
                data.capY = app.capY;
                data.capZ = app.capZ;
                data.capT = app.capT;
                data.Xposition = app.Xposition;
                data.Yposition = app.Yposition;
                data.Zposition = app.Zposition;
                data.tvalue = app.tvalue;
                data.CalcGait = app.CalcGait;
                data.WhereIsHeel = app.WhereIsHeel;
                data.X_HS_position = app.X_HS_position;
                data.capture_X_HS = app.capture_X_HS;
                data.Y_HS_position = app.Y_HS_position;
                data.capture_Y_HS = app.capture_Y_HS;
                data.Z_HS_position = app.Z_HS_position;
                data.capture_Z_HS = app.capture_Z_HS;
                data.XHS = app.XHS;
                data.YHS = app.YHS;
                data.ZHS = app.ZHS;
                data.tvalue3 = app.tvalue3;
                data.capture_t3 = app.capture_t3;
                data.X_HO_position = app.X_HO_position;
                data.capture_X_HO = app.capture_X_HO;
                data.Y_HO_position = app.Y_HO_position;
                data.capture_Y_HO = app.capture_Y_HO;
                data.Z_HO_position = app.Z_HO_position;
                data.capture_Z_HO = app.capture_Z_HO;
                data.XHO = app.XHO;
                data.YHO = app.YHO;
                data.ZHO = app.ZHO;
                data.tvalue7 = app.tvalue7;
                data.capture_t7 = app.capture_t7;
                data.WhereIsToe = app.WhereIsToe;
                data.X_TO_position = app.X_TO_position;
                data.capture_X_TO = app.capture_X_TO;
                data.Y_TO_position = app.Y_TO_position;
                data.capture_Y_TO = app.capture_Y_TO;
                data.Z_TO_position = app.Z_TO_position;
                data.capture_Z_TO = app.capture_Z_TO;
                data.XTO = app.XTO;
                data.YTO = app.YTO;
                data.ZTO = app.ZTO;
                data.tvalue1 = app.tvalue1;
                data.capture_t1 = app.capture_t1;
                data.X_MTL_position = app.X_MTL_position;
                data.capture_X_MTL = app.capture_X_MTL;
                data.Y_MTL_position = app.Y_MTL_position;
                data.capture_Y_MTL = app.capture_Y_MTL;
                data.Z_MTL_position = app.Z_MTL_position;
                data.capture_Z_MTL = app.capture_Z_MTL;
                data.XMTL = app.XMTL;
                data.YMTL = app.YMTL;
                data.ZMTL = app.ZMTL;
                data.tvalue2 = app.tvalue2;
                data.capture_t2 = app.capture_t2;
                data.strlg = app.strlg;
                data.strdur = app.strdur;
                data.SwingDur = app.SwingDur;
                data.StanceDur = app.StanceDur;
                data.HDdur = app.HDdur;
                data.StepDur = app.StepDur;
                data.StepSize = app.StepSize;
                data.TimeGait = app.TimeGait;
                data.ZGait = app.ZGait;
                data.tEMG = app.tEMG;
                data.Voltage = app.Voltage;
                data.colnameEMG = app.colnameEMG;
                data.SpreadV = app.SpreadV;
                data.Freq = app.Freq;
                data.fEMG = app.fEMG;
                data.envelope = app.envelope;
                data.SensorValues = app.SensorValues;
                data.fSensorValues = app.fSensorValues;
                data.tSensor = app.tSensor;
                data.Senvelope = app.Senvelope;
                data.colnameSensor = app.colnameSensor;
                data.SFreq = app.SFreq;
                data.P1 = app.P1;
                data.N1 = app.N1;
                data.colx = app.colx;
                data.coly = app.coly;
                data.colz = app.colz;
                data.colxy = app.colxy;
                data.colvx = app.colvx;
                data.colvy = app.colvy;
                data.colvxy = app.colvxy;
                data.colax = app.colax;
                data.colay = app.colay;
                data.colaxy = app.colaxy;
                data.colvw = app.colvw;
                data.colaw = app.colaw;
                data.n = app.n;
                data.n4 = app.n4;
                data.n6 = app.n6;
                data.n29 = app.n29;
                data.n30 = app.n30;
                data.min_dx = app.min_dx;
                data.max_dx = app.max_dx;
                data.mean_dx = app.mean_dx;
                data.median_dx = app.median_dx;
                data.mode_dx = app.mode_dx;
                data.min_dy = app.min_dy;
                data.max_dy = app.max_dy;
                data.mean_dy = app.mean_dy;
                data.median_dy = app.median_dy;
                data.mode_dy = app.mode_dy;
                data.min_dxy = app.min_dxy;
                data.max_dxy = app.max_dxy;
                data.mean_dxy = app.mean_dxy;
                data.median_dxy = app.median_dxy;
                data.mode_dxy = app.mode_dxy;
                data.sum_dx = app.sum_dx;
                data.sum_dy = app.sum_dy;
                data.sum_dxy = app.sum_dxy;
                data.min_vx = app.min_vx;
                data.max_vx = app.max_vx;
                data.mean_vx = app.mean_vx;
                data.median_vx = app.median_vx;
                data.mode_vx = app.mode_vx;
                data.min_vy = app.min_vy;
                data.max_vy = app.max_vy;
                data.mean_vy = app.mean_vy;
                data.median_vy = app.median_vy;
                data.mode_vy = app.mode_vy;
                data.min_vxy = app.min_vxy;
                data.max_vxy = app.max_vxy;
                data.mean_vxy = app.mean_vxy;
                data.median_vxy = app.median_vxy;
                data.mode_vxy = app.mode_vxy;
                data.min_ax = app.min_ax;
                data.max_ax = app.max_ax;
                data.mean_ax = app.mean_ax;
                data.median_ax = app.median_ax;
                data.mode_ax = app.mode_ax;
                data.min_ay = app.min_ay;
                data.max_ay = app.max_ay;
                data.mean_ay = app.mean_ay;
                data.median_ay = app.median_ay;
                data.mode_ay = app.mode_ay;
                data.min_axy = app.min_axy;
                data.max_axy = app.max_axy;
                data.mean_axy = app.mean_axy;
                data.median_axy = app.median_axy;
                data.mode_axy = app.mode_axy;
                data.min_angle = app.min_angle;
                data.max_angle = app.max_angle;
                data.mean_angle = app.mean_angle;
                data.median_angle = app.median_angle;
                data.mode_angle = app.mode_angle;
                data.min_vw = app.min_vw;
                data.max_vw = app.max_vw;
                data.mean_vw = app.mean_vw;
                data.median_vw = app.median_vw;
                data.mode_vw = app.mode_vw;
                data.min_aw = app.min_aw;
                data.max_aw = app.max_aw;
                data.mean_aw = app.mean_aw;
                data.median_aw = app.median_aw;
                data.mode_aw = app.mode_aw;
                data.MultiplyingFactor1 = app.MultiplyingFactor1;


                save(fullfile(pth, fnm), '-struct', 'data');
                clear data
            end
        end

        % Menu selected function: GIFMenu
        function GIFMenuSelected(app, event)
            %% switch to the animation tab
            app.TabGroup.SelectedTab = app.AnimationTab;

            GIFname = 'Animation.gif';

            lines = cell(size((app.XAnim{app.e(1)}), 1), size(app.e, 2));

            cla(app.UIAxes12,'reset')
            cmap = get(app.UIAxes12,'defaultAxesColorOrder');

            % plot all segments
            axis(app.UIAxes12, 'auto')
            hold(app.UIAxes12, 'on')

            for k=1:size(app.e, 2)
                lines(:, k) = num2cell(plot3(app.UIAxes12, app.XAnim{app.e(k)}', app.YAnim{app.e(k)}', app.Z{app.e(k)}', ...
                    'Color', cmap(k, :), 'Marker', app.Mtype, "MarkerEdgeColor",app.MarkerEdgeColor, ...
                    "MarkerFaceColor", app.MarkerFaceColor, "MarkerSize", app.Msize, "LineWidth", app.LineThickness));
            end
            app.UIAxes12.DataAspectRatio = [1 1 1];
            Axes1_12Settings(app)

            % ylim(app.UIAxes12,[(-app.dist.*1.5), (app.dist*1.5)]);
            updateview(app)

            %end
            hold(app.UIAxes12, 'off')
            axis(app.UIAxes12, 'manual')

            for i = 2:size(lines, 1)
                for l = lines(i, :)
                    l{1}.Visible = 0; %#ok<FXSET>
                end
            end

            for i = 2:size(lines, 1)
                pause(app.TimeInterval)
                for l = lines(i-1, :)
                    l{1}.Visible = 0; %#ok<FXSET>
                end
                for l = lines(i, :)
                    l{1}.Visible = 1; %#ok<FXSET>
                end
                % capture frame
                frame = getframe(app.UIAxes12);
                im = frame2im(frame);
                [imind,cm] = rgb2ind(im,256);
                if i == 1
                    imwrite(imind,cm,GIFname,'gif', 'Loopcount',inf);
                else
                    imwrite(imind,cm,GIFname,'gif','DelayTime', app.AnimationSpeed, 'WriteMode','append');
                end
            end

            % The length of the pause determines the fluidity and the animation speed (user defined)
            as = app.TimeintervalEditField.Value;
            pause(as);
            drawnow
            frame = getframe(app.UIAxes12);
            writeVideo(video, frame);
        end

        % Menu selected function: csvMenu
        function csvMenuSelected(app, event)
            app.format = '.csv';
            Export(app)
        end

        % Menu selected function: xlsxMenu
        function xlsxMenuSelected(app, event)
            app.format = '.xlsx';
            Export(app)
        end

        % Menu selected function: xlsMenu
        function xlsMenuSelected(app, event)
            app.format = '.xls';
            Export(app)
        end

        % Menu selected function: Element1with3pointsMenu
        function Element1with3pointsMenuSelected(app, event)
            FictiveElement1(app)
        end

        % Menu selected function: Elements1and2Menu
        function Elements1and2MenuSelected(app, event)
            FictiveElement1(app)
            FictiveElement2(app)

            app.ElementName = ["Fictive element 1";"Fictive element 2"];
            % Update Element Table
            UpdateElementTable(app)

            % Update
            updateplot(app);
            UpdateTable(app);
            UpdateAnimStep(app);
        end

        % Menu selected function: Element2with3pointsMenu
        function Element2with3pointsMenuSelected(app, event)
            FictiveElement2(app)
        end

        % Button pushed function: SpeedButton
        function SpeedButtonPushed(app, event)
            % Clean all plots
            CleanKinematicPlots(app)
            if numel(app.dX) >=1
                % Plot title et al., variables
                app.K_title = 'Speed';
                app.K_time = app.T{app.e}(2:end);
                app.K_colname = app.colname{app.e}(1:end,app.idxPOI);

                % Situations defined by user
                if app.DropDownView.Value == "X"
                    % x-speed
                    app.A_kine = app.VX{app.e}(1:end,app.idxPOI);
                    app.B_kine = [app.VelocityStat{app.e,1}(1:end,app.idxPOI); app.VelocityStat{app.e,2}(1:end,app.idxPOI); app.VelocityStat{app.e,3}(1:end,app.idxPOI); app.VelocityStat{app.e,4}(1:end,app.idxPOI); app.VelocityStat{app.e,5}(1:end,app.idxPOI)];
                    PlotKinematics(app)

                elseif app.DropDownView.Value == "Y"
                    % y-speed
                    app.A_kine = app.VY{app.e}(1:end,app.idxPOI);
                    app.B_kine = [app.VelocityStat{app.e,6}(1:end,app.idxPOI); app.VelocityStat{app.e,7}(1:end,app.idxPOI); app.VelocityStat{app.e,8}(1:end,app.idxPOI); app.VelocityStat{app.e,9}(1:end,app.idxPOI); app.VelocityStat{app.e,10}(1:end,app.idxPOI)];
                    PlotKinematics(app)

                elseif app.DropDownView.Value == 'Z'
                    if app.Arb_Z == 0 % if the Z matrix has real values
                        % z-speed
                        app.A_kine  = app.VZ{app.e}(1:end,app.idxPOI);
                        app.B_kine = [app.VelocityStat{app.e,11}(1:end,app.idxPOI); app.VelocityStat{app.e,12}(1:end,app.idxPOI); app.VelocityStat{app.e,13}(1:end,app.idxPOI); app.VelocityStat{app.e,14}(1:end,app.idxPOI); app.VelocityStat{app.e,15}(1:end,app.idxPOI)];
                        PlotKinematics(app)
                    else
                        msgbox ('No real Z series in this recording')
                    end

                elseif app.DropDownView.Value == "XY"
                    % XY-speed
                    app.A_kine  = app.VXY{app.e}(1:end,app.idxPOI);
                    app.B_kine = [app.VelocityStat{app.e,16}(1:end,app.idxPOI); app.VelocityStat{app.e,17}(1:end,app.idxPOI); app.VelocityStat{app.e,18}(1:end,app.idxPOI); app.VelocityStat{app.e,19}(1:end,app.idxPOI); app.VelocityStat{app.e,20}(1:end,app.idxPOI)];
                    PlotKinematics(app)

                elseif app.DropDownView.Value == "XZ"
                    if app.Arb_Z == 0 % if the Z matrix has real values
                        % XZ-speed
                        app.A_kine  = app.VXZ{app.e}(1:end,app.idxPOI);
                        app.B_kine = [app.VelocityStat{app.e,21}(1:end,app.idxPOI); app.VelocityStat{app.e,22}(1:end,app.idxPOI); app.VelocityStat{app.e,23}(1:end,app.idxPOI); app.VelocityStat{app.e,24}(1:end,app.idxPOI); app.VelocityStat{app.e,25}(1:end,app.idxPOI)];
                        PlotKinematics(app)
                    else
                        msgbox ('No real Z series in this recording')
                    end
                elseif app.DropDownView.Value == "YZ"
                    if app.Arb_Z == 0 % if the Z matrix has real values
                        % YZ-speed
                        app.A_kine  = app.VYZ{app.e}(1:end,app.idxPOI);
                        app.B_kine = [app.VelocityStat{app.e,26}(1:end,app.idxPOI); app.VelocityStat{app.e,27}(1:end,app.idxPOI); app.VelocityStat{app.e,28}(1:end,app.idxPOI); app.VelocityStat{app.e,29}(1:end,app.idxPOI); app.VelocityStat{app.e,30}(1:end,app.idxPOI)];
                        PlotKinematics(app)
                    else

                    end
                elseif app.DropDownView.Value == "XYZ"
                    if app.Arb_Z == 0 % if the Z matrix has real values
                        % XYZ-speed
                        app.A_kine  = app.VXYZ{app.e}(1:end,app.idxPOI);
                        app.B_kine = [app.VelocityStat{app.e,31}(1:end,app.idxPOI); app.VelocityStat{app.e,32}(1:end,app.idxPOI); app.VelocityStat{app.e,33}(1:end,app.idxPOI); app.VelocityStat{app.e,34}(1:end,app.idxPOI); app.VelocityStat{app.e,35}(1:end,app.idxPOI)];
                        PlotKinematics(app)
                    else
                        msgbox('No real Z series in this recording')
                    end
                end
            end
        end

        % Button pushed function: AccelerationButton_2
        function AccelerationButton_2Pushed(app, event)
            % Clean all plots
            CleanKinematicPlots(app)

            if numel(app.dX) >=1

                % Plot title et al., variables
                app.K_title = 'Acceleration';
                app.K_time = app.T{app.e}(3:end);
                app.K_colname = app.colname{app.e}(1:end,app.idxPOI);

                % Situations defined by user
                if app.DropDownView.Value == "X"
                    app.A_kine = app.AX{app.e}(1:end,app.idxPOI);
                    app.B_kine = [app.AccelerationStat{app.e,1}(1:end,app.idxPOI); app.AccelerationStat{app.e,2}(1:end,app.idxPOI); app.AccelerationStat{app.e,3}(1:end,app.idxPOI); app.AccelerationStat{app.e,4}(1:end,app.idxPOI); app.AccelerationStat{app.e,5}(1:end,app.idxPOI)];
                    PlotKinematics(app)

                elseif app.DropDownView.Value == "Y"
                    app.A_kine = app.AY{app.e}(1:end,app.idxPOI);
                    app.B_kine = [app.AccelerationStat{app.e,6}(1:end,app.idxPOI); app.AccelerationStat{app.e,7}(1:end,app.idxPOI); app.AccelerationStat{app.e,8}(1:end,app.idxPOI); app.AccelerationStat{app.e,9}(1:end,app.idxPOI); app.AccelerationStat{app.e,10}(1:end,app.idxPOI)];
                    PlotKinematics(app)

                elseif app.DropDownView.Value == 'Z'
                    if app.Arb_Z == 0 % if the Z matrix has real values
                        app.A_kine  = app.AZ{app.e}(1:end,app.idxPOI);
                        app.B_kine = [app.AccelerationStat{app.e,11}(1:end,app.idxPOI); app.AccelerationStat{app.e,12}(1:end,app.idxPOI); app.AccelerationStat{app.e,13}(1:end,app.idxPOI); app.AccelerationStat{app.e,14}(1:end,app.idxPOI); app.AccelerationStat{app.e,15}(1:end,app.idxPOI)];
                        PlotKinematics(app)
                    else
                        msgbox ('No real Z series in this recording')
                    end

                elseif app.DropDownView.Value == "XY"
                    app.A_kine  = app.AXY{app.e}(1:end,app.idxPOI);
                    app.B_kine = [app.AccelerationStat{app.e,16}(1:end,app.idxPOI); app.AccelerationStat{app.e,17}(1:end,app.idxPOI); app.AccelerationStat{app.e,18}(1:end,app.idxPOI); app.AccelerationStat{app.e,19}(1:end,app.idxPOI); app.AccelerationStat{app.e,20}(1:end,app.idxPOI)];
                    PlotKinematics(app)

                elseif app.DropDownView.Value == "XZ"
                    if app.Arb_Z == 0 % if the Z matrix has real values
                        app.A_kine  = app.AXZ{app.e}(1:end,app.idxPOI);
                        app.B_kine = [app.AccelerationStat{app.e,21}(1:end,app.idxPOI); app.AccelerationStat{app.e,22}(1:end,app.idxPOI); app.AccelerationStat{app.e,23}(1:end,app.idxPOI); app.AccelerationStat{app.e,24}(1:end,app.idxPOI); app.AccelerationStat{app.e,25}(1:end,app.idxPOI)];
                        PlotKinematics(app)
                    else
                        msgbox ('No real Z series in this recording')
                    end
                elseif app.DropDownView.Value == "YZ"
                    if app.Arb_Z == 0 % if the Z matrix has real values
                        app.A_kine  = app.AYZ{app.e}(1:end,app.idxPOI);
                        app.B_kine = [app.AccelerationStat{app.e,26}(1:end,app.idxPOI); app.AccelerationStat{app.e,27}(1:end,app.idxPOI); app.AccelerationStat{app.e,28}(1:end,app.idxPOI); app.AccelerationStat{app.e,29}(1:end,app.idxPOI); app.AccelerationStat{app.e,30}(1:end,app.idxPOI)];
                        PlotKinematics(app)
                    else

                    end
                elseif app.DropDownView.Value == "XYZ"
                    if app.Arb_Z == 0 % if the Z matrix has real values
                        % XYZ-speed
                        app.A_kine  = app.AXYZ{app.e}(1:end,app.idxPOI);
                        app.B_kine = [app.AccelerationStat{app.e,31}(1:end,app.idxPOI); app.AccelerationStat{app.e,32}(1:end,app.idxPOI); app.AccelerationStat{app.e,33}(1:end,app.idxPOI); app.AccelerationStat{app.e,34}(1:end,app.idxPOI); app.AccelerationStat{app.e,35}(1:end,app.idxPOI)];
                        PlotKinematics(app)
                    else
                        msgbox('No real Z series in this recording')
                    end
                end
            end
        end

        % Button pushed function: AnglevariationButton
        function AnglevariationButtonPushed(app, event)
            % Clean all plots
            CleanKinematicPlots(app)

            if numel(app.dX) >=1
                if app.nPOI{app.e} >= 3

                    % Plot title et al., variables
                    app.K_title = 'Angular variation';
                    app.K_time = app.T{app.e};
                    app.K_colname = app.colname{app.e}(:, 2:(end-1));

                    % Situations defined by user
                    if app.DropDownView.Value == "X" || app.DropDownView.Value == "Y" || app.DropDownView.Value == "Z"  || app.DropDownView.Value == "XYZ"
                        msgbox('Angles can only be viewed along the XY, XZ, or YZ axis.')

                    elseif app.DropDownView.Value == "XY"
                        app.A_kine  = app.AnglesXY{app.e}(1:end,app.idxPOI);
                        app.B_kine = [app.AngleStat{app.e,1}(1:end,app.idxPOI); app.AngleStat{app.e,2}(1:end,app.idxPOI); app.AngleStat{app.e,3}(1:end,app.idxPOI); app.AngleStat{app.e,4}(1:end,app.idxPOI); app.AngleStat{app.e,5}(1:end,app.idxPOI)];
                        PlotKinematics(app)

                    elseif app.DropDownView.Value == "XZ"
                        if app.Arb_Z == 0 % if the Z matrix has real values
                            app.A_kine  = app.AnglesXZ{app.e}(1:end,app.idxPOI);
                            app.B_kine = [app.AngleStat{app.e,6}(1:end,app.idxPOI); app.AngleStat{app.e,7}(1:end,app.idxPOI); app.AngleStat{app.e,8}(1:end,app.idxPOI); app.AngleStat{app.e,9}(1:end,app.idxPOI); app.AngleStat{app.e,10}(1:end,app.idxPOI)];
                            PlotKinematics(app)
                        else
                            msgbox ('No real Z series in this recording')
                        end

                    elseif app.DropDownView.Value == "YZ"
                        if app.Arb_Z == 0 % if the Z matrix has real values
                            app.A_kine  = app.AnglesYZ{app.e}(1:end,app.idxPOI);
                            app.B_kine = [app.AngleStat{app.e,11}(1:end,app.idxPOI); app.AngleStat{app.e,12}(1:end,app.idxPOI); app.AngleStat{app.e,13}(1:end,app.idxPOI); app.AngleStat{app.e,14}(1:end,app.idxPOI); app.AngleStat{app.e,15}(1:end,app.idxPOI)];
                            PlotKinematics(app)
                        else
                            msgbox ('No real Z series in this recording')
                        end
                    end
                else
                    msgbox('Insufficient POIs to calculate angles.')
                end
            end
        end

        % Button pushed function: AnglevelocityButton
        function AnglevelocityButtonPushed(app, event)
            % Clean all plots
            CleanKinematicPlots(app)

            if numel(app.dX) >=1
                if app.nPOI{app.e} >= 3

                    % Plot title et al., variables
                    app.K_title = 'Angular velocity';
                    app.K_time = app.T{app.e}(2:end);
                    app.K_colname = app.colname{app.e}(:, 2:(end-1));

                    % Situations defined by user
                    if app.DropDownView.Value == "X" || app.DropDownView.Value == "Y" || app.DropDownView.Value == "Z"  || app.DropDownView.Value == "XYZ"
                        msgbox('Angles can only be viewed along the XY, XZ, or YZ axis.')

                    elseif app.DropDownView.Value == "XY"
                        app.A_kine  = app.AngVeloc_XY{app.e}(1:end,app.idxPOI);
                        app.B_kine = [app.AngVelocStat{app.e,1}(1:end,app.idxPOI); app.AngVelocStat{app.e,2}(1:end,app.idxPOI); app.AngVelocStat{app.e,3}(1:end,app.idxPOI); app.AngVelocStat{app.e,4}(1:end,app.idxPOI); app.AngVelocStat{app.e,5}(1:end,app.idxPOI)];
                        PlotKinematics(app)

                    elseif app.DropDownView.Value == "XZ"
                        if app.Arb_Z == 0 % if the Z matrix has real values
                            app.A_kine  = app.AngVeloc_XZ{app.e}(1:end,app.idxPOI);
                            app.B_kine = [app.AngVelocStat{app.e,6}(1:end,app.idxPOI); app.AngVelocStat{app.e,7}(1:end,app.idxPOI); app.AngVelocStat{app.e,8}(1:end,app.idxPOI); app.AngVelocStat{app.e,9}(1:end,app.idxPOI); app.AngVelocStat{app.e,10}(1:end,app.idxPOI)];
                            PlotKinematics(app)
                        else
                            msgbox ('No real Z series in this recording')
                        end

                    elseif app.DropDownView.Value == "YZ"
                        if app.Arb_Z == 0 % if the Z matrix has real values
                            app.A_kine  = app.AngVeloc_YZ{app.e}(1:end,app.idxPOI);
                            app.B_kine = [app.AngVelocStat{app.e,11}(1:end,app.idxPOI); app.AngVelocStat{app.e,12}(1:end,app.idxPOI); app.AngVelocStat{app.e,13}(1:end,app.idxPOI); app.AngVelocStat{app.e,14}(1:end,app.idxPOI); app.AngVelocStat{app.e,15}(1:end,app.idxPOI)];
                            PlotKinematics(app)
                        else
                            msgbox ('No real Z series in this recording')
                        end
                    end
                else
                    msgbox('Insufficient POIs to calculate angular velocity')
                end
            end
        end

        % Button pushed function: AngleaccButton
        function AngleaccButtonPushed(app, event)
            % Clean all plots
            CleanKinematicPlots(app)

            if numel(app.dX) >=1
                if app.nPOI{app.e} >= 3

                    % Plot title et al., variables
                    app.K_title = 'Angular acceleration';
                    app.K_time = app.T{app.e}(3:end);
                    app.K_colname = app.colname{app.e}(:, 2:(end-1));

                    % Situations defined by user
                    if app.DropDownView.Value == "X" || app.DropDownView.Value == "Y" || app.DropDownView.Value == "Z"  || app.DropDownView.Value == "XYZ"
                        msgbox('Angles can only be viewed along the XY, XZ, or YZ axis.')

                    elseif app.DropDownView.Value == "XY"
                        app.A_kine  = app.AngAcc_XY{app.e}(1:end,app.idxPOI);
                        app.B_kine = [app.AngAccStat{app.e,1}(1:end,app.idxPOI); app.AngAccStat{app.e,2}(1:end,app.idxPOI); app.AngAccStat{app.e,3}(1:end,app.idxPOI); app.AngAccStat{app.e,4}(1:end,app.idxPOI); app.AngAccStat{app.e,5}(1:end,app.idxPOI)];
                        PlotKinematics(app)

                    elseif app.DropDownView.Value == "XZ"
                        if app.Arb_Z == 0 % if the Z matrix has real values
                            app.A_kine  = app.AngAcc_XZ{app.e}(1:end,app.idxPOI);
                            app.B_kine = [app.AngAccStat{app.e,6}(1:end,app.idxPOI); app.AngAccStat{app.e,7}(1:end,app.idxPOI); app.AngAccStat{app.e,8}(1:end,app.idxPOI); app.AngAccStat{app.e,9}(1:end,app.idxPOI); app.AngAccStat{app.e,10}(1:end,app.idxPOI)];
                            PlotKinematics(app)
                        else
                            msgbox ('No real Z series in this recording')
                        end

                    elseif app.DropDownView.Value == "YZ"
                        if app.Arb_Z == 0 % if the Z matrix has real values
                            app.A_kine  = app.AngAcc_YZ{app.e}(1:end,app.idxPOI);
                            app.B_kine = [app.AngAccStat{app.e,11}(1:end,app.idxPOI); app.AngAccStat{app.e,12}(1:end,app.idxPOI); app.AngAccStat{app.e,13}(1:end,app.idxPOI); app.AngAccStat{app.e,14}(1:end,app.idxPOI); app.AngAccStat{app.e,15}(1:end,app.idxPOI)];
                            PlotKinematics(app)
                        else
                            msgbox ('No real Z series in this recording')
                        end
                    end
                else
                    msgbox('Insufficient POIs to calculate angular acceleration')
                end
            end
        end

        % Menu selected function: BandpassMenu
        function BandpassMenuSelected(app, event)
            % % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            BandPassFilter(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnSignal(app)
        end

        % Menu selected function: HighpassMenu
        function HighpassMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            HighPassFilter(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnSignal(app)
        end

        % Menu selected function: LowpassMenu
        function LowpassMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            LowPassFilter(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnSignal(app)
        end

        % Menu selected function: NotchMenu
        function NotchMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            Notch(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnSignal(app)
        end

        % Menu selected function: MeanrectificationMenu
        function MeanrectificationMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            MeanRectification(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnSignal(app)
        end

        % Menu selected function: AbsolutevaluerectificationMenu
        function AbsolutevaluerectificationMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            AbsoluteValueRectification(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnSignal(app)
        end

        % Menu selected function: SquarerootrectificationMenu
        function SquarerootrectificationMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            SquareRootRectification(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnSignal(app)
        end

        % Menu selected function: HalfwaverectificationMenu
        function HalfwaverectificationMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            HalfwaveRectification(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnSignal(app)
        end

        % Menu selected function: RevertMenu_10
        function RevertMenu_10Selected(app, event)
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab
            if selectedTab == app.CoordinatesTab % Check if the selected tab is CoordinatesTab
                Revert(app)
            elseif selectedTab == app.EphyTab % Check if the selected tab is EMGTab
                app.fEMG = app.Voltage_old;
                app.Voltage = app.Voltage_old;
                app.tEMG = app.tEMG_old;
                plotfEMG(app); % refresh plot
                UpdateEMGTable(app);
            elseif selectedTab == app.SensorTab % Check if the selected tab is SensorTab
                app.fSensorValues = app.SensorValues_old;
                app.SensorValues = app.SensorValues_old;
                app.tSensor = app.tSensor_old;
                plotfSensor(app); % refresh plot
                UpdateSensorTable(app);
            end
        end

        % Menu selected function: LowpassMenu_2
        function LowpassMenu_2Selected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            LowPassEnvelope(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnEnvelope(app)
        end

        % Menu selected function: MovingaverageMenu
        function MovingaverageMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            MovingAverageEnvelope(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnEnvelope(app)
        end

        % Menu selected function: LowpassandmovingaverageMenu
        function LowpassandmovingaverageMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            LowPassMovingAverageEnvelope(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnEnvelope(app)
        end

        % Menu selected function: RootmeansquareMenu
        function RootmeansquareMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            RMSEnvelope(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnEnvelope(app)
        end

        % Menu selected function: HilberttransformMenu
        function HilberttransformMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Process the app.signal and app.SignalFreq through the
            % function
            HilbertEnvelope(app)

            % send the filtered data through the ReturnSignal function for
            % re-alocation of the data to the proper source
            ReturnEnvelope(app)
        end

        % Menu selected function: ResampleMenu
        function ResampleMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Resample
            % Create a dialogue box
            % Define the labels for the input fields in the dialog box.
            prompt = {'Desired sampling rate'};

            % Define the title for the dialog box.
            dlgtitle = 'Set parameters';

            % Define the size of the dialog box.
            dims = [1 45];

            % Define the default values for the input fields.
            definput = {'100'};

            % Display the dialog box and wait for the user to input values.
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)
                return; % Stop execution

            else
                % collect the new sampling rate from user input
                fs_new = abs(str2double(answer(1)));

                % Original sampling frequency for MMS
                fs_org = round(app.SignalFreq); % Hz

                % Resample
                RSS = resample(app.Signal, fs_new, fs_org);
                app.Signal = RSS;

                % Compute the time vector for the resampled signal
                app.tSignal = linspace(0, (length(app.Signal)-1)/fs_new, length(app.Signal))';

                % update the sampling rate display
                app.SamplingDataRate.Value = fs_new;
            end

            % Identify the working tab
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            % Check if the selected tab is the "CoordinatesTab, EMGTab or SensorTab"
            if selectedTab == app.CoordinatesTab % Check if the selected tab is CoordinatesTab
                bkpData(app)
                m = app.nPOI{app.e}; % number of POI
                app.X{app.e} = app.Signal(1:end, 1:m);
                app.Y{app.e} = app.Signal(1:end, (m+1):(2*m));
                app.Z{app.e} = app.Signal(1:end, (2*m+1):end);
                app.T{app.e} = app.tSignal;

                % Update
                updateplot(app);
                UpdateTable (app);
                UpdateAnimStep(app);

            elseif selectedTab == app.EphyTab % Check if the selected tab is EMGTab
                app.fEMG = app.Signal;
                app.Voltage = app.Signal;
                app.tEMG = app.tSignal;
                plotfEMG(app); % refresh plot
                UpdateEMGTable(app);

                % reset the scalling sliders
                app.TimescalefactorSlider.Value = 1;
                app.AmplitudescalefactorSlider.Value = 1;

                % update the sampling rate field
                app.SamplingDataRate.Value = fs_new;

            elseif selectedTab == app.SensorTab % Check if the selected tab is SensorTab
                app.fSensorValues = app.Signal;
                app.SensorValues = app.signal;
                app.tSensor = app.tSignal;
                plotfSensor(app); % refresh plot
                UpdateSensorTable(app);

                % reset the scalling sliders
                app.TimescalefactorSlider_2.Value = 1;
                app.AmplitudescalefactorSlider_2.Value = 1;

                % update the sampling rate field
                app.SensorSamplingRate.Value = fs_new;
            end
        end

        % Menu selected function: FilteredEphytraceMenu
        function FilteredEphytraceMenuSelected(app, event)
            % Define default input equation
            default_eqn = 'sin(2*pi*25*t) + 0.5*sin(2*pi*30*t) + 0.2*sin(2*pi*35*t)'; % Signal with frequencies at 25, 30, and 35 Hz

            % Create input dialogue box
            prompt = {'Enter equation:'};
            dlg_title = 'Input Equation';
            num_lines = 1;
            default_ans = {default_eqn};
            answer = inputdlg(prompt, dlg_title, num_lines, default_ans);

            %% switch to the EMG tab
            app.TabGroup.SelectedTab = app.EphyTab;

            %% Arbitrary values to replace fEMG
            app.Freq = 3000; % Sampling rate (Hz)
            duration = 1; % Duration of signal (s)
            t = linspace(0, duration, app.Freq*duration); % Time vector
            app.tEMG = t';
            app.Voltage = eval(answer{1})'; % desired signal
            app.colnameEMG = "Fictive muscle 1";

            % Fill table
            app.UITable16.Data = [app.tEMG, app.Voltage];
            app.UITable16.ColumnName = ["Time",app.colnameEMG];

            % send data to the function that spread values on Y
            app.transport = app.Voltage;
            SpreadOnY(app); % app function
            app.SpreadV = app.retour;

            app.fEMG = app.Voltage;

            % Plot spreaded EMG
            cla(app.UIAxesEMG); cla(app.UIAxesEMG,'reset');
            plot (app.UIAxesEMG, app.tEMG, app.SpreadV)
            title(app.UIAxesEMG, 'Original EMG signal');
            xlabel(app.UIAxesEMG, 'Time');
            ylabel(app.UIAxesEMG, 'Voltage');
            legend (app.UIAxesEMG, app.colnameEMG);

            app.SamplingDataRate.Value = app.Freq; % display the sampling rate
        end

        % Menu selected function: svgMenu
        function svgMenuSelected(app, event)
            msgbox('This will be included in the next update')
        end

        % Menu selected function: ResetvaluesMenu
        function ResetvaluesMenuSelected(app, event)
            app.T = {};
            app.X = {};
            app.Y = {};
            app.Z = {};
            app.e = [];
            app.te = 0;
            app.XStep = {};
            app.YStep = {};
            app.ZStep = {};
            app.XAnim = {};
            app.YAnim = {};
            app.YAnim = {};
            app.ZAnim = {};
            app.ElementName = {};
            app.colname = {};
            app.name = [];
            app.dX = [];
            app.dY = [];
            app.dZ = [];
            app.dXY = [];
            app.dXYZ = [];
            app.VX = [];
            app.VY = [];
            app.VZ = [];
            app.VXY = [];
            app.VXYZ = [];
            app.AX = [];
            app.AY = [];
            app.AZ = [];
            app.AXY = [];
            app.AXYZ = [];
            app.AnglesXY = [];
            app.AnglesXZ = [];
            app.AnglesYZ = [];
            app.AngleStat = [];
            app.AngVeloc_XY = [];
            app.AngVeloc_XZ = [];
            app.AngVeloc_YZ = [];
            app.AngVelocStat = [];
            app.AngAcc_XY = [];
            app.AngAcc_XZ = [];
            app.AngAcc_YZ = [];
            app.AngAccStat = [];
            app.DistanceStat = [];
            app.VelocityStat = [];
            app.AccelerationStat = [];
            app.IntColname = [];
            app.nPOI = [];
            app.RecNumber = [];
            app.zPosition = [];
            app.HeelstrikeColor = [];
            app.HeeloffColor = [];
            app.ToeoffColor = [];
            app.MaxtoeliftColor = [];
            app.capX = [];
            app.capY = [];
            app.capZ = [];
            app.capT = [];
            app.Xposition = [];
            app.Yposition = [];
            app.Zposition = [];
            app.tvalue = [];
            app.CalcGait = [];
            app.WhereIsHeel = [];
            app.X_HS_position = [];
            app.capture_X_HS = [];
            app.Y_HS_position = [];
            app.capture_Y_HS = [];
            app.Z_HS_position = [];
            app.capture_Z_HS = [];
            app.XHS = [];
            app.YHS = [];
            app.ZHS = [];
            app.tvalue3 = [];
            app.capture_t3 = [];
            app.X_HO_position = [];
            app.capture_X_HO = [];
            app.Y_HO_position = [];
            app.capture_Y_HO = [];
            app.Z_HO_position = [];
            app.capture_Z_HO = [];
            app.XHO = [];
            app.YHO = [];
            app.ZHO = [];
            app.tvalue7 = [];
            app.capture_t7 = [];
            app.WhereIsToe = [];
            app.X_TO_position = [];
            app.capture_X_TO = [];
            app.Y_TO_position = [];
            app.capture_Y_TO = [];
            app.Z_TO_position = [];
            app.capture_Z_TO = [];
            app.XTO = [];
            app.YTO = [];
            app.ZTO = [];
            app.tvalue1 = [];
            app.capture_t1 = [];
            app.X_MTL_position = [];
            app.capture_X_MTL = [];
            app.Y_MTL_position = [];
            app.capture_Y_MTL = [];
            app.Z_MTL_position = [];
            app.capture_Z_MTL = [];
            app.XMTL = [];
            app.YMTL = [];
            app.ZMTL = [];
            app.capture_t2 = [];
            app.strlg = [];
            app.strdur = [];
            app.SwingDur = [];
            app.StanceDur = [];
            app.HDdur = [];
            app.StepDur = [];
            app.StepSize = [];
            app.TimeGait = [];
            app.ZGait = [];
            app.tEMG = [];
            app.Voltage = [];
            app.colnameEMG = [];
            app.SpreadV = [];
            app.Freq = [];
            app.fEMG = [];
            app.envelope = [];
            app.SensorValues = [];
            app.fSensorValues = [];
            app.tSensor = [];
            app.Senvelope = [];
            app.colnameSensor = [];
            app.P1 = [];
            app.N1 = [];
            app.colx = [];
            app.coly = [];
            app.colz = [];
            app.colxy = [];
            app.colvx = [];
            app.colvy = [];
            app.colvxy = [];
            app.colax = [];
            app.colay = [];
            app.colaxy = [];
            app.colvw = [];
            app.colaw = [];
            app.n = [];
            app.n4 = 0;
            app.n6 = 0;
            app.n30 = [];
            app.min_dx = [];
            app.max_dx = [];
            app.mean_dx = [];
            app.median_dx = [];
            app.mode_dx = [];
            app.min_dy = [];
            app.max_dy = [];
            app.mean_dy = [];
            app.median_dy = [];
            app.mode_dy = [];
            app.min_dxy = [];
            app.max_dxy = [];
            app.mean_dxy = [];
            app.median_dxy = [];
            app.mode_dxy = [];
            app.sum_dx = [];
            app.sum_dy = [];
            app.sum_dxy = [];
            app.min_vx = [];
            app.max_vx = [];
            app.mean_vx = [];
            app.median_vx = [];
            app.mode_vx = [];
            app.min_vy = [];
            app.max_vy = [];
            app.mean_vy = [];
            app.median_vy = [];
            app.mode_vy = [];
            app.min_vxy = [];
            app.max_vxy = [];
            app.mean_vxy = [];
            app.median_vxy = [];
            app.mode_vxy = [];
            app.min_ax = [];
            app.max_ax = [];
            app.mean_ax = [];
            app.median_ax = [];
            app.mode_ax = [];
            app.min_ay = [];
            app.max_ay = [];
            app.mean_ay = [];
            app.median_ay = [];
            app.mode_ay = [];
            app.min_axy = [];
            app.max_axy = [];
            app.mean_axy = [];
            app.median_axy = [];
            app.mode_axy = [];
            app.min_angle = [];
            app.max_angle = [];
            app.mean_angle = [];
            app.median_angle = [];
            app.mode_angle = [];
            app.min_vw = [];
            app.max_vw = [];
            app.mean_vw = [];
            app.median_vw = [];
            app.mode_vw = [];
            app.min_aw = [];
            app.max_aw = [];
            app.mean_aw = [];
            app.median_aw = [];
            app.mode_aw = [];
            app.MultiplyingFactor1 = [];

            % clear plots
            cla(app.UIAxes);
            cla(app.UIAxes2);
            cla(app.UIAxes3);
            cla(app.UIAxes4);
            cla(app.UIAxes5);
            cla(app.UIAxesEMG);
            cla(app.UIAxesSensor);
            cla(app.UIAxes12);
            cla(app.UIAxes14);
            cla(app.UIAxes13);

            % clean tables
            app.UITableElement.Data = [];
            app.UITableElement_2.Data = [];
            app.UITable1.Data = [];
            app.UITableData.Data = [];
            app.UITableStat.Data = [];
            app.UITableAUC.Data = [];
            app.UITableAUC_2.Data = [];
            app.UITable16.Data = [];
            app.UITableSensor.Data = [];
            app.UITableCCC.Data = [];
            app.UITableGait.Data = [];
        end

        % Button pushed function: EdistanceButton
        function EdistanceButtonPushed(app, event)
            cla(app.UIAxes14); % clear uiAxes
            cla(app.UIAxes14,'reset'); % reset uiaxes

            % Select the correlation data
            SelectForCorrelationX(app);
            SelectForCorrelationY(app);

            % If necessary resample them
            Resample(app)

            % Calculate Euclidean distance between each point of the curves
            euclidean_dist = sqrt(sum((app.corry - app.corrx).^2, 2))/app.RStime(end);
            euclidean_dist_coef = sum(euclidean_dist)/app.RStime(end);

            % Plot E-distance
            plot(app.UIAxes14, app.RStime, euclidean_dist);
            xlabel(app.UIAxes14, 'time');
            ylabel(app.UIAxes14, 'Euclidean distance');

            % Fill the UITableCCC
            % fetch columnane etc.
            CorrTable(app);

            % fetch data values
            data = {app.CorrTbl1, app.CorrTbl2, 'NaN', 'NaN', 'NaN', euclidean_dist_coef, 'NaN','NaN','NaN','NaN', 'NaN', 'NaN'};

            c = app.UITableCCC.Data;
            app.UITableCCC.Data = [c;data];

        end

        % Button pushed function: CosinesimilarityButton
        function CosinesimilarityButtonPushed(app, event)
            cla(app.UIAxes14); % clear uiAxes
            cla(app.UIAxes14,'reset'); % reset uiaxes

            % Select the correlation data
            SelectForCorrelationX(app);
            SelectForCorrelationY(app);

            % If necessary resample them
            Resample(app)

            % Calculate inner product using the trapezoidal rule
            integrand = app.corrx .* app.corry;
            integral_approx = trapz(app.RStime, integrand);
            integral_approx = integral_approx / sqrt(trapz(app.RStime, app.corrx .* app.corrx));
            integral_approx = integral_approx / sqrt(trapz(app.RStime, app.corry .* app.corry));

            % take the arc cosine of the inner product = cosine similarity
            CS = acos(integral_approx)/pi*180;

            % Fill the UITableCCC
            % fetch columnane
            CorrTable(app)

            % fetch data values
            data = {app.CorrTbl1, app.CorrTbl2, 'NaN', 'NaN', 'NaN', 'NAN', integral_approx, CS, 'NaN', 'NaN', 'NaN', 'NaN'};

            c = app.UITableCCC.Data;
            app.UITableCCC.Data = [c;data];

            % Plot Inner product
            plot(app.UIAxes14, app.RStime, integrand);
            xlabel(app.UIAxes14, 'time');
            ylabel(app.UIAxes14, 'Integrand');
            title(app.UIAxes14, 'Inner product')

        end

        % Button pushed function: DTWButton
        function DTWButtonPushed(app, event)
            cla(app.UIAxes14); % clear uiAxes
            cla(app.UIAxes14,'reset'); % reset uiaxes

            % Select the correlation data
            SelectForCorrelationX(app);
            SelectForCorrelationY(app);

            % Dynamic time wrapping works on no-resampled traces
            % Prompt the user to select a window size and stride
            prompt = {'Enter the window size:', 'Enter the stride:'};
            dlgtitle = 'DTW parameters';
            dims = [1 35];
            definput = {'100', '80'};
            answer = inputdlg(prompt, dlgtitle, dims, definput);
            win_size = str2double(answer{1});
            stride = str2double(answer{2});

            % Calculate the DTW distance using the sliding window approach
            dist = 0;
            for i = 1:stride:length(app.corrx)-win_size+1
                corrx_win = app.corrx(i:i+win_size-1);
                corry_win = app.corry(i:i+win_size-1);
                dist = dist + dtw(corrx_win, corry_win);
            end
            DTW = dist/length(app.RStime);


            % Fill the UITableCCC
            % fetch columnane etc.
            CorrTable(app);

            % fetch data values
            data = {app.CorrTbl1, app.CorrTbl2, 'NaN', 'NaN', 'NaN', 'NaN', 'NaN','NaN', DTW, 'Nan', 'NaN', 'NaN'};

            c = app.UITableCCC.Data;
            app.UITableCCC.Data = [c;data];
        end

        % Menu selected function: SensorsignalsMenu
        function SensorsignalsMenuSelected(app, event)
            app.file = [];

            % Browse
            [app.file, path] = uigetfile('*.csv;*.txt;*.xls;*.xlsx');
            if isequal(app.file,0)
                % User clicked the "Cancel" button
                return
            else
                % Set the WindowStyle to "normal" to keep the app to the front
                app.MotionAnalyserUIFigure.WindowStyle = 'normal';

                % readtable
                Table = readtable((fullfile(path, app.file)));
                header = Table.Properties.VariableNames; % extract column names
                data = Table{:,:}; % transform the numerical data table into matrix

                % Set the app window as the current figure to prevent the app from going to the back
                figure(app.MotionAnalyserUIFigure);

                % select data
                app.tSensor = data(:,1); % time, all values of column 1
                app.SensorValues = data (:,2:end); % sensor values, all values of column 2
                app.colnameSensor = header(1, 2:end); % all sensor names without "time"

                % Remove zeros and NaN values that will create problems for fourier transform
                A = [app.tSensor,app.SensorValues];
                nanRows = any(isnan(A), 2);
                zeroRows = any(A==0, 2);
                badRows = nanRows | zeroRows;
                A(badRows, :) = [];
                app.SensorValues = A(:,2:end);
                app.fSensorValues = app.SensorValues; % copy the sensorvalues in fsensorvalues for later filtering
                app.tSensor = A(:,1);
                app.tSensor_old = app.tSensor;

                %% switch to the Sensor tab
                app.TabGroup.SelectedTab = app.SensorTab;

                % Fill table
                UpdateSensorTable(app)

                % Determine the sampling rate
                app.SFreq = 1/(mean(diff(app.tSensor))); % mean sampling rate
                app.SensorSamplingRate.Value = app.SFreq; % display the sampling rate

                % Plot
                plotfSensor(app)
            end
        end

        % Menu selected function: TemporalresolutionMenu_2
        function TemporalresolutionMenu_2Selected(app, event)
            % Identify which tab is used
            IdentifyTab(app)

            % Modify the temporal resolution
            ChangeTemporalResolution(app)

            % Return modified time signal
            ReturnSignal(app)
        end

        % Value changed function: AmplitudescalefactorSlider_2
        function AmplitudescalefactorSlider_2ValueChanged(app, event)
            AmplitudeSlider(app)
        end

        % Value changed function: EditField_3
        function EditField_3ValueChanged(app, event)
            clear pos
            pos = app.AmplitudescalefactorSlider_2.Value;

            %% set the max value of the slider as the value of the field
            max_value = app.EditField_3.Value;
            min_value = 1;
            app.AmplitudescalefactorSlider_2.Limits = [min_value max_value];

            % return the slider to the value
            if pos < max_value
                app.AmplitudescalefactorSlider_2.Value = pos;
            else
                app.AmplitudescalefactorSlider_2.Value = 1;
            end
        end

        % Value changed function: EditField_4
        function EditField_4ValueChanged(app, event)
            clear pos
            pos = app.TimescalefactorSlider_2.Value;

            %% set the max value of the slider as the value of the field
            max_value = app.EditField_4.Value;
            min_value = 1;
            app.TimescalefactorSlider_2.Limits = [min_value max_value];

            % return the slider to the value
            if pos < max_value
                app.TimescalefactorSlider_2.Value = pos;
            else
                app.TimescalefactorSlider_2.Value = 1;
            end

        end

        % Value changed function: TimescalefactorSlider_2
        function TimescalefactorSlider_2ValueChanged(app, event)
            TimeSlider(app)
        end

        % Value changed function: PlotSensorDropDown
        function PlotSensorDropDownValueChanged(app, event)
            value = app.PlotSensorDropDown.Value;

            % reset sliders position
            app.TimescalefactorSlider_2.Value = 1;
            app.AmplitudescalefactorSlider_2.Value = 1;
            cla(app.UIAxesSensor); cla(app.UIAxesSensor,'reset');

            switch value
                case "Filtered  sensor signal"
                    plotfSensor(app)

                case "Raw sensor signal"
                    % send data to the function that spread values on Y
                    app.transport = app.SensorValues;
                    SpreadOnY(app); % app function

                    % Plot spreaded EMG
                    cla(app.UIAxesSensor); cla(app.UIAxesSensor,'reset');
                    plot (app.UIAxesSensor, app.tSensor, app.retour)
                    title(app.UIAxesSensor, 'Original sensor signal');
                    xlabel(app.UIAxesSensor, 'Time');
                    ylabel(app.UIAxesSensor, 'Amplitude');
                    legend (app.UIAxesSensor, app.colnameSensor);

                case "Sensor signal envelope"
                    if isempty(app.Senvelope) == 1
                        msgbox ('Please create an Sensor signal envelope')
                    else
                        plotSenvelope(app)
                    end

                case "Raw/envelope"
                    if isempty(app.Senvelope) == 1
                        msgbox ('Please create an Sensor signal envelope')
                    else
                        % send data to the function that spread values on Y
                        app.transport = [app.SensorValues; app.Senvelope]; % place envelope values in the same column as EMG
                        SpreadOnY(app); % app function
                        E = app.retour;

                        % re-organise the values
                        A = size (app.SensorValues); % determine size of voltage
                        A = A (1,1); % A is the number of raws in voltage
                        E1 = E(1:A,1:end); % use A to isolate the values of voltage

                        B = A+1; % B is the next raw after the last value from the voltage
                        E2 = E(B:end,1:end); % use B to isolate the values from the envelope

                        % Plot
                        plot (app.UIAxesSensor, app.tSensor, E1, 'Color', 'b');
                        hold (app.UIAxesSensor, 'on');
                        plot (app.UIAxesSensor, app.tSensor, E2,'Color', 'r');
                        hold (app.UIAxesSensor, 'off');
                        title(app.UIAxesSensor, 'raw & envelope');
                    end

                case "FFT power spectrum"
                    % launch a dialogue box
                    SelectSOI(app)

                    E = app.fSensorValues(:,app.SelectedOptionIndex); % reference point

                    % Compute the one-sided FFT of the EMG signal
                    F = fft(E) / length(E); % FFT normalization

                    % Compute the one-sided frequency range
                    N = length(E);
                    f = (0:N/2)*(app.SFreq/N);

                    % Find the index of the frequency closest to the specified frequency
                    [~, index] = min(abs(f - app.SFreq));

                    % Calculate the amplitude at the specified frequency
                    amplitude = 2 * abs(F(index));

                    % Plot the FFT
                    plot(app.UIAxesSensor, f, 2*abs(F(1:N/2+1)));
                    xlabel(app.UIAxesSensor,'Frequency (Hz)');
                    ylabel(app.UIAxesSensor,'Amplitude');
                    title(app.UIAxesSensor,'FFT of sensor Signal');

                case "FFT spectrogram"
                    % launch a dialogue box
                    SelectSOI(app)

                    E = app.fSensorValues(:,app.SelectedOptionIndex); % reference point

                    % user defines the window and overlap
                    % Create a dialogue box
                    % Define the labels for the input fields in the dialog box.
                    prompt = {'Window (s), usually 0.1-0.01:', 'Overlap, usually 0.25-0.5:'};

                    % Define the title for the dialog box.
                    dlgtitle = 'Set parameters';

                    % Define the size of the dialog box.
                    dims = [1 45];

                    % Define the default values for the input fields.
                    definput = {'0.1', '0.5'};

                    % Display the dialog box and wait for the user to input values.
                    answer = inputdlg(prompt,dlgtitle,dims,definput);

                    % collect parameters from user input to set the window size and overlap parameters
                    win_size = abs(str2double(answer(1))); % 4th order filter is default.
                    overlap = abs(str2double(answer(2))); % Notch frequency in Hz

                    % Calculate the window and overlap sizes
                    win_samples = round(win_size * app.SFreq);
                    overlap_samples = round(overlap * win_samples);

                    % Calculate the spectrogram using MATLAB's built-in function
                    [s, f, t] = spectrogram(E, win_samples, overlap_samples, [], app.SFreq);

                    % Display the spectrogram colormap in the app.UIAxesEMG using imagesc
                    imagesc(app.UIAxesSensor, t, f, abs(s));

                    % Adjust the color map and axis labels
                    colormap(app.UIAxesSensor, 'jet');
                    xlabel(app.UIAxesSensor, 'Time (s)');
                    ylabel(app.UIAxesSensor, 'Frequency (Hz)');

                    % Display the spectrogram colormap in the app.UIAxesEMG using imagesc
                    imagesc(app.UIAxesSensor, t, f, abs(s));

                    % Adjust the color map and axis labels
                    colormap(app.UIAxesSensor, 'jet');
                    xlabel(app.UIAxesSensor, 'Time (s)');
                    ylabel(app.UIAxesSensor, 'Frequency (Hz)');

                    % Add a color bar to the right of the spectrogram
                    cb = colorbar('peer', app.UIAxesSensor);
                    ylabel(cb, 'Magnitude');
            end
            app.PlotSensorDropDown.Value = 'Choose';

        end

        % Button pushed function: CalculateButton_4
        function CalculateButton_4Pushed(app, event)
            if isempty(app.Senvelope) == 1
                msgbox ('Create a sensor signal envelope  first')
            else
                % calculate the area under the curve of the envelope
                AUC = trapz(app.tSensor, app.Senvelope);

                % display data
                clear app.UITableAUC_2.Data; % reset table
                app.UITableAUC_2.ColumnName = app.colnameSensor;
                app.UITableAUC_2.Data = AUC;
            end
        end

        % Value changed function: ElementDropDown
        function ElementDropDownValueChanged(app, event)
            % Select the element according to the dropdown item
            [~, idx] = ismember(app.ElementDropDown.Value, app.ElementName);
            app.e = idx;

            % define dropdown menu items based on POI names
            app.SingleCurveKinematic.Items = app.colname{app.e}(:,1:end);
        end

        % Menu selected function: TestanglesMenu
        function TestanglesMenuSelected(app, event)

            %
            % segments at 180 degrees
            t = linspace(0, 1, 5); % time array
            x1 = t;
            y1 = zeros(size(t)); % first horizontal line segment
            x2 = t;
            y2 = ones(size(t));
            x3 = t;
            y3 = -1*ones(size(t));

            %segments at 90 and 135 degrees
            x4 = x1+1;
            y4 = y3-1;
            x5 = x1;
            y5 = y3-2;

            x = [x1;x2;x3;x4;x5];
            y = [y1;y2;y3;y4;y5];

            % define array number
            app.e=1;

            % copy values in a cell array using e to identify the element
            app.T{app.e} = t';
            app.X{app.e} = x';
            app.Y{app.e} = y';
            app.name{app.e} = ["Point1", "Point2", "Point3", "Point4"];
            app.colname{app.e} = ["Point1", "Point2", "Point3", "Point4"];
            app.nPOI{app.e} = 3;
            CreateZseries(app) % function to create arbitrary Z series

            % Increment element name
            app.ElementName = "Test angles";

            % Update Element Table
            UpdateElementTable(app)

            % Update
            updateplot(app);
            UpdateTable(app);
            UpdateAnimStep(app);
        end

        % Menu selected function: TestspeedaccMenu
        function TestspeedaccMenuSelected(app, event)
            % Create an arraies
            t = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
            x1 = [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40];
            x2=x1;
            y1 = [0, 4, 12, 24, 40, 60, 84, 112, 144, 180, 220, 264, 312, 364, 420, 480, 544, 612, 684, 760, 840];
            y2 = [0, 4, 12, 24, 40, 60, 84, 112, 144, 195, 220, 264, 312, 364, 420, 480, 544, 612, 684, 760, 840];

            x= [x1;x2];
            y=[y1;y2];


            % define array number
            app.e=1;

            % copy values in a cell array using e to identify the element
            app.T{app.e} = t';
            app.X{app.e} = x';
            app.Y{app.e} = y';
            app.name{app.e} = ["Point1", "Point2", "Point3"];
            app.colname{app.e} = ["Point1", "Point2", "Point3"];
            app.nPOI{app.e} = 1;
            CreateZseries(app) % function to create arbitrary Z series

            % Increment element name
            app.ElementName = ["Test distance, speed, acceleration"];

            % Update Element Table
            UpdateElementTable(app)

            % Update
            updateplot(app);
            UpdateTable(app);
            UpdateAnimStep(app);
        end

        % Menu selected function: ImportXYZMenu
        function ImportXYZMenuSelected(app, event)
            clear Table
            app.file= [];

            % Browse and copy values
            [app.file, path] = uigetfile('*.csv;*.txt;*.xls;*.xlsx');

            if isequal(app.file,0)
                % User clicked the "Cancel" button
                return
            else
                % Set the WindowStyle to "normal" to keep the app to the front
                app.MotionAnalyserUIFigure.WindowStyle = 'normal';

                Table = readtable((fullfile(path, app.file))); % import file into table
                header = Table.Properties.VariableNames; % extract column names
                namePOI = header (:,2:end);

                % Set the app window as the current figure to prevent the app
                % from going to the back
                figure(app.MotionAnalyserUIFigure);

                % extract values from the table
                xyz = Table{:,:}; % extra xy
                t = xyz(:,1); % extract time
                xyz = xyz(:,2:end); % remove the time column
                x = xyz(:,1:3:end); % all values from 1st column, every third column to the end
                y = xyz(:,2:3:end); % all values from the 2nd column, every third column to the end
                z = xyz(:,3:3:end); % all values from the 3rd column, every third column

                % Increment element number
                h = app.te(end) + 1;
                app.te = [app.e, h];
                app.e = app.te(end);

                % copy values in a cell array using e to identify the element
                app.T{app.e} = t;
                app.X{app.e} = x;
                app.Y{app.e} = y;
                app.Z{app.e} = z;
                app.name{app.e} = namePOI;
                app.colname{app.e} = app.name{app.e}(:,1:3:end);
                app.nPOI{app.e} = size (x,2); % count the number of column on X = number of POI

                % Increment element name
                a = cellstr(app.file);
                app.ElementName = [app.ElementName; a];


                % Update Element Table
                UpdateElementTable(app)

                % switch to the coordinate tab
                app.TabGroup.SelectedTab = app.CoordinatesTab;

                % Update
                updateplot(app);
                UpdateTable(app);
                UpdateAnimStep(app);

                % remove values from the table to free memory
                clear Table;
            end
        end

        % Button pushed function: RecalculateButton
        function RecalculateButtonPushed(app, event)
            if isempty(app.AbsoluteValue) || isempty(app.AngleUnit)
                prompt = {'Use absolute values for speed and acceleration (y/n)','Angle unit in Degrees or Radians (D/R)'};
                dlgtitle = 'Calculation settings';
                dims = [1 45];
                definput = {'y','D'};
                answer = inputdlg(prompt,dlgtitle,dims,definput);

                if isempty(answer)
                    app.AbsoluteValue = "Yes";
                    app.AngleUnit = 'Degrees';
                else
                    if char(answer(1)) == 'n'
                        app.AbsoluteValue = "No";
                    else
                        app.AbsoluteValue = "Yes";
                    end

                    if char(answer(2)) == 'R'
                        app.AngleUnit = 'Radians';
                    else
                        app.AngleUnit = 'Degrees';
                    end
                end
            else
            end

            % Select the element according to the dropdown item
            [~, idx] = ismember(app.ElementDropDown.Value, app.ElementName);
            app.e = idx;

            % Analyse kinematic properties
            AnalyseKinematic (app)
        end

        % Menu selected function: SegmentationdensityMenu
        function SegmentationdensityMenuSelected(app, event)
            prompt = {'Reduce segment density by (Integer)'};
            dlgtitle = 'Segmentation density';
            dims = [1 45];
            definput = {'1'};
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            app.SegDens = abs(str2double(answer(1)));
            updateplot(app)
        end

        % Menu selected function: TestgaitMenu
        function TestgaitMenuSelected(app, event)

            % Create matrices of (x, y) coordinates for each foot position
            toe1 = [2;3;4;5;6;7;9];
            toe2 = toe1+7;
            xtoe = [toe1; toe2(2:end)];

            heel1 = [1;2;3;4.1;5.5;6.5;8];
            heel2 = heel1+7;
            xheel = [heel1; heel2(2:end)];

            knee1 = [0.5;2.5;4;5;7;7.5;7.5];
            knee2 = knee1+7;
            xknee = [knee1;knee2(2:end)];

            ytoe = [1.1;1;1;1;1;1.5;1.1];
            ytoe = [ytoe;ytoe(2:end)];
            yheel= [1;1;1;1.08;1.5;2;1];
            yheel = [yheel;yheel(2:end)];
            yknee = [3;3;3;3;3;3.5;3];
            yknee = [yknee;yknee(2:end)];

            % Right step
            app.e=1;
            % copy values in a cell array using e to identify the element
            app.T{app.e} = [1;2;3;4;5;6;7;8;9;10;11;12;13];
            app.X{app.e} = [xtoe, xheel, xknee];
            app.Y{app.e} = [ytoe, yheel, yknee];
            app.Z{app.e} = [1 1 1 1 1 1 1 1 1 1 1 1 1;  1 1 1 1 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1 1 1 1 1]';

            app.name{app.e} = ["Toe", "Heel", "Knee"];
            app.colname{app.e} = ["Toe", "Heel", "Knee"];
            app.nPOI{app.e} = 3;

            % Left step
            app.e=2;
            % copy values in a cell array using e to identify the element
            app.T{app.e} = [5;6;7;8;9;10;11;12;13;14;15;16;17];
            app.X{app.e} = [xtoe+7, xheel+7, xknee+7];
            app.Y{app.e} = [ytoe, yheel, yknee];
            app.Z{app.e} = [2 2 2 2 2 2 2 2 2 2 2 2 2;  2 2 2 2 2 2 2 2 2 2 2 2 2; 2 2 2 2 2 2 2 2 2 2 2 2 2]';
            app.name{app.e} = ["Toe", "Heel", "Knee"];
            app.colname{app.e} = ["Toe", "Heel", "Knee"];
            app.nPOI{app.e} = 3;


            % Increment element name
            app.ElementName = ["Right stride";"Left stride"];

            % Update Element Table
            UpdateElementTable(app)

            % Update
            updateplot(app);
            UpdateTable(app);
            UpdateAnimStep(app);
        end

        % Button pushed function: TLAButton
        function TLAButtonPushed(app, event)
            if isempty (app.e) || numel(app.FLA) < app.e
                msgbox('insuffisent data for plotting')
            else
                cla(app.UIAxes13); cla(app.UIAxes13,'reset') % reset uiaxes%

                % Plot for each elment
                for k=1:numel(app.tvalue2)
                    plot (app.UIAxes13, app.tvalue2{k}, abs(app.FLA{k}));
                    hold (app.UIAxes13, 'on')
                end
                hold (app.UIAxes13, 'on')
                % Stem for each elment
                for k=1:numel(app.tvalue2)
                    stem (app.UIAxes13, app.tvalue2{k}, abs(app.FLA{k}));
                    hold (app.UIAxes13, 'on')
                end
                hold (app.UIAxes13, 'off')

                xlabel(app.UIAxes13, 'Time'); ylabel(app.UIAxes13, 'Foot-lift amplitude');

                % adjust ylim at 15% of the distance
                a = ylim(app.UIAxes13);
                ydistance = max(a)-min(a);
                inf = min(a)-(ydistance*0.15);
                sup = max (a)+(ydistance*0.15);
                ylim (app.UIAxes13,[inf,sup]);
            end

        end

        % Menu selected function: InterpolateMenu
        function InterpolateMenuSelected(app, event)
            % Process the data throught the IdentifyTab function
            IdentifyTab(app)

            % Interpolate
            % Create a dialogue box
            % Define the labels for the input fields in the dialog box.
            prompt = {'Desired sampling rate'};

            % Define the title for the dialog box.
            dlgtitle = 'Set parameters';

            % Define the size of the dialog box.
            dims = [1 45];

            % Define the default values for the input fields.
            definput = {'100'};

            % Display the dialog box and wait for the user to input values.
            answer = inputdlg(prompt,dlgtitle,dims,definput);

            if isempty(answer)
                return

            else
                % Collect the new sampling rate from user input
                fs_new = abs(str2double(answer(1)));

                % Original sampling frequency for MMS
                fs_org = round(app.SignalFreq); % Hz

                % Compute the time vector for the original signal
                t_org = linspace(0, (length(app.Signal)-1)/fs_org, length(app.Signal))';

                % Compute the time vector for the interpolated signal
                t_new = linspace(0, t_org(end), round((length(app.Signal)-1)*fs_new/fs_org)+1)';

                % Interpolate the signal
                interp_signal = interp1(t_org, app.Signal, t_new, 'linear');

                % Update the signal and time vectors
                app.Signal = interp_signal;
                app.tSignal = t_new;

                % Update the sampling rate display
                app.SamplingDataRate.Value = fs_new;
            end

            % Identify the working tab
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

            % Check if the selected tab is the "CoordinatesTab, EMGTab or SensorTab"
            if selectedTab == app.CoordinatesTab % Check if the selected tab is CoordinatesTab
                bkpData(app)
                m = app.nPOI{app.e}; % number of POI
                app.X{app.e} = app.Signal(1:end, 1:m);
                app.Y{app.e} = app.Signal(1:end, (m+1):(2*m));
                app.Z{app.e} = app.Signal(1:end, (2*m+1):end);
                app.T{app.e} = app.tSignal;

                % Update
                updateplot(app);
                UpdateTable (app);
                UpdateAnimStep(app);

            elseif selectedTab == app.EphyTab % Check if the selected tab is EMGTab
                app.fEMG = app.Signal;
                app.Voltage = app.Signal;
                app.tEMG = app.tSignal;
                plotfEMG(app); % refresh plot
                UpdateEMGTable(app);

                % reset the scalling sliders
                app.TimescalefactorSlider.Value = 1;
                app.AmplitudescalefactorSlider.Value = 1;

                % update the sampling rate field
                app.SamplingDataRate.Value = fs_new;

            elseif selectedTab == app.SensorTab % Check if the selected tab is SensorTab
                app.fSensorValues = app.Signal;
                app.SensorValues = app.Signal;
                app.tSensor = app.tSignal;
                plotfSensor(app); % refresh plot
                UpdateSensorTable(app);

                % reset the scalling sliders
                app.TimescalefactorSlider_2.Value = 1;
                app.AmplitudescalefactorSlider_2.Value = 1;

                % update the sampling rate field
                app.SensorSamplingRate.Value = fs_new;
            end
        end

        % Value changed function: PlotSelector
        function PlotSelectorValueChanged(app, event)
            value = app.PlotSelector.Value;

            if numel(app.X) >=1
                switch value
                    case "Trajectory for a single POI"
                        % launch a dialogue box
                        SelectPOI(app)
                        % collect the number that corresponds to the selection
                        app.SinglePOI = app.SelectedOptionIndex; % user choice
                        app.ChoosePlot = "Trajectory for a single POI";
                    case "Trajectory"
                        app.ChoosePlot = "Trajectory";
                    case "Stick diagram"
                        app.ChoosePlot = "Stick diagram";
                    case "Trajectory with stick diagram"
                        app.ChoosePlot = "Trajectory with stick diagram";
                    case "Heat map"                        
                            if app.nPOI{app.e(1)} > 1
                                % launch a dialogue box
                                SelectPOI(app)
                                % collect the number that corresponds to the selection
                                app.SinglePOI = app.SelectedOptionIndex; % user choice
                            else
                                app.SinglePOI = 1;
                            end                        
                        app.ChoosePlot = "Heat map";
                end
                updateplot(app);
            else
                msgbox('No coordinates available')
            end
        end

        % Menu selected function: RemovecolumnMenu
        function RemovecolumnMenuSelected(app, event)
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab
            
            % check number of elements if the tab is coordinate at stop the           
            if selectedTab == app.CoordinatesTab
            NumberElement = CheckNumberElementSelected(app); 
            return
            end

            bkpData(app)

            % Get the screen size
            screensize = get(groot, 'Screensize');

            % Define the position and size of the dialog box
            width = 350;
            height = 200;
            left = screensize(3)/2 - width/2;
            bottom = screensize(4)/2 - height/2;
            position = [left, bottom, width, height];

            if selectedTab == app.CoordinatesTab
                options = app.colname{app.e};
            elseif selectedTab == app.EphyTab
                options = app.colnameEMG;
            elseif selectedTab == app.SensorTab
                options = app.colnameSensor;
            else
                msgbox ('Select the Coordinates or E-phys or Sensor tab to use this function')
                return
            end

            % Create a dialog box with two dropdown menus
            dlg = dialog('Name', 'Remove', 'Position', position);
            uicontrol(dlg, 'Style', 'text', 'String', 'Please select the dataset to remove', 'Position', [50, 150, 250, 25]);
            Selection =  uicontrol(dlg, 'Style', 'popupmenu', 'String', options, 'Position', [50, 125, 250, 25]);

            % Add a push button to the dialog box
            uicontrol(dlg, 'Style', 'pushbutton', 'String', 'OK', 'Position', [50, 85, 250, 25], 'Callback', 'uiresume(gcbf)');

            % Wait for the user to close the dialog box
            uiwait(dlg);

            % Get the index of the selected options from the dropdown menus
            ColumnNB = get(Selection, 'Value');

            % Close the dialog box
            delete(dlg);

            if selectedTab == app.CoordinatesTab
                % check number of elements                
                    % remove the relevant column
                    app.X{app.e}(:, ColumnNB) = [];
                    app.Y{app.e}(:, ColumnNB) = [];
                    app.Z{app.e}(:, ColumnNB) = [];
                    app.colname{app.e}(:, ColumnNB) = [];
                    % Update
                    updateplot(app);
                    UpdateTable(app);
                    UpdateAnimStep(app);                  
            elseif selectedTab == app.EphyTab
                % remove the relevant column
                app.fEMG(:, ColumnNB) = [];
                app.Voltage(:, ColumnNB) = [];
                app.colnameEMG(:, ColumnNB) = [];
                % Update
                plotfEMG(app);
                UpdateEMGTable(app);
            elseif selectedTab == app.SensorTab
                % remove the relevant column
                app.fSensorValues(:, ColumnNB) = [];
                app.SensorValues(:, ColumnNB) = [];
                app.colnameSensor(:, ColumnNB) = [];
                % Update
                plotfSensor(app); % refresh plot
                UpdateSensorTable(app);
            else
            end
        end

        % Menu selected function: RevertMenu_11
        function RevertMenu_11Selected(app, event)
            Revert(app)
        end

        % Menu selected function: ScaleMenu
        function ScaleMenuSelected(app, event)
            selectedTab = app.TabGroup.SelectedTab; % Get the currently selected tab

                if selectedTab == app.CoordinatesTab
                    if numel(app.X) >=1
                        dlgtitle = 'Scale';
                        prompt = {'Define the scaling factor'};
                        dims = [1 40];
                        definput = {'1'};
                        answer = inputdlg(prompt,dlgtitle,dims,definput);

                        if isempty(answer)
                        else
                            % backup original data
                            bkpData(app)

                            % apply scaling factor
                            factor = str2double(answer);
                            for k=1:size(app.e, 2)
                                app.X{app.e(k)} = app.X{app.e(k)}.*factor;
                                app.Y{app.e(k)} = app.Y{app.e(k)}.*factor;
                                app.Z{app.e(k)} = app.Z{app.e(k)}.*factor;
                            end

                            % update
                            updateplot(app);
                            UpdateTable(app);
                            UpdateAnimStep(app);
                        end
                    else
                        msgbox('No coordinates available')
                    end
                else
                    msgbox('This function is only available for preprosessing of coordinates')
                end            
        end

        % Value changed function: PositionSliderEMG
        function PositionSliderEMGValueChanged(app, event)
            hold(app.UIAxesEMG, 'on')
            % set the max value of the slider as the length of app.xStep
            max_value = length(app.Voltage);
            min_value = 1;
            app.PositionSliderEMG.Limits = [min_value max_value];

            %extract the value of the slider
            value = round(app.PositionSliderEMG.Value);

            app.transport = app.Voltage;
            SpreadOnY(app); % app function
            app.SpreadV = app.retour;

            % plot the limb at the value returned by the slider
            app.n3 = value;
            delete(app.P4);
            app.P4 = plot (app.UIAxesEMG, app.tEMG(app.n3), app.retour(app.n3,:), 'Color', 'k', 'Marker', app.Mtype, "MarkerEdgeColor",app.MarkerEdgeColor, ...
                "MarkerFaceColor", app.MarkerFaceColor, "MarkerSize", app.Msize, "LineWidth", app.LineThickness);

            % display the position number
            app.PositionFieldEMG.Value = app.n3;
            hold(app.UIAxesEMG, 'off')
            legend(app.UIAxesEMG,'off')
        end

        % Button pushed function: PrevButton_5
        function PrevButton_5Pushed(app, event)
            hold(app.UIAxesEMG, 'on')

            % condition related to the recoding number
            app.n3 = app.n3-1;

            if app.n3 < 1
                app.n3 = 1;
                msgbox('This was the first position');
                pause (2);
                close;
            else
                app.transport = app.Voltage;
                SpreadOnY(app); % app function
                app.SpreadV = app.retour;

                % plot the limb at the value returned by the slider
                delete(app.P4);
                app.P4 = plot (app.UIAxesEMG, app.tEMG(app.n3), app.retour(app.n3,:), 'Color', 'k', 'Marker', app.Mtype, "MarkerEdgeColor",app.MarkerEdgeColor, ...
                    "MarkerFaceColor", app.MarkerFaceColor, "MarkerSize", app.Msize, "LineWidth", app.LineThickness);
            end
            hold(app.UIAxesEMG, 'off')
            % display the position number
            app.PositionFieldEMG.Value = app.n3;

            % set the slider position
            app.PositionSliderEMG.Value = app.n3;
        end

        % Button pushed function: NextButton_5
        function NextButton_5Pushed(app, event)
            hold(app.UIAxesEMG, 'on')
            % condition related to the recoding number
            app.n3 = app.n3+1;
            lim = length(app.Voltage);

            if app.n3 >= lim+1
                app.n3 = lim;
                msgbox('This was the last position');
                pause (2);
                close;
            else
                app.transport = app.Voltage;
                SpreadOnY(app); % app function
                app.SpreadV = app.retour;

                % plot the limb at the value returned by the slider
                delete(app.P4);
                app.P4 = plot (app.UIAxesEMG, app.tEMG(app.n3), app.retour(app.n3,:), 'Color', 'k', 'Marker', app.Mtype, "MarkerEdgeColor",app.MarkerEdgeColor, ...
                    "MarkerFaceColor", app.MarkerFaceColor, "MarkerSize", app.Msize, "LineWidth", app.LineThickness);
            end
            hold(app.UIAxesEMG, 'off')
            % display the position number
            app.PositionFieldEMG.Value = app.n3;

            % set the slider position
            app.PositionSliderEMG.Value = app.n3;
        end

        % Value changed function: PositionSliderSensor
        function PositionSliderSensorValueChanged(app, event)
            hold(app.UIAxesSensor, 'on')
            % set the max value of the slider as the length of app.xStep
            max_value = length(app.SensorValues);
            min_value = 1;
            app.PositionSliderSensor.Limits = [min_value max_value];

            %extract the value of the slider
            value = round(app.PositionSliderSensor.Value);

            app.transport = app.SensorValues;
            SpreadOnY(app); % app function
            app.SpreadV = app.retour;

            % plot the limb at the value returned by the slider
            app.n7 = value;
            delete(app.P5);
            app.P5 = plot (app.UIAxesSensor, app.tSensor(app.n7), app.retour(app.n7,:), 'Color', 'k', 'Marker', app.Mtype, "MarkerEdgeColor",app.MarkerEdgeColor, ...
                "MarkerFaceColor", app.MarkerFaceColor, "MarkerSize", app.Msize, "LineWidth", app.LineThickness);

            % display the position number
            app.PositionFieldSensor.Value = app.n7;
            hold(app.UIAxesSensor, 'off');
            legend(app.UIAxesSensor,'off');

        end

        % Button pushed function: PrevButton_Sensor
        function PrevButton_SensorPushed(app, event)
            hold(app.UIAxesSensor, 'on')

            % condition related to the recoding number
            app.n7 = app.n7-1;

            if app.n7 < 1
                app.n7 = 1;
                msgbox('This was the first position');
                pause (2);
                close;
            else
                app.transport = app.SensorValues;
                SpreadOnY(app); % app function
                app.SpreadV = app.retour;

                % plot the limb at the value returned by the slider
                delete(app.P5);
                app.P5 = plot (app.UIAxesSensor, app.tSensor(app.n7), app.retour(app.n7,:), 'Color', 'k', 'Marker', app.Mtype, "MarkerEdgeColor",app.MarkerEdgeColor, ...
                    "MarkerFaceColor", app.MarkerFaceColor, "MarkerSize", app.Msize, "LineWidth", app.LineThickness);
            end
            hold(app.UIAxesSensor, 'off')
            % display the position number
            app.PositionFieldSensor.Value = app.n7;

            % set the slider position
            app.PositionSliderSensor.Value = app.n7;
        end

        % Button pushed function: NextButton_Sensor
        function NextButton_SensorPushed(app, event)
            hold(app.UIAxesSensor, 'on')
            % condition related to the recoding number
            app.n7 = app.n7+1;
            lim = length(app.SensorValues);

            if app.n7 >= lim+1
                app.n7 = lim;
                msgbox('This was the last position');
                pause (2);
                close;
            else
                app.transport = app.SensorValues;
                SpreadOnY(app); % app function
                app.SpreadV = app.retour;

                % plot the limb at the value returned by the slider
                delete(app.P5);
                app.P5 = plot (app.UIAxesSensor, app.tSensor(app.n7), app.retour(app.n7,:), 'Color', 'k', 'Marker', app.Mtype, "MarkerEdgeColor",app.MarkerEdgeColor, ...
                    "MarkerFaceColor", app.MarkerFaceColor, "MarkerSize", app.Msize, "LineWidth", app.LineThickness);
            end
            hold(app.UIAxesSensor, 'off')
            % display the position number
            app.PositionFieldSensor.Value = app.n7;

            % set the slider position
            app.PositionSliderSensor.Value = app.n7;
        end

        % Value changed function: CorrCoeff
        function CorrCoeffValueChanged(app, event)
            value = app.CorrCoeff.Value;
            cla(app.UIAxes14); % clear uiAxes
            cla(app.UIAxes14,'reset'); % reset uiaxes

            % Select the correlation data
            SelectForCorrelationX(app);
            SelectForCorrelationY(app);

            % If necessary resample them
            Resample(app)

            switch value

                case "Pearson coef."
                    % Calculate pearson correlation coefficient
                    pearson_coeff = corrcoef(app.corrx, app.corry);
                    pearson_coeff = pearson_coeff(1,2);

                    % Fill the UITableCCC
                    % fetch columnane etc.
                    CorrTable(app);

                    % fetch data values
                    data = {app.CorrTbl1, app.CorrTbl2, 'NaN', 'NaN', 'NaN', 'NaN', 'NaN','NaN', 'NaN', pearson_coeff, 'NaN', 'NaN'};

                    c = app.UITableCCC.Data;
                    app.UITableCCC.Data = [c;data];

                case "Spearman coef."

                    % Calculate spearman correlation coefficient
                    spearman_coeff = corr(app.corrx, app.corry,'Type','Spearman');

                    % Fill the UITableCCC fetch columnane etc.
                    CorrTable(app);

                    % fetch data values
                    data = {app.CorrTbl1, app.CorrTbl2, 'NaN', 'NaN', 'NaN', 'NaN', 'NaN','NaN', 'NaN', 'NaN', spearman_coeff, 'NaN'};

                    c = app.UITableCCC.Data;
                    app.UITableCCC.Data = [c;data];

                case "Kendall coef."

                    % Calculate kendal correlation coefficient
                    kendall_coeff = corr(app.corrx, app.corry,'Type','Kendall');

                    % Fill the UITableCCC
                    % fetch columnane etc.
                    CorrTable(app);

                    % fetch data values
                    data = {app.CorrTbl1, app.CorrTbl2, 'NaN', 'NaN', 'NaN', 'NaN', 'NaN','NaN', 'NaN', 'NaN', 'NaN', kendall_coeff};

                    c = app.UITableCCC.Data;
                    app.UITableCCC.Data = [c;data];
            end

        end

        % Menu selected function: RenameMenu
        function RenameMenuSelected(app, event)

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create MotionAnalyserUIFigure and hide until all components are created
            app.MotionAnalyserUIFigure = uifigure('Visible', 'off');
            app.MotionAnalyserUIFigure.Position = [1 1 1178 682];
            app.MotionAnalyserUIFigure.Name = 'MotionAnalyser';
            app.MotionAnalyserUIFigure.Icon = 'icon.png';

            % Create ImportMenu
            app.ImportMenu = uimenu(app.MotionAnalyserUIFigure);
            app.ImportMenu.MenuSelectedFcn = createCallbackFcn(app, @ImportMenuSelected, true);
            app.ImportMenu.Tooltip = {'Import data'};
            app.ImportMenu.Text = ' Import ';

            % Create ImportXYMenu
            app.ImportXYMenu = uimenu(app.ImportMenu);
            app.ImportXYMenu.MenuSelectedFcn = createCallbackFcn(app, @ImportXYMenuSelected, true);
            app.ImportXYMenu.Tooltip = {'Import a file that contains x and y coordinates for the different elements studied.'};
            app.ImportXYMenu.Text = 'Import XY';

            % Create ImportfromDeepLabCutMenu
            app.ImportfromDeepLabCutMenu = uimenu(app.ImportMenu);
            app.ImportfromDeepLabCutMenu.MenuSelectedFcn = createCallbackFcn(app, @ImportfromDeepLabCutMenuSelected, true);
            app.ImportfromDeepLabCutMenu.Tooltip = {'Import a file resulting from DeepLabCut tracking.'};
            app.ImportfromDeepLabCutMenu.Text = 'Import from DeepLabCut';

            % Create ImportXandYKinoveaMenu
            app.ImportXandYKinoveaMenu = uimenu(app.ImportMenu);
            app.ImportXandYKinoveaMenu.MenuSelectedFcn = createCallbackFcn(app, @ImportXandYKinoveaMenuSelected, true);
            app.ImportXandYKinoveaMenu.Tooltip = {'Import two files: one containing x-coordinates and the other containing y-coordinates. This feature is typically used for importing tracking data from Kinovea.'};
            app.ImportXandYKinoveaMenu.Text = 'Import X and Y (Kinovea)';

            % Create ImportXYZMenu
            app.ImportXYZMenu = uimenu(app.ImportMenu);
            app.ImportXYZMenu.MenuSelectedFcn = createCallbackFcn(app, @ImportXYZMenuSelected, true);
            app.ImportXYZMenu.Tooltip = {'Import a file that contains x-, y- and z-coordinates for the different elements studied.'};
            app.ImportXYZMenu.Text = 'Import XYZ';

            % Create StitchfileMenu
            app.StitchfileMenu = uimenu(app.ImportMenu);
            app.StitchfileMenu.Tooltip = {'Import a file containing xy-coordinates to be stitched with the previously imported file'};
            app.StitchfileMenu.Text = 'Stitch file';

            % Create UseXYfileMenu
            app.UseXYfileMenu = uimenu(app.StitchfileMenu);
            app.UseXYfileMenu.MenuSelectedFcn = createCallbackFcn(app, @UseXYfileMenuSelected, true);
            app.UseXYfileMenu.Text = 'Use XY file';

            % Create UseDeepLabCutfileMenu
            app.UseDeepLabCutfileMenu = uimenu(app.StitchfileMenu);
            app.UseDeepLabCutfileMenu.Text = 'Use DeepLabCut file';

            % Create EPhystracesMenu
            app.EPhystracesMenu = uimenu(app.ImportMenu);
            app.EPhystracesMenu.MenuSelectedFcn = createCallbackFcn(app, @EPhystracesMenuSelected, true);
            app.EPhystracesMenu.Tooltip = {'Import an electrophysiology trace'};
            app.EPhystracesMenu.Text = 'E-Phys trace(s)';

            % Create SensorsignalsMenu
            app.SensorsignalsMenu = uimenu(app.ImportMenu);
            app.SensorsignalsMenu.MenuSelectedFcn = createCallbackFcn(app, @SensorsignalsMenuSelected, true);
            app.SensorsignalsMenu.Text = 'Sensor signal(s)';

            % Create ReopenamatlabfileMenu
            app.ReopenamatlabfileMenu = uimenu(app.ImportMenu);
            app.ReopenamatlabfileMenu.MenuSelectedFcn = createCallbackFcn(app, @ReopenamatlabfileMenuSelected, true);
            app.ReopenamatlabfileMenu.Tooltip = {'Import a .mat file previously saved by MotionAnalyser.'};
            app.ReopenamatlabfileMenu.Text = 'Re-open a matlab file';

            % Create ResetvaluesMenu
            app.ResetvaluesMenu = uimenu(app.ImportMenu);
            app.ResetvaluesMenu.MenuSelectedFcn = createCallbackFcn(app, @ResetvaluesMenuSelected, true);
            app.ResetvaluesMenu.Tooltip = {'Reset all imported or analysed values.'};
            app.ResetvaluesMenu.Text = 'Reset values';

            % Create LoadexamplesMenu
            app.LoadexamplesMenu = uimenu(app.ImportMenu);
            app.LoadexamplesMenu.Tooltip = {'This allows you to test MotionAnalyser with dummy data'};
            app.LoadexamplesMenu.Text = 'Load examples';

            % Create Element1with3pointsMenu
            app.Element1with3pointsMenu = uimenu(app.LoadexamplesMenu);
            app.Element1with3pointsMenu.MenuSelectedFcn = createCallbackFcn(app, @Element1with3pointsMenuSelected, true);
            app.Element1with3pointsMenu.Text = 'Element 1  with 3 points';

            % Create Element2with3pointsMenu
            app.Element2with3pointsMenu = uimenu(app.LoadexamplesMenu);
            app.Element2with3pointsMenu.MenuSelectedFcn = createCallbackFcn(app, @Element2with3pointsMenuSelected, true);
            app.Element2with3pointsMenu.Text = 'Element 2 with 3 points';

            % Create Elements1and2Menu
            app.Elements1and2Menu = uimenu(app.LoadexamplesMenu);
            app.Elements1and2Menu.MenuSelectedFcn = createCallbackFcn(app, @Elements1and2MenuSelected, true);
            app.Elements1and2Menu.Text = 'Elements 1 and 2';

            % Create FilteredEphytraceMenu
            app.FilteredEphytraceMenu = uimenu(app.LoadexamplesMenu);
            app.FilteredEphytraceMenu.MenuSelectedFcn = createCallbackFcn(app, @FilteredEphytraceMenuSelected, true);
            app.FilteredEphytraceMenu.Text = 'Filtered E-phy trace';

            % Create SensorsignalMenu
            app.SensorsignalMenu = uimenu(app.LoadexamplesMenu);
            app.SensorsignalMenu.Text = 'Sensor signal';

            % Create TestanglesMenu
            app.TestanglesMenu = uimenu(app.LoadexamplesMenu);
            app.TestanglesMenu.MenuSelectedFcn = createCallbackFcn(app, @TestanglesMenuSelected, true);
            app.TestanglesMenu.Text = 'Test angles';

            % Create TestspeedaccMenu
            app.TestspeedaccMenu = uimenu(app.LoadexamplesMenu);
            app.TestspeedaccMenu.MenuSelectedFcn = createCallbackFcn(app, @TestspeedaccMenuSelected, true);
            app.TestspeedaccMenu.Text = 'Test speed & acc';

            % Create TestgaitMenu
            app.TestgaitMenu = uimenu(app.LoadexamplesMenu);
            app.TestgaitMenu.MenuSelectedFcn = createCallbackFcn(app, @TestgaitMenuSelected, true);
            app.TestgaitMenu.Text = 'Test gait';

            % Create ExportMenu
            app.ExportMenu = uimenu(app.MotionAnalyserUIFigure);
            app.ExportMenu.Tooltip = {'Export data'};
            app.ExportMenu.Text = 'Export';

            % Create SavematfileMenu
            app.SavematfileMenu = uimenu(app.ExportMenu);
            app.SavematfileMenu.MenuSelectedFcn = createCallbackFcn(app, @SavematfileMenuSelected, true);
            app.SavematfileMenu.Tooltip = {'Import a matlab file previosuly saved with MotionAnalyser'};
            app.SavematfileMenu.Text = 'Save mat file';

            % Create ExportasMenu
            app.ExportasMenu = uimenu(app.ExportMenu);
            app.ExportasMenu.Tooltip = {'Export all values to .csv, .xlsx, .xlx files'};
            app.ExportasMenu.Text = 'Export as...';

            % Create csvMenu
            app.csvMenu = uimenu(app.ExportasMenu);
            app.csvMenu.MenuSelectedFcn = createCallbackFcn(app, @csvMenuSelected, true);
            app.csvMenu.Text = '.csv';

            % Create xlsxMenu
            app.xlsxMenu = uimenu(app.ExportasMenu);
            app.xlsxMenu.MenuSelectedFcn = createCallbackFcn(app, @xlsxMenuSelected, true);
            app.xlsxMenu.Text = '.xlsx';

            % Create xlsMenu
            app.xlsMenu = uimenu(app.ExportasMenu);
            app.xlsMenu.MenuSelectedFcn = createCallbackFcn(app, @xlsMenuSelected, true);
            app.xlsMenu.Text = '.xls';

            % Create ExportallplotsMenu
            app.ExportallplotsMenu = uimenu(app.ExportMenu);
            app.ExportallplotsMenu.Tooltip = {'Export all the plots currently displayed by MotionAnalyser'};
            app.ExportallplotsMenu.Text = 'Export all plots';

            % Create pngMenu
            app.pngMenu = uimenu(app.ExportallplotsMenu);
            app.pngMenu.MenuSelectedFcn = createCallbackFcn(app, @pngMenuSelected, true);
            app.pngMenu.Text = '.png';

            % Create svgMenu
            app.svgMenu = uimenu(app.ExportallplotsMenu);
            app.svgMenu.MenuSelectedFcn = createCallbackFcn(app, @svgMenuSelected, true);
            app.svgMenu.Text = '.svg';

            % Create AnimationMenu_2
            app.AnimationMenu_2 = uimenu(app.ExportMenu);
            app.AnimationMenu_2.Tooltip = {'Exporting animation is a slow porcess.'};
            app.AnimationMenu_2.Text = 'Animation';

            % Create AVIMenu
            app.AVIMenu = uimenu(app.AnimationMenu_2);
            app.AVIMenu.MenuSelectedFcn = createCallbackFcn(app, @AVIMenuSelected, true);
            app.AVIMenu.Text = 'AVI';

            % Create GIFMenu
            app.GIFMenu = uimenu(app.AnimationMenu_2);
            app.GIFMenu.MenuSelectedFcn = createCallbackFcn(app, @GIFMenuSelected, true);
            app.GIFMenu.Text = 'GIF';

            % Create EditMenu
            app.EditMenu = uimenu(app.MotionAnalyserUIFigure);
            app.EditMenu.Tooltip = {'Edit coordinates'};
            app.EditMenu.Text = ' Edit ';

            % Create AlignelementsMenu
            app.AlignelementsMenu = uimenu(app.EditMenu);
            app.AlignelementsMenu.Tooltip = {'This aligns different elements'};
            app.AlignelementsMenu.Text = 'Align elements';

            % Create AlignonXMenu
            app.AlignonXMenu = uimenu(app.AlignelementsMenu);
            app.AlignonXMenu.MenuSelectedFcn = createCallbackFcn(app, @AlignonXMenuSelected, true);
            app.AlignonXMenu.Text = 'Align on X';

            % Create AlignonYMenu
            app.AlignonYMenu = uimenu(app.AlignelementsMenu);
            app.AlignonYMenu.MenuSelectedFcn = createCallbackFcn(app, @AlignonYMenuSelected, true);
            app.AlignonYMenu.Text = 'Align on Y';

            % Create AlignonZMenu
            app.AlignonZMenu = uimenu(app.AlignelementsMenu);
            app.AlignonZMenu.MenuSelectedFcn = createCallbackFcn(app, @AlignonZMenuSelected, true);
            app.AlignonZMenu.Text = 'Align on Z';

            % Create AlignonXYMenu
            app.AlignonXYMenu = uimenu(app.AlignelementsMenu);
            app.AlignonXYMenu.MenuSelectedFcn = createCallbackFcn(app, @AlignonXYMenuSelected, true);
            app.AlignonXYMenu.Text = 'Align on XY';

            % Create AlignonXYZMenu
            app.AlignonXYZMenu = uimenu(app.AlignelementsMenu);
            app.AlignonXYZMenu.MenuSelectedFcn = createCallbackFcn(app, @AlignonXYZMenuSelected, true);
            app.AlignonXYZMenu.Text = 'Align on XYZ';

            % Create InvertMenu
            app.InvertMenu = uimenu(app.EditMenu);
            app.InvertMenu.Tooltip = {'This inverts the coordinates'};
            app.InvertMenu.Text = 'Invert';

            % Create InvertXMenu_3
            app.InvertXMenu_3 = uimenu(app.InvertMenu);
            app.InvertXMenu_3.MenuSelectedFcn = createCallbackFcn(app, @InvertXMenu_3Selected, true);
            app.InvertXMenu_3.Text = 'Invert X';

            % Create InvertYMenu_3
            app.InvertYMenu_3 = uimenu(app.InvertMenu);
            app.InvertYMenu_3.MenuSelectedFcn = createCallbackFcn(app, @InvertYMenu_3Selected, true);
            app.InvertYMenu_3.Text = 'Invert Y';

            % Create InvertZMenu_2
            app.InvertZMenu_2 = uimenu(app.InvertMenu);
            app.InvertZMenu_2.MenuSelectedFcn = createCallbackFcn(app, @InvertZMenu_2Selected, true);
            app.InvertZMenu_2.Text = 'Invert Z';

            % Create RotateMenu
            app.RotateMenu = uimenu(app.EditMenu);
            app.RotateMenu.Tooltip = {'This rotates the selected element'};
            app.RotateMenu.Text = 'Rotate';

            % Create RotatetheXYplanMenu
            app.RotatetheXYplanMenu = uimenu(app.RotateMenu);
            app.RotatetheXYplanMenu.MenuSelectedFcn = createCallbackFcn(app, @RotatetheXYplanMenuSelected, true);
            app.RotatetheXYplanMenu.Text = 'Rotate the XY plan';

            % Create RotatetheXZplanMenu
            app.RotatetheXZplanMenu = uimenu(app.RotateMenu);
            app.RotatetheXZplanMenu.MenuSelectedFcn = createCallbackFcn(app, @RotatetheXZplanMenuSelected, true);
            app.RotatetheXZplanMenu.Text = 'Rotate the XZ plan';

            % Create RotatetheYZplanMenu
            app.RotatetheYZplanMenu = uimenu(app.RotateMenu);
            app.RotatetheYZplanMenu.MenuSelectedFcn = createCallbackFcn(app, @RotatetheYZplanMenuSelected, true);
            app.RotatetheYZplanMenu.Text = 'Rotate the YZ plan';

            % Create ScaleMenu
            app.ScaleMenu = uimenu(app.EditMenu);
            app.ScaleMenu.MenuSelectedFcn = createCallbackFcn(app, @ScaleMenuSelected, true);
            app.ScaleMenu.Tooltip = {'This scales the coordinates of the selected element with a user-defined value'};
            app.ScaleMenu.Text = 'Scale';

            % Create ShiftMenu
            app.ShiftMenu = uimenu(app.EditMenu);
            app.ShiftMenu.Tooltip = {'This shifts the coordinates of the selected element with a user-defined value'};
            app.ShiftMenu.Text = 'Shift';

            % Create ShiftXMenu
            app.ShiftXMenu = uimenu(app.ShiftMenu);
            app.ShiftXMenu.MenuSelectedFcn = createCallbackFcn(app, @ShiftXMenuSelected, true);
            app.ShiftXMenu.Text = 'Shift X';

            % Create ShiftYMenu
            app.ShiftYMenu = uimenu(app.ShiftMenu);
            app.ShiftYMenu.MenuSelectedFcn = createCallbackFcn(app, @ShiftYMenuSelected, true);
            app.ShiftYMenu.Text = 'Shift Y';

            % Create ShiftZMenu
            app.ShiftZMenu = uimenu(app.ShiftMenu);
            app.ShiftZMenu.MenuSelectedFcn = createCallbackFcn(app, @ShiftZMenuSelected, true);
            app.ShiftZMenu.Text = 'Shift Z';

            % Create ShiftXYZMenu
            app.ShiftXYZMenu = uimenu(app.ShiftMenu);
            app.ShiftXYZMenu.MenuSelectedFcn = createCallbackFcn(app, @ShiftXYZMenuSelected, true);
            app.ShiftXYZMenu.Text = 'Shift XYZ';

            % Create TrimMenu
            app.TrimMenu = uimenu(app.EditMenu);
            app.TrimMenu.Tooltip = {'Trim the recording by removing all values outsided the selected points'};
            app.TrimMenu.Text = 'Trim';

            % Create SelectfirstpositionMenu
            app.SelectfirstpositionMenu = uimenu(app.TrimMenu);
            app.SelectfirstpositionMenu.MenuSelectedFcn = createCallbackFcn(app, @SelectfirstpositionMenuSelected, true);
            app.SelectfirstpositionMenu.Text = 'Select first position';

            % Create SelectlastpositionMenu
            app.SelectlastpositionMenu = uimenu(app.TrimMenu);
            app.SelectlastpositionMenu.MenuSelectedFcn = createCallbackFcn(app, @SelectlastpositionMenuSelected, true);
            app.SelectlastpositionMenu.Text = 'Select last position';

            % Create TrimdatasetMenu
            app.TrimdatasetMenu = uimenu(app.TrimMenu);
            app.TrimdatasetMenu.MenuSelectedFcn = createCallbackFcn(app, @TrimdatasetMenuSelected, true);
            app.TrimdatasetMenu.Text = 'Trim data set';

            % Create ReplaceNaNbyMenu
            app.ReplaceNaNbyMenu = uimenu(app.EditMenu);
            app.ReplaceNaNbyMenu.Text = 'Replace NaN by';

            % Create LinearinterpolationMenu
            app.LinearinterpolationMenu = uimenu(app.ReplaceNaNbyMenu);
            app.LinearinterpolationMenu.MenuSelectedFcn = createCallbackFcn(app, @LinearinterpolationMenuSelected, true);
            app.LinearinterpolationMenu.Text = 'Linear interpolation';

            % Create MeanwindowMenu
            app.MeanwindowMenu = uimenu(app.ReplaceNaNbyMenu);
            app.MeanwindowMenu.MenuSelectedFcn = createCallbackFcn(app, @MeanwindowMenuSelected, true);
            app.MeanwindowMenu.Text = 'Mean window';

            % Create MedianwindowMenu
            app.MedianwindowMenu = uimenu(app.ReplaceNaNbyMenu);
            app.MedianwindowMenu.MenuSelectedFcn = createCallbackFcn(app, @MedianwindowMenuSelected, true);
            app.MedianwindowMenu.Text = 'Median window';

            % Create NearestvalueMenu
            app.NearestvalueMenu = uimenu(app.ReplaceNaNbyMenu);
            app.NearestvalueMenu.MenuSelectedFcn = createCallbackFcn(app, @NearestvalueMenuSelected, true);
            app.NearestvalueMenu.Text = 'Nearest value';

            % Create PreviousvalueMenu
            app.PreviousvalueMenu = uimenu(app.ReplaceNaNbyMenu);
            app.PreviousvalueMenu.MenuSelectedFcn = createCallbackFcn(app, @PreviousvalueMenuSelected, true);
            app.PreviousvalueMenu.Text = 'Previous value';

            % Create NextvalueMenu
            app.NextvalueMenu = uimenu(app.ReplaceNaNbyMenu);
            app.NextvalueMenu.MenuSelectedFcn = createCallbackFcn(app, @NextvalueMenuSelected, true);
            app.NextvalueMenu.Text = 'Next value';

            % Create MaxvalueMenu
            app.MaxvalueMenu = uimenu(app.ReplaceNaNbyMenu);
            app.MaxvalueMenu.MenuSelectedFcn = createCallbackFcn(app, @MaxvalueMenuSelected, true);
            app.MaxvalueMenu.Text = 'Max value';

            % Create MinvalueMenu
            app.MinvalueMenu = uimenu(app.ReplaceNaNbyMenu);
            app.MinvalueMenu.MenuSelectedFcn = createCallbackFcn(app, @MinvalueMenuSelected, true);
            app.MinvalueMenu.Text = 'Min value';

            % Create MeanvakueMenu
            app.MeanvakueMenu = uimenu(app.ReplaceNaNbyMenu);
            app.MeanvakueMenu.MenuSelectedFcn = createCallbackFcn(app, @MeanvakueMenuSelected, true);
            app.MeanvakueMenu.Text = 'Mean vakue';

            % Create ZeroMenu
            app.ZeroMenu = uimenu(app.ReplaceNaNbyMenu);
            app.ZeroMenu.MenuSelectedFcn = createCallbackFcn(app, @ZeroMenuSelected, true);
            app.ZeroMenu.Text = 'Zero';

            % Create RemovecolumnMenu
            app.RemovecolumnMenu = uimenu(app.EditMenu);
            app.RemovecolumnMenu.MenuSelectedFcn = createCallbackFcn(app, @RemovecolumnMenuSelected, true);
            app.RemovecolumnMenu.Text = 'Remove column';

            % Create RenameMenu
            app.RenameMenu = uimenu(app.EditMenu);
            app.RenameMenu.MenuSelectedFcn = createCallbackFcn(app, @RenameMenuSelected, true);
            app.RenameMenu.Text = 'Rename';

            % Create RevertMenu_11
            app.RevertMenu_11 = uimenu(app.EditMenu);
            app.RevertMenu_11.MenuSelectedFcn = createCallbackFcn(app, @RevertMenu_11Selected, true);
            app.RevertMenu_11.Text = 'Revert';

            % Create StitchMenu
            app.StitchMenu = uimenu(app.MotionAnalyserUIFigure);
            app.StitchMenu.Tooltip = {'Stitch coordinates from different files'};
            app.StitchMenu.Text = ' Stitch';

            % Create AlignstitchwithelementMenu
            app.AlignstitchwithelementMenu = uimenu(app.StitchMenu);
            app.AlignstitchwithelementMenu.MenuSelectedFcn = createCallbackFcn(app, @AlignstitchwithelementMenuSelected, true);
            app.AlignstitchwithelementMenu.Text = 'Align stitch with element';

            % Create InvertXMenu_2
            app.InvertXMenu_2 = uimenu(app.StitchMenu);
            app.InvertXMenu_2.MenuSelectedFcn = createCallbackFcn(app, @InvertXMenu_2Selected, true);
            app.InvertXMenu_2.Text = 'Invert X';

            % Create InvertYMenu_2
            app.InvertYMenu_2 = uimenu(app.StitchMenu);
            app.InvertYMenu_2.MenuSelectedFcn = createCallbackFcn(app, @InvertYMenu_2Selected, true);
            app.InvertYMenu_2.Text = 'Invert Y';

            % Create RotateStitchMenu
            app.RotateStitchMenu = uimenu(app.StitchMenu);
            app.RotateStitchMenu.MenuSelectedFcn = createCallbackFcn(app, @RotateStitchMenuSelected, true);
            app.RotateStitchMenu.Text = 'Rotate Stitch';

            % Create ShiftstitchcoordinatesMenu
            app.ShiftstitchcoordinatesMenu = uimenu(app.StitchMenu);
            app.ShiftstitchcoordinatesMenu.MenuSelectedFcn = createCallbackFcn(app, @ShiftstitchcoordinatesMenuSelected, true);
            app.ShiftstitchcoordinatesMenu.Text = 'Shift stitch coordinates';

            % Create TrimthestitchatthejunctionMenu
            app.TrimthestitchatthejunctionMenu = uimenu(app.StitchMenu);
            app.TrimthestitchatthejunctionMenu.MenuSelectedFcn = createCallbackFcn(app, @TrimthestitchatthejunctionMenuSelected, true);
            app.TrimthestitchatthejunctionMenu.Text = 'Trim the stitch at the junction';

            % Create ConcatenateMenu
            app.ConcatenateMenu = uimenu(app.StitchMenu);
            app.ConcatenateMenu.MenuSelectedFcn = createCallbackFcn(app, @ConcatenateMenuSelected, true);
            app.ConcatenateMenu.Text = 'Concatenate';

            % Create AppearanceMenu
            app.AppearanceMenu = uimenu(app.MotionAnalyserUIFigure);
            app.AppearanceMenu.Tooltip = {'Adjust plot appearance'};
            app.AppearanceMenu.Text = ' Appearance ';

            % Create AxisMenu
            app.AxisMenu = uimenu(app.AppearanceMenu);
            app.AxisMenu.Text = 'Axis';

            % Create ShowMenu_2
            app.ShowMenu_2 = uimenu(app.AxisMenu);
            app.ShowMenu_2.Text = 'Show';

            % Create AllMenu
            app.AllMenu = uimenu(app.ShowMenu_2);
            app.AllMenu.MenuSelectedFcn = createCallbackFcn(app, @AllMenuSelected, true);
            app.AllMenu.Text = 'All';

            % Create XaxisMenu
            app.XaxisMenu = uimenu(app.ShowMenu_2);
            app.XaxisMenu.MenuSelectedFcn = createCallbackFcn(app, @XaxisMenuSelected, true);
            app.XaxisMenu.Text = 'X-axis';

            % Create YaxisMenu
            app.YaxisMenu = uimenu(app.ShowMenu_2);
            app.YaxisMenu.MenuSelectedFcn = createCallbackFcn(app, @YaxisMenuSelected, true);
            app.YaxisMenu.Text = 'Y-axis';

            % Create ZaxisMenu
            app.ZaxisMenu = uimenu(app.ShowMenu_2);
            app.ZaxisMenu.MenuSelectedFcn = createCallbackFcn(app, @ZaxisMenuSelected, true);
            app.ZaxisMenu.Text = 'Z-axis';

            % Create HideMenu_2
            app.HideMenu_2 = uimenu(app.AxisMenu);
            app.HideMenu_2.Text = 'Hide';

            % Create AllMenu_2
            app.AllMenu_2 = uimenu(app.HideMenu_2);
            app.AllMenu_2.MenuSelectedFcn = createCallbackFcn(app, @AllMenu_2Selected, true);
            app.AllMenu_2.Text = 'All';

            % Create XaxisMenu_2
            app.XaxisMenu_2 = uimenu(app.HideMenu_2);
            app.XaxisMenu_2.MenuSelectedFcn = createCallbackFcn(app, @XaxisMenu_2Selected, true);
            app.XaxisMenu_2.Text = 'X-axis';

            % Create YaxisMenu_2
            app.YaxisMenu_2 = uimenu(app.HideMenu_2);
            app.YaxisMenu_2.MenuSelectedFcn = createCallbackFcn(app, @YaxisMenu_2Selected, true);
            app.YaxisMenu_2.Text = 'Y-axis';

            % Create ZaxisMenu_2
            app.ZaxisMenu_2 = uimenu(app.HideMenu_2);
            app.ZaxisMenu_2.MenuSelectedFcn = createCallbackFcn(app, @ZaxisMenu_2Selected, true);
            app.ZaxisMenu_2.Text = 'Z-axis';

            % Create StickdiagramMenu_2
            app.StickdiagramMenu_2 = uimenu(app.AppearanceMenu);
            app.StickdiagramMenu_2.Text = 'Stick diagram';

            % Create MarkersMenu_2
            app.MarkersMenu_2 = uimenu(app.StickdiagramMenu_2);
            app.MarkersMenu_2.Text = 'Markers';

            % Create ShowMenu_5
            app.ShowMenu_5 = uimenu(app.MarkersMenu_2);
            app.ShowMenu_5.MenuSelectedFcn = createCallbackFcn(app, @ShowMenuSelected, true);
            app.ShowMenu_5.Text = 'Show';

            % Create HideMenu_5
            app.HideMenu_5 = uimenu(app.MarkersMenu_2);
            app.HideMenu_5.MenuSelectedFcn = createCallbackFcn(app, @HideMenuSelected, true);
            app.HideMenu_5.Text = 'Hide';

            % Create SizeMenu_2
            app.SizeMenu_2 = uimenu(app.MarkersMenu_2);
            app.SizeMenu_2.MenuSelectedFcn = createCallbackFcn(app, @SizeMenuSelected, true);
            app.SizeMenu_2.Text = 'Size';

            % Create TypeMenu_2
            app.TypeMenu_2 = uimenu(app.MarkersMenu_2);
            app.TypeMenu_2.Text = 'Type';

            % Create CircleMenu_2
            app.CircleMenu_2 = uimenu(app.TypeMenu_2);
            app.CircleMenu_2.MenuSelectedFcn = createCallbackFcn(app, @CircleMenuSelected, true);
            app.CircleMenu_2.Text = 'Circle';

            % Create PlussignMenu_2
            app.PlussignMenu_2 = uimenu(app.TypeMenu_2);
            app.PlussignMenu_2.MenuSelectedFcn = createCallbackFcn(app, @PlussignMenuSelected, true);
            app.PlussignMenu_2.Text = 'Plus sign';

            % Create AsteriskMenu_2
            app.AsteriskMenu_2 = uimenu(app.TypeMenu_2);
            app.AsteriskMenu_2.MenuSelectedFcn = createCallbackFcn(app, @AsteriskMenuSelected, true);
            app.AsteriskMenu_2.Text = 'Asterisk';

            % Create PointMenu_2
            app.PointMenu_2 = uimenu(app.TypeMenu_2);
            app.PointMenu_2.MenuSelectedFcn = createCallbackFcn(app, @PointMenuSelected, true);
            app.PointMenu_2.Text = 'Point';

            % Create CrossMenu_2
            app.CrossMenu_2 = uimenu(app.TypeMenu_2);
            app.CrossMenu_2.MenuSelectedFcn = createCallbackFcn(app, @CrossMenuSelected, true);
            app.CrossMenu_2.Text = 'Cross';

            % Create SquareMenu_2
            app.SquareMenu_2 = uimenu(app.TypeMenu_2);
            app.SquareMenu_2.MenuSelectedFcn = createCallbackFcn(app, @SquareMenuSelected, true);
            app.SquareMenu_2.Text = 'Square';

            % Create DiamondMenu_2
            app.DiamondMenu_2 = uimenu(app.TypeMenu_2);
            app.DiamondMenu_2.MenuSelectedFcn = createCallbackFcn(app, @DiamondMenuSelected, true);
            app.DiamondMenu_2.Text = 'Diamond';

            % Create PentagramMenu_2
            app.PentagramMenu_2 = uimenu(app.TypeMenu_2);
            app.PentagramMenu_2.MenuSelectedFcn = createCallbackFcn(app, @PentagramMenuSelected, true);
            app.PentagramMenu_2.Text = 'Pentagram';

            % Create HexagramMenu_2
            app.HexagramMenu_2 = uimenu(app.TypeMenu_2);
            app.HexagramMenu_2.MenuSelectedFcn = createCallbackFcn(app, @HexagramMenuSelected, true);
            app.HexagramMenu_2.Text = 'Hexagram';

            % Create EdgecolorMenu_2
            app.EdgecolorMenu_2 = uimenu(app.MarkersMenu_2);
            app.EdgecolorMenu_2.MenuSelectedFcn = createCallbackFcn(app, @EdgecolorMenuSelected, true);
            app.EdgecolorMenu_2.Text = 'Edge color';

            % Create FillcolorMenu_2
            app.FillcolorMenu_2 = uimenu(app.MarkersMenu_2);
            app.FillcolorMenu_2.MenuSelectedFcn = createCallbackFcn(app, @FillcolorMenuSelected, true);
            app.FillcolorMenu_2.Text = 'Fill color';

            % Create LinethicknessMenu_2
            app.LinethicknessMenu_2 = uimenu(app.StickdiagramMenu_2);
            app.LinethicknessMenu_2.MenuSelectedFcn = createCallbackFcn(app, @LinethicknessMenuSelected, true);
            app.LinethicknessMenu_2.Text = 'Line thickness';

            % Create SegmentationdensityMenu
            app.SegmentationdensityMenu = uimenu(app.StickdiagramMenu_2);
            app.SegmentationdensityMenu.MenuSelectedFcn = createCallbackFcn(app, @SegmentationdensityMenuSelected, true);
            app.SegmentationdensityMenu.Text = 'Segmentation density';

            % Create SignalprocessingMenu
            app.SignalprocessingMenu = uimenu(app.MotionAnalyserUIFigure);
            app.SignalprocessingMenu.Tooltip = {'Analysis signals in different ways'};
            app.SignalprocessingMenu.Text = ' Signal processing ';

            % Create TemporalresolutionMenu_2
            app.TemporalresolutionMenu_2 = uimenu(app.SignalprocessingMenu);
            app.TemporalresolutionMenu_2.MenuSelectedFcn = createCallbackFcn(app, @TemporalresolutionMenu_2Selected, true);
            app.TemporalresolutionMenu_2.Tooltip = {'This does not resample but it set the temporal resolution. For resampling see the resampling tool in the "Signal processing menu"'};
            app.TemporalresolutionMenu_2.Text = 'Temporal resolution';

            % Create FiltersMenu
            app.FiltersMenu = uimenu(app.SignalprocessingMenu);
            app.FiltersMenu.Tooltip = {'You can apply different filters one after the other. Click "Revert" to restore the original trace.'};
            app.FiltersMenu.Text = 'Filters';

            % Create BandpassMenu
            app.BandpassMenu = uimenu(app.FiltersMenu);
            app.BandpassMenu.MenuSelectedFcn = createCallbackFcn(app, @BandpassMenuSelected, true);
            app.BandpassMenu.Text = 'Band-pass';

            % Create HighpassMenu
            app.HighpassMenu = uimenu(app.FiltersMenu);
            app.HighpassMenu.MenuSelectedFcn = createCallbackFcn(app, @HighpassMenuSelected, true);
            app.HighpassMenu.Text = 'High-pass';

            % Create LowpassMenu
            app.LowpassMenu = uimenu(app.FiltersMenu);
            app.LowpassMenu.MenuSelectedFcn = createCallbackFcn(app, @LowpassMenuSelected, true);
            app.LowpassMenu.Text = 'Low-pass';

            % Create NotchMenu
            app.NotchMenu = uimenu(app.FiltersMenu);
            app.NotchMenu.MenuSelectedFcn = createCallbackFcn(app, @NotchMenuSelected, true);
            app.NotchMenu.Text = 'Notch';

            % Create RectifyMenu
            app.RectifyMenu = uimenu(app.SignalprocessingMenu);
            app.RectifyMenu.Tooltip = {''};
            app.RectifyMenu.Text = 'Rectify';

            % Create MeanrectificationMenu
            app.MeanrectificationMenu = uimenu(app.RectifyMenu);
            app.MeanrectificationMenu.MenuSelectedFcn = createCallbackFcn(app, @MeanrectificationMenuSelected, true);
            app.MeanrectificationMenu.Text = 'Mean rectification';

            % Create AbsolutevaluerectificationMenu
            app.AbsolutevaluerectificationMenu = uimenu(app.RectifyMenu);
            app.AbsolutevaluerectificationMenu.MenuSelectedFcn = createCallbackFcn(app, @AbsolutevaluerectificationMenuSelected, true);
            app.AbsolutevaluerectificationMenu.Text = 'Absolute value rectification';

            % Create SquarerootrectificationMenu
            app.SquarerootrectificationMenu = uimenu(app.RectifyMenu);
            app.SquarerootrectificationMenu.MenuSelectedFcn = createCallbackFcn(app, @SquarerootrectificationMenuSelected, true);
            app.SquarerootrectificationMenu.Text = 'Square root rectification';

            % Create HalfwaverectificationMenu
            app.HalfwaverectificationMenu = uimenu(app.RectifyMenu);
            app.HalfwaverectificationMenu.MenuSelectedFcn = createCallbackFcn(app, @HalfwaverectificationMenuSelected, true);
            app.HalfwaverectificationMenu.Text = 'Half-wave rectification';

            % Create EnvelopeMenu
            app.EnvelopeMenu = uimenu(app.SignalprocessingMenu);
            app.EnvelopeMenu.Text = 'Envelope';

            % Create LowpassMenu_2
            app.LowpassMenu_2 = uimenu(app.EnvelopeMenu);
            app.LowpassMenu_2.MenuSelectedFcn = createCallbackFcn(app, @LowpassMenu_2Selected, true);
            app.LowpassMenu_2.Text = 'Low-pass';

            % Create MovingaverageMenu
            app.MovingaverageMenu = uimenu(app.EnvelopeMenu);
            app.MovingaverageMenu.MenuSelectedFcn = createCallbackFcn(app, @MovingaverageMenuSelected, true);
            app.MovingaverageMenu.Text = 'Moving average';

            % Create LowpassandmovingaverageMenu
            app.LowpassandmovingaverageMenu = uimenu(app.EnvelopeMenu);
            app.LowpassandmovingaverageMenu.MenuSelectedFcn = createCallbackFcn(app, @LowpassandmovingaverageMenuSelected, true);
            app.LowpassandmovingaverageMenu.Text = 'Low-pass and moving average';

            % Create RootmeansquareMenu
            app.RootmeansquareMenu = uimenu(app.EnvelopeMenu);
            app.RootmeansquareMenu.MenuSelectedFcn = createCallbackFcn(app, @RootmeansquareMenuSelected, true);
            app.RootmeansquareMenu.Text = 'Root mean square';

            % Create HilberttransformMenu
            app.HilberttransformMenu = uimenu(app.EnvelopeMenu);
            app.HilberttransformMenu.MenuSelectedFcn = createCallbackFcn(app, @HilberttransformMenuSelected, true);
            app.HilberttransformMenu.Text = 'Hilbert transform';

            % Create ResampleMenu
            app.ResampleMenu = uimenu(app.SignalprocessingMenu);
            app.ResampleMenu.MenuSelectedFcn = createCallbackFcn(app, @ResampleMenuSelected, true);
            app.ResampleMenu.Text = 'Resample';

            % Create InterpolateMenu
            app.InterpolateMenu = uimenu(app.SignalprocessingMenu);
            app.InterpolateMenu.MenuSelectedFcn = createCallbackFcn(app, @InterpolateMenuSelected, true);
            app.InterpolateMenu.Text = 'Interpolate';

            % Create RevertMenu_10
            app.RevertMenu_10 = uimenu(app.SignalprocessingMenu);
            app.RevertMenu_10.MenuSelectedFcn = createCallbackFcn(app, @RevertMenu_10Selected, true);
            app.RevertMenu_10.Text = 'Revert';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.MotionAnalyserUIFigure);
            app.TabGroup.Position = [0 2 1180 682];

            % Create CoordinatesTab
            app.CoordinatesTab = uitab(app.TabGroup);
            app.CoordinatesTab.Tooltip = {''};
            app.CoordinatesTab.Title = 'Coordinates';

            % Create UIAxes
            app.UIAxes = uiaxes(app.CoordinatesTab);
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.PlotBoxAspectRatio = [1.31872509960159 1 1];
            app.UIAxes.Position = [332 5 839 597];

            % Create UITable1
            app.UITable1 = uitable(app.CoordinatesTab);
            app.UITable1.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITable1.RowName = {};
            app.UITable1.ColumnEditable = true;
            app.UITable1.CellEditCallback = createCallbackFcn(app, @UITable1CellEdit, true);
            app.UITable1.Tooltip = {'The table is editable, so you can click on any cell to modify its value.'};
            app.UITable1.Position = [12 8 306 442];

            % Create PositionSlider
            app.PositionSlider = uislider(app.CoordinatesTab);
            app.PositionSlider.MajorTicks = [];
            app.PositionSlider.ValueChangedFcn = createCallbackFcn(app, @PositionSliderValueChanged, true);
            app.PositionSlider.MinorTicks = [];
            app.PositionSlider.Tooltip = {'Select a position'};
            app.PositionSlider.FontSize = 9;
            app.PositionSlider.Position = [541 632 513 3];

            % Create PositionLabel
            app.PositionLabel = uilabel(app.CoordinatesTab);
            app.PositionLabel.Position = [420 623 58 22];
            app.PositionLabel.Text = 'Position #';

            % Create SelectXY
            app.SelectXY = uidropdown(app.CoordinatesTab);
            app.SelectXY.Items = {'X', 'Y', 'Z', 'XY', 'XYZ'};
            app.SelectXY.ValueChangedFcn = createCallbackFcn(app, @SelectXYValueChanged, true);
            app.SelectXY.Tooltip = {'Select the coordinate to display. The table is editable, so you can click on any cell to modify its value.'};
            app.SelectXY.Position = [57 453 65 22];
            app.SelectXY.Value = 'XY';

            % Create PositionField1
            app.PositionField1 = uieditfield(app.CoordinatesTab, 'numeric');
            app.PositionField1.Editable = 'off';
            app.PositionField1.BackgroundColor = [0.9412 0.9412 0.9412];
            app.PositionField1.Position = [479 622 44 22];

            % Create ReplotButton
            app.ReplotButton = uibutton(app.CoordinatesTab, 'push');
            app.ReplotButton.ButtonPushedFcn = createCallbackFcn(app, @ReplotButtonPushed, true);
            app.ReplotButton.Position = [365 623 46 22];
            app.ReplotButton.Text = 'Replot';

            % Create ShowLabel
            app.ShowLabel = uilabel(app.CoordinatesTab);
            app.ShowLabel.Position = [18 453 35 22];
            app.ShowLabel.Text = 'Show';

            % Create NextButton_4
            app.NextButton_4 = uibutton(app.CoordinatesTab, 'push');
            app.NextButton_4.ButtonPushedFcn = createCallbackFcn(app, @NextButton_4Pushed, true);
            app.NextButton_4.Position = [1116 623 51 22];
            app.NextButton_4.Text = 'Next >>';

            % Create PrevButton_4
            app.PrevButton_4 = uibutton(app.CoordinatesTab, 'push');
            app.PrevButton_4.ButtonPushedFcn = createCallbackFcn(app, @PrevButton_4Pushed, true);
            app.PrevButton_4.Position = [1061 623 51 22];
            app.PrevButton_4.Text = '<<Prev';

            % Create UITableElement
            app.UITableElement = uitable(app.CoordinatesTab);
            app.UITableElement.ColumnName = {'Select element'};
            app.UITableElement.RowName = {};
            app.UITableElement.SelectionType = 'row';
            app.UITableElement.ColumnEditable = true;
            app.UITableElement.CellEditCallback = createCallbackFcn(app, @UITableElementCellEdit, true);
            app.UITableElement.CellSelectionCallback = createCallbackFcn(app, @UITableElementCellSelection, true);
            app.UITableElement.Tooltip = {'Select the element you want to work with. To plot multiple elements, hold down the ''Ctrl'' key while selecting. You can also rename the selected elements as needed'};
            app.UITableElement.Position = [13 500 305 115];

            % Create UseanarbitraryZEditFieldLabel
            app.UseanarbitraryZEditFieldLabel = uilabel(app.CoordinatesTab);
            app.UseanarbitraryZEditFieldLabel.HorizontalAlignment = 'right';
            app.UseanarbitraryZEditFieldLabel.Position = [123 453 124 22];
            app.UseanarbitraryZEditFieldLabel.Text = 'Use an arbitrary Z';

            % Create UseanarbitraryZEditField
            app.UseanarbitraryZEditField = uieditfield(app.CoordinatesTab, 'numeric');
            app.UseanarbitraryZEditField.ValueChangedFcn = createCallbackFcn(app, @UseanarbitraryZEditFieldValueChanged, true);
            app.UseanarbitraryZEditField.Tooltip = {'If your imported file only contains xy-coordinates, you can add an arbitrary z-coordinate that will be identical for all points. This allows you to set a desired distance between the elements when visualizing them in 3D.'};
            app.UseanarbitraryZEditField.Position = [254 453 46 22];

            % Create iButton_3
            app.iButton_3 = uibutton(app.CoordinatesTab, 'push');
            app.iButton_3.ButtonPushedFcn = createCallbackFcn(app, @iButton_3Pushed, true);
            app.iButton_3.Position = [303 453 15 22];
            app.iButton_3.Text = 'i';

            % Create PlotDropDown_2Label_2
            app.PlotDropDown_2Label_2 = uilabel(app.CoordinatesTab);
            app.PlotDropDown_2Label_2.HorizontalAlignment = 'right';
            app.PlotDropDown_2Label_2.Position = [13 622 26 22];
            app.PlotDropDown_2Label_2.Text = 'Plot';

            % Create PlotSelector
            app.PlotSelector = uidropdown(app.CoordinatesTab);
            app.PlotSelector.Items = {'Choose', 'Trajectory for a single POI', 'Trajectory', 'Stick diagram', 'Trajectory with stick diagram', 'Heat map'};
            app.PlotSelector.ValueChangedFcn = createCallbackFcn(app, @PlotSelectorValueChanged, true);
            app.PlotSelector.Tooltip = {'Plot a power spectrum or a spectrogram'};
            app.PlotSelector.Position = [72 622 246 22];
            app.PlotSelector.Value = 'Choose';

            % Create AnimationTab
            app.AnimationTab = uitab(app.TabGroup);
            app.AnimationTab.Tooltip = {''};
            app.AnimationTab.Title = 'Animation';

            % Create UIAxes12
            app.UIAxes12 = uiaxes(app.AnimationTab);
            xlabel(app.UIAxes12, 'X')
            ylabel(app.UIAxes12, 'Y')
            zlabel(app.UIAxes12, 'Z')
            app.UIAxes12.PlotBoxAspectRatio = [2.22442748091603 1 1];
            app.UIAxes12.Position = [144 5 1035 601];

            % Create PositionSlider_3Label
            app.PositionSlider_3Label = uilabel(app.AnimationTab);
            app.PositionSlider_3Label.HorizontalAlignment = 'right';
            app.PositionSlider_3Label.Position = [415 627 48 22];
            app.PositionSlider_3Label.Text = 'Position';

            % Create PositionSlider_3
            app.PositionSlider_3 = uislider(app.AnimationTab);
            app.PositionSlider_3.MajorTicks = [];
            app.PositionSlider_3.MajorTickLabels = {''};
            app.PositionSlider_3.ValueChangedFcn = createCallbackFcn(app, @PositionSlider_3ValueChanged, true);
            app.PositionSlider_3.MinorTicks = [];
            app.PositionSlider_3.Tooltip = {'Select a single position'};
            app.PositionSlider_3.FontSize = 10;
            app.PositionSlider_3.Position = [479 636 451 3];

            % Create PositionField2
            app.PositionField2 = uieditfield(app.AnimationTab, 'numeric');
            app.PositionField2.Editable = 'off';
            app.PositionField2.BackgroundColor = [0.9412 0.9412 0.9412];
            app.PositionField2.Position = [954 627 44 22];

            % Create AdjustPanel
            app.AdjustPanel = uipanel(app.AnimationTab);
            app.AdjustPanel.Title = 'Adjust';
            app.AdjustPanel.Position = [10 176 119 185];

            % Create SetazimuthtoEditFieldLabel
            app.SetazimuthtoEditFieldLabel = uilabel(app.AdjustPanel);
            app.SetazimuthtoEditFieldLabel.HorizontalAlignment = 'right';
            app.SetazimuthtoEditFieldLabel.Position = [8 141 87 22];
            app.SetazimuthtoEditFieldLabel.Text = 'Set azimuth to ';

            % Create SetazimuthtoEditField
            app.SetazimuthtoEditField = uieditfield(app.AdjustPanel, 'numeric');
            app.SetazimuthtoEditField.ValueChangedFcn = createCallbackFcn(app, @SetazimuthtoEditFieldValueChanged, true);
            app.SetazimuthtoEditField.Position = [14 116 42 22];

            % Create SetelevationtoEditFieldLabel
            app.SetelevationtoEditFieldLabel = uilabel(app.AdjustPanel);
            app.SetelevationtoEditFieldLabel.VerticalAlignment = 'top';
            app.SetelevationtoEditFieldLabel.Position = [12 85 106 22];
            app.SetelevationtoEditFieldLabel.Text = 'Set elevation to ';

            % Create SetelevationtoEditField
            app.SetelevationtoEditField = uieditfield(app.AdjustPanel, 'numeric');
            app.SetelevationtoEditField.ValueChangedFcn = createCallbackFcn(app, @SetelevationtoEditFieldValueChanged, true);
            app.SetelevationtoEditField.Position = [14 66 42 22];
            app.SetelevationtoEditField.Value = 90;

            % Create TimeintervalEditFieldLabel
            app.TimeintervalEditFieldLabel = uilabel(app.AdjustPanel);
            app.TimeintervalEditFieldLabel.VerticalAlignment = 'top';
            app.TimeintervalEditFieldLabel.Position = [13 30 106 22];
            app.TimeintervalEditFieldLabel.Text = 'Time interval';

            % Create TimeintervalEditField
            app.TimeintervalEditField = uieditfield(app.AdjustPanel, 'numeric');
            app.TimeintervalEditField.ValueChangedFcn = createCallbackFcn(app, @TimeintervalEditFieldValueChanged, true);
            app.TimeintervalEditField.Position = [14 9 42 22];
            app.TimeintervalEditField.Value = 0.1;

            % Create NormalisetracestoPanel
            app.NormalisetracestoPanel = uipanel(app.AnimationTab);
            app.NormalisetracestoPanel.Title = 'Normalise traces to:';
            app.NormalisetracestoPanel.Position = [11 375 120 115];

            % Create Choose_a_AOI
            app.Choose_a_AOI = uidropdown(app.NormalisetracestoPanel);
            app.Choose_a_AOI.Items = {'Choose', 'x', 'y', 'xy', 'Revert'};
            app.Choose_a_AOI.ValueChangedFcn = createCallbackFcn(app, @Choose_a_AOIValueChanged, true);
            app.Choose_a_AOI.Tooltip = {'Choose the coordinate type as normalisation reference'};
            app.Choose_a_AOI.Position = [12 11 92 22];
            app.Choose_a_AOI.Value = 'Choose';

            % Create Choose_a_POI
            app.Choose_a_POI = uidropdown(app.NormalisetracestoPanel);
            app.Choose_a_POI.Items = {'Choose'};
            app.Choose_a_POI.Tooltip = {'Chose a point of interest as reference for normalisation'};
            app.Choose_a_POI.Position = [12 38 92 22];
            app.Choose_a_POI.Value = 'Choose';

            % Create Choose_a_EOI
            app.Choose_a_EOI = uidropdown(app.NormalisetracestoPanel);
            app.Choose_a_EOI.Items = {'Choose'};
            app.Choose_a_EOI.ValueChangedFcn = createCallbackFcn(app, @Choose_a_EOIValueChanged, true);
            app.Choose_a_EOI.Tooltip = {'Choose an element to normalise to.'};
            app.Choose_a_EOI.Position = [12 65 92 22];
            app.Choose_a_EOI.Value = 'Choose';

            % Create AnimateButton
            app.AnimateButton = uibutton(app.AnimationTab, 'push');
            app.AnimateButton.ButtonPushedFcn = createCallbackFcn(app, @AnimateButtonPushed, true);
            app.AnimateButton.Tooltip = {'Animate the selected element(s)'};
            app.AnimateButton.Position = [10 146 119 22];
            app.AnimateButton.Text = 'Animate';

            % Create UITableElement_2
            app.UITableElement_2 = uitable(app.AnimationTab);
            app.UITableElement_2.ColumnName = {'Select element'};
            app.UITableElement_2.RowName = {};
            app.UITableElement_2.SelectionType = 'row';
            app.UITableElement_2.ColumnEditable = true;
            app.UITableElement_2.CellEditCallback = createCallbackFcn(app, @UITableElement_2CellEdit, true);
            app.UITableElement_2.CellSelectionCallback = createCallbackFcn(app, @UITableElement_2CellSelection, true);
            app.UITableElement_2.Tooltip = {'Select the element you want to work with. To plot multiple elements, hold down the ''Ctrl'' key while selecting. You can also rename the selected elements as needed'};
            app.UITableElement_2.Position = [11 524 121 115];

            % Create KinematicTab
            app.KinematicTab = uitab(app.TabGroup);
            app.KinematicTab.Tooltip = {''};
            app.KinematicTab.Title = 'Kinematic';
            app.KinematicTab.ButtonDownFcn = createCallbackFcn(app, @KinematicTabButtonDown, true);

            % Create UIAxes5
            app.UIAxes5 = uiaxes(app.KinematicTab);
            title(app.UIAxes5, 'Title')
            xlabel(app.UIAxes5, 'X')
            ylabel(app.UIAxes5, 'Y')
            zlabel(app.UIAxes5, 'Z')
            app.UIAxes5.PlotBoxAspectRatio = [1.77777777777778 1 1];
            app.UIAxes5.Position = [656 8 515 317];

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.KinematicTab);
            title(app.UIAxes4, 'Title')
            xlabel(app.UIAxes4, 'X')
            ylabel(app.UIAxes4, 'Y')
            zlabel(app.UIAxes4, 'Z')
            app.UIAxes4.PlotBoxAspectRatio = [2.14965986394558 1 1];
            app.UIAxes4.Position = [124 8 515 317];

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.KinematicTab);
            title(app.UIAxes3, 'Title')
            xlabel(app.UIAxes3, 'X')
            ylabel(app.UIAxes3, 'Y')
            zlabel(app.UIAxes3, 'Z')
            app.UIAxes3.PlotBoxAspectRatio = [2.15699658703072 1 1];
            app.UIAxes3.Position = [656 327 515 317];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.KinematicTab);
            title(app.UIAxes2, 'Title')
            xlabel(app.UIAxes2, 'X')
            ylabel(app.UIAxes2, 'Y')
            zlabel(app.UIAxes2, 'Z')
            app.UIAxes2.PlotBoxAspectRatio = [2.15699658703072 1 1];
            app.UIAxes2.Position = [124 327 515 317];

            % Create StickdiagramsButton
            app.StickdiagramsButton = uibutton(app.KinematicTab, 'push');
            app.StickdiagramsButton.ButtonPushedFcn = createCallbackFcn(app, @StickdiagramsButtonPushed, true);
            app.StickdiagramsButton.Position = [12 295 100 22];
            app.StickdiagramsButton.Text = 'Stick diagrams';

            % Create DistanceButton
            app.DistanceButton = uibutton(app.KinematicTab, 'push');
            app.DistanceButton.ButtonPushedFcn = createCallbackFcn(app, @DistanceButtonPushed, true);
            app.DistanceButton.Position = [12 324 100 22];
            app.DistanceButton.Text = 'Distance';

            % Create PositionButton
            app.PositionButton = uibutton(app.KinematicTab, 'push');
            app.PositionButton.ButtonPushedFcn = createCallbackFcn(app, @PositionButtonPushed, true);
            app.PositionButton.Position = [12 353 100 22];
            app.PositionButton.Text = 'Position';

            % Create ElementDropDown
            app.ElementDropDown = uidropdown(app.KinematicTab);
            app.ElementDropDown.Items = {'Choose'};
            app.ElementDropDown.ValueChangedFcn = createCallbackFcn(app, @ElementDropDownValueChanged, true);
            app.ElementDropDown.Position = [12 624 100 22];
            app.ElementDropDown.Value = 'Choose';

            % Create SelectaPOILabel
            app.SelectaPOILabel = uilabel(app.KinematicTab);
            app.SelectaPOILabel.Position = [16 518 102 22];
            app.SelectaPOILabel.Text = 'Show single curve';

            % Create SingleCurveKinematic
            app.SingleCurveKinematic = uidropdown(app.KinematicTab);
            app.SingleCurveKinematic.Items = {'Choose'};
            app.SingleCurveKinematic.ValueChangedFcn = createCallbackFcn(app, @SingleCurveKinematicValueChanged, true);
            app.SingleCurveKinematic.Position = [12 497 100 22];
            app.SingleCurveKinematic.Value = 'Choose';

            % Create AllButton
            app.AllButton = uibutton(app.KinematicTab, 'push');
            app.AllButton.ButtonPushedFcn = createCallbackFcn(app, @AllButtonPushed, true);
            app.AllButton.Position = [12 449 100 23];
            app.AllButton.Text = 'All';

            % Create DropDownView
            app.DropDownView = uidropdown(app.KinematicTab);
            app.DropDownView.Items = {'X', 'Y', 'Z', 'XY', 'XZ', 'YZ', 'XYZ'};
            app.DropDownView.Position = [12 239 100 22];
            app.DropDownView.Value = 'XY';

            % Create SpeedButton
            app.SpeedButton = uibutton(app.KinematicTab, 'push');
            app.SpeedButton.ButtonPushedFcn = createCallbackFcn(app, @SpeedButtonPushed, true);
            app.SpeedButton.Position = [12 211 100 22];
            app.SpeedButton.Text = 'Speed';

            % Create AccelerationButton_2
            app.AccelerationButton_2 = uibutton(app.KinematicTab, 'push');
            app.AccelerationButton_2.ButtonPushedFcn = createCallbackFcn(app, @AccelerationButton_2Pushed, true);
            app.AccelerationButton_2.Position = [12 183 100 22];
            app.AccelerationButton_2.Text = 'Acceleration';

            % Create AnglevariationButton
            app.AnglevariationButton = uibutton(app.KinematicTab, 'push');
            app.AnglevariationButton.ButtonPushedFcn = createCallbackFcn(app, @AnglevariationButtonPushed, true);
            app.AnglevariationButton.Position = [12 155 100 22];
            app.AnglevariationButton.Text = 'Angle variation';

            % Create AnglevelocityButton
            app.AnglevelocityButton = uibutton(app.KinematicTab, 'push');
            app.AnglevelocityButton.ButtonPushedFcn = createCallbackFcn(app, @AnglevelocityButtonPushed, true);
            app.AnglevelocityButton.Position = [12 128 100 22];
            app.AnglevelocityButton.Text = 'Angle velocity';

            % Create AngleaccButton
            app.AngleaccButton = uibutton(app.KinematicTab, 'push');
            app.AngleaccButton.ButtonPushedFcn = createCallbackFcn(app, @AngleaccButtonPushed, true);
            app.AngleaccButton.Position = [12 101 100 22];
            app.AngleaccButton.Text = 'Angle acc';

            % Create SelecttheaxisLabel
            app.SelecttheaxisLabel = uilabel(app.KinematicTab);
            app.SelecttheaxisLabel.HorizontalAlignment = 'right';
            app.SelecttheaxisLabel.Position = [15 260 87 22];
            app.SelecttheaxisLabel.Text = 'Select the axis ';

            % Create RecalculateButton
            app.RecalculateButton = uibutton(app.KinematicTab, 'push');
            app.RecalculateButton.ButtonPushedFcn = createCallbackFcn(app, @RecalculateButtonPushed, true);
            app.RecalculateButton.Position = [12 596 100 23];
            app.RecalculateButton.Text = 'Re-calculate';

            % Create SelectaPOILabel_2
            app.SelectaPOILabel_2 = uilabel(app.KinematicTab);
            app.SelectaPOILabel_2.Position = [15 471 89 22];
            app.SelectaPOILabel_2.Text = 'Show all curves';

            % Create SelectaPOILabel_3
            app.SelectaPOILabel_3 = uilabel(app.KinematicTab);
            app.SelectaPOILabel_3.Position = [16 379 26 22];
            app.SelectaPOILabel_3.Text = 'Plot';

            % Create StatsTab
            app.StatsTab = uitab(app.TabGroup);
            app.StatsTab.Tooltip = {''};
            app.StatsTab.Title = 'Stats';

            % Create UITableStat
            app.UITableStat = uitable(app.StatsTab);
            app.UITableStat.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITableStat.RowName = {};
            app.UITableStat.Position = [235 93 912 199];

            % Create PointofInterestListBoxLabel_2
            app.PointofInterestListBoxLabel_2 = uilabel(app.StatsTab);
            app.PointofInterestListBoxLabel_2.HorizontalAlignment = 'right';
            app.PointofInterestListBoxLabel_2.Position = [43 376 89 22];
            app.PointofInterestListBoxLabel_2.Text = 'Point of Interest';

            % Create POI_list
            app.POI_list = uilistbox(app.StatsTab);
            app.POI_list.Tooltip = {'Select a point-of-interest'};
            app.POI_list.Position = [44 223 145 151];

            % Create ElementDropDown_5Label_2
            app.ElementDropDown_5Label_2 = uilabel(app.StatsTab);
            app.ElementDropDown_5Label_2.HorizontalAlignment = 'right';
            app.ElementDropDown_5Label_2.Position = [45 477 50 22];
            app.ElementDropDown_5Label_2.Text = 'Element';

            % Create ElementDropDownX_2
            app.ElementDropDownX_2 = uidropdown(app.StatsTab);
            app.ElementDropDownX_2.Items = {'Choose'};
            app.ElementDropDownX_2.Tooltip = {'Choose an element'};
            app.ElementDropDownX_2.Position = [45 456 144 22];
            app.ElementDropDownX_2.Value = 'Choose';

            % Create ParameterDropDownLabel_3
            app.ParameterDropDownLabel_3 = uilabel(app.StatsTab);
            app.ParameterDropDownLabel_3.HorizontalAlignment = 'right';
            app.ParameterDropDownLabel_3.Position = [44 428 61 22];
            app.ParameterDropDownLabel_3.Text = 'Parameter';

            % Create ParameterX_2
            app.ParameterX_2 = uidropdown(app.StatsTab);
            app.ParameterX_2.Items = {'Choose', 'Distance', 'Speed', 'Acceleration', 'Angular variation', 'Angular velocity', 'Angular acceleration'};
            app.ParameterX_2.ValueChangedFcn = createCallbackFcn(app, @ParameterX_2ValueChanged, true);
            app.ParameterX_2.Tooltip = {'Choose a kinematic parameter '};
            app.ParameterX_2.Position = [45 405 143 22];
            app.ParameterX_2.Value = 'Choose';

            % Create ShowtableButton
            app.ShowtableButton = uibutton(app.StatsTab, 'push');
            app.ShowtableButton.ButtonPushedFcn = createCallbackFcn(app, @ShowtableButtonPushed, true);
            app.ShowtableButton.Tooltip = {'Display descriptive statistics from kinematic parameters'};
            app.ShowtableButton.Position = [89 192 100 22];
            app.ShowtableButton.Text = 'Show table';

            % Create UITableData
            app.UITableData = uitable(app.StatsTab);
            app.UITableData.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITableData.RowName = {};
            app.UITableData.Position = [235 313 912 308];

            % Create EphyTab
            app.EphyTab = uitab(app.TabGroup);
            app.EphyTab.Tooltip = {''};
            app.EphyTab.Title = 'E-phy';

            % Create UIAxesEMG
            app.UIAxesEMG = uiaxes(app.EphyTab);
            title(app.UIAxesEMG, 'Title')
            xlabel(app.UIAxesEMG, 'X')
            ylabel(app.UIAxesEMG, 'Y')
            zlabel(app.UIAxesEMG, 'Z')
            app.UIAxesEMG.Position = [254 48 917 567];

            % Create UITable16
            app.UITable16 = uitable(app.EphyTab);
            app.UITable16.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITable16.RowName = {};
            app.UITable16.Position = [10 10 226 409];

            % Create RawEphyvaluesLabel
            app.RawEphyvaluesLabel = uilabel(app.EphyTab);
            app.RawEphyvaluesLabel.Position = [12 418 204 26];
            app.RawEphyvaluesLabel.Text = 'Raw E-phy values';

            % Create SamplingrateHzLabel
            app.SamplingrateHzLabel = uilabel(app.EphyTab);
            app.SamplingrateHzLabel.HorizontalAlignment = 'right';
            app.SamplingrateHzLabel.Position = [4 594 106 22];
            app.SamplingrateHzLabel.Text = 'Sampling rate (Hz)';

            % Create SamplingDataRate
            app.SamplingDataRate = uieditfield(app.EphyTab, 'numeric');
            app.SamplingDataRate.ValueChangedFcn = createCallbackFcn(app, @SamplingDataRateValueChanged, true);
            app.SamplingDataRate.Editable = 'off';
            app.SamplingDataRate.Tooltip = {'Current sampling rate'};
            app.SamplingDataRate.Position = [128 594 106 22];

            % Create CalculateButton_3
            app.CalculateButton_3 = uibutton(app.EphyTab, 'push');
            app.CalculateButton_3.ButtonPushedFcn = createCallbackFcn(app, @CalculateButton_3Pushed, true);
            app.CalculateButton_3.Tooltip = {'Calculate the area under the curve of the envelope. Values from the different recordings are displayed in the table below'};
            app.CalculateButton_3.Position = [174 549 62 22];
            app.CalculateButton_3.Text = 'Calculate';

            % Create TimescalefactorSliderLabel
            app.TimescalefactorSliderLabel = uilabel(app.EphyTab);
            app.TimescalefactorSliderLabel.HorizontalAlignment = 'right';
            app.TimescalefactorSliderLabel.Position = [740 16 96 22];
            app.TimescalefactorSliderLabel.Text = 'Time scale factor';

            % Create TimescalefactorSlider
            app.TimescalefactorSlider = uislider(app.EphyTab);
            app.TimescalefactorSlider.Limits = [0 50];
            app.TimescalefactorSlider.MajorTicks = [];
            app.TimescalefactorSlider.ValueChangedFcn = createCallbackFcn(app, @TimescalefactorSliderValueChanged, true);
            app.TimescalefactorSlider.MinorTicks = [];
            app.TimescalefactorSlider.Position = [850 26 267 3];

            % Create AmplitudescalefactorSliderLabel
            app.AmplitudescalefactorSliderLabel = uilabel(app.EphyTab);
            app.AmplitudescalefactorSliderLabel.HorizontalAlignment = 'right';
            app.AmplitudescalefactorSliderLabel.Position = [313 15 123 22];
            app.AmplitudescalefactorSliderLabel.Text = 'Amplitude scale factor';

            % Create AmplitudescalefactorSlider
            app.AmplitudescalefactorSlider = uislider(app.EphyTab);
            app.AmplitudescalefactorSlider.Limits = [0 50];
            app.AmplitudescalefactorSlider.MajorTicks = [];
            app.AmplitudescalefactorSlider.ValueChangedFcn = createCallbackFcn(app, @AmplitudescalefactorSliderValueChanged, true);
            app.AmplitudescalefactorSlider.MinorTicks = [];
            app.AmplitudescalefactorSlider.Position = [450 25 223 3];

            % Create UITableAUC
            app.UITableAUC = uitable(app.EphyTab);
            app.UITableAUC.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITableAUC.RowName = {};
            app.UITableAUC.Position = [9 475 227 71];

            % Create AreaunderthecurveLabel
            app.AreaunderthecurveLabel = uilabel(app.EphyTab);
            app.AreaunderthecurveLabel.Position = [10 547 194 26];
            app.AreaunderthecurveLabel.Text = 'Area under the curve';

            % Create PlotDropDownLabel
            app.PlotDropDownLabel = uilabel(app.EphyTab);
            app.PlotDropDownLabel.HorizontalAlignment = 'right';
            app.PlotDropDownLabel.Position = [8 622 26 22];
            app.PlotDropDownLabel.Text = 'Plot';

            % Create PlotDropDown
            app.PlotDropDown = uidropdown(app.EphyTab);
            app.PlotDropDown.Items = {'Choose', 'Raw E-phy trace', 'Filtered E-phy trace', 'E-phy envelope', 'Raw/envelope', 'FFT power spectrum', 'FFT spectrogram'};
            app.PlotDropDown.ValueChangedFcn = createCallbackFcn(app, @PlotDropDownValueChanged, true);
            app.PlotDropDown.Tooltip = {''};
            app.PlotDropDown.Position = [49 622 187 22];
            app.PlotDropDown.Value = 'Choose';

            % Create EditField
            app.EditField = uieditfield(app.EphyTab, 'numeric');
            app.EditField.ValueChangedFcn = createCallbackFcn(app, @EditFieldValueChanged, true);
            app.EditField.Position = [676 16 34 22];
            app.EditField.Value = 50;

            % Create EditField_2
            app.EditField_2 = uieditfield(app.EphyTab, 'numeric');
            app.EditField_2.ValueChangedFcn = createCallbackFcn(app, @EditField_2ValueChanged, true);
            app.EditField_2.Position = [1120 16 34 22];
            app.EditField_2.Value = 50;

            % Create PositionSliderEMG
            app.PositionSliderEMG = uislider(app.EphyTab);
            app.PositionSliderEMG.MajorTicks = [];
            app.PositionSliderEMG.ValueChangedFcn = createCallbackFcn(app, @PositionSliderEMGValueChanged, true);
            app.PositionSliderEMG.MinorTicks = [];
            app.PositionSliderEMG.Tooltip = {'Select a position'};
            app.PositionSliderEMG.FontSize = 9;
            app.PositionSliderEMG.Position = [420 632 634 3];

            % Create PositionLabelEMG
            app.PositionLabelEMG = uilabel(app.EphyTab);
            app.PositionLabelEMG.Position = [294 623 58 22];
            app.PositionLabelEMG.Text = 'Position #';

            % Create PositionFieldEMG
            app.PositionFieldEMG = uieditfield(app.EphyTab, 'numeric');
            app.PositionFieldEMG.Editable = 'off';
            app.PositionFieldEMG.BackgroundColor = [0.9412 0.9412 0.9412];
            app.PositionFieldEMG.Position = [353 622 44 22];

            % Create NextButton_5
            app.NextButton_5 = uibutton(app.EphyTab, 'push');
            app.NextButton_5.ButtonPushedFcn = createCallbackFcn(app, @NextButton_5Pushed, true);
            app.NextButton_5.Position = [1116 623 51 22];
            app.NextButton_5.Text = 'Next >>';

            % Create PrevButton_5
            app.PrevButton_5 = uibutton(app.EphyTab, 'push');
            app.PrevButton_5.ButtonPushedFcn = createCallbackFcn(app, @PrevButton_5Pushed, true);
            app.PrevButton_5.Position = [1061 623 51 22];
            app.PrevButton_5.Text = '<<Prev';

            % Create SensorTab
            app.SensorTab = uitab(app.TabGroup);
            app.SensorTab.Tooltip = {''};
            app.SensorTab.Title = 'Sensor';

            % Create UIAxesSensor
            app.UIAxesSensor = uiaxes(app.SensorTab);
            title(app.UIAxesSensor, 'Title')
            xlabel(app.UIAxesSensor, 'X')
            ylabel(app.UIAxesSensor, 'Y')
            zlabel(app.UIAxesSensor, 'Z')
            app.UIAxesSensor.Position = [254 48 917 567];

            % Create EditField_3
            app.EditField_3 = uieditfield(app.SensorTab, 'numeric');
            app.EditField_3.ValueChangedFcn = createCallbackFcn(app, @EditField_3ValueChanged, true);
            app.EditField_3.Position = [676 16 34 22];
            app.EditField_3.Value = 50;

            % Create AmplitudescalefactorSlider_2Label
            app.AmplitudescalefactorSlider_2Label = uilabel(app.SensorTab);
            app.AmplitudescalefactorSlider_2Label.HorizontalAlignment = 'right';
            app.AmplitudescalefactorSlider_2Label.Position = [313 15 123 22];
            app.AmplitudescalefactorSlider_2Label.Text = 'Amplitude scale factor';

            % Create AmplitudescalefactorSlider_2
            app.AmplitudescalefactorSlider_2 = uislider(app.SensorTab);
            app.AmplitudescalefactorSlider_2.Limits = [0 50];
            app.AmplitudescalefactorSlider_2.MajorTicks = [];
            app.AmplitudescalefactorSlider_2.ValueChangedFcn = createCallbackFcn(app, @AmplitudescalefactorSlider_2ValueChanged, true);
            app.AmplitudescalefactorSlider_2.MinorTicks = [];
            app.AmplitudescalefactorSlider_2.Position = [450 25 223 3];

            % Create EditField_4
            app.EditField_4 = uieditfield(app.SensorTab, 'numeric');
            app.EditField_4.ValueChangedFcn = createCallbackFcn(app, @EditField_4ValueChanged, true);
            app.EditField_4.Position = [1120 16 34 22];
            app.EditField_4.Value = 50;

            % Create TimescalefactorSlider_2Label
            app.TimescalefactorSlider_2Label = uilabel(app.SensorTab);
            app.TimescalefactorSlider_2Label.HorizontalAlignment = 'right';
            app.TimescalefactorSlider_2Label.Position = [740 16 96 22];
            app.TimescalefactorSlider_2Label.Text = 'Time scale factor';

            % Create TimescalefactorSlider_2
            app.TimescalefactorSlider_2 = uislider(app.SensorTab);
            app.TimescalefactorSlider_2.Limits = [0 50];
            app.TimescalefactorSlider_2.MajorTicks = [];
            app.TimescalefactorSlider_2.ValueChangedFcn = createCallbackFcn(app, @TimescalefactorSlider_2ValueChanged, true);
            app.TimescalefactorSlider_2.MinorTicks = [];
            app.TimescalefactorSlider_2.Position = [850 26 267 3];

            % Create UITableSensor
            app.UITableSensor = uitable(app.SensorTab);
            app.UITableSensor.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITableSensor.RowName = {};
            app.UITableSensor.Position = [10 10 226 409];

            % Create CalculateButton_4
            app.CalculateButton_4 = uibutton(app.SensorTab, 'push');
            app.CalculateButton_4.ButtonPushedFcn = createCallbackFcn(app, @CalculateButton_4Pushed, true);
            app.CalculateButton_4.Tooltip = {'Calculate the area under the curve of the envelope. Values from the different recordings are displayed in the table below'};
            app.CalculateButton_4.Position = [174 549 62 22];
            app.CalculateButton_4.Text = 'Calculate';

            % Create UITableAUC_2
            app.UITableAUC_2 = uitable(app.SensorTab);
            app.UITableAUC_2.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITableAUC_2.RowName = {};
            app.UITableAUC_2.Position = [9 475 227 71];

            % Create AreaunderthecurveLabel_2
            app.AreaunderthecurveLabel_2 = uilabel(app.SensorTab);
            app.AreaunderthecurveLabel_2.Position = [10 547 194 26];
            app.AreaunderthecurveLabel_2.Text = 'Area under the curve';

            % Create SamplingrateHzLabel_2
            app.SamplingrateHzLabel_2 = uilabel(app.SensorTab);
            app.SamplingrateHzLabel_2.HorizontalAlignment = 'right';
            app.SamplingrateHzLabel_2.Position = [4 594 106 22];
            app.SamplingrateHzLabel_2.Text = 'Sampling rate (Hz)';

            % Create SensorSamplingRate
            app.SensorSamplingRate = uieditfield(app.SensorTab, 'numeric');
            app.SensorSamplingRate.Editable = 'off';
            app.SensorSamplingRate.Tooltip = {'Original sensor sampling rate'};
            app.SensorSamplingRate.Position = [128 594 106 22];

            % Create PlotDropDown_2Label
            app.PlotDropDown_2Label = uilabel(app.SensorTab);
            app.PlotDropDown_2Label.HorizontalAlignment = 'right';
            app.PlotDropDown_2Label.Position = [8 622 26 22];
            app.PlotDropDown_2Label.Text = 'Plot';

            % Create PlotSensorDropDown
            app.PlotSensorDropDown = uidropdown(app.SensorTab);
            app.PlotSensorDropDown.Items = {'Choose', 'Raw sensor signal', 'Filtered  sensor signal', 'Sensor signal envelope', 'Raw/envelope', 'FFT power spectrum', 'FFT spectrogram'};
            app.PlotSensorDropDown.ValueChangedFcn = createCallbackFcn(app, @PlotSensorDropDownValueChanged, true);
            app.PlotSensorDropDown.Tooltip = {'Plot a power spectrum or a spectrogram'};
            app.PlotSensorDropDown.Position = [49 622 187 22];
            app.PlotSensorDropDown.Value = 'Choose';

            % Create RawsensorvaluesLabel
            app.RawsensorvaluesLabel = uilabel(app.SensorTab);
            app.RawsensorvaluesLabel.Position = [12 418 204 26];
            app.RawsensorvaluesLabel.Text = 'Raw sensor values';

            % Create PositionSliderSensor
            app.PositionSliderSensor = uislider(app.SensorTab);
            app.PositionSliderSensor.MajorTicks = [];
            app.PositionSliderSensor.ValueChangedFcn = createCallbackFcn(app, @PositionSliderSensorValueChanged, true);
            app.PositionSliderSensor.MinorTicks = [];
            app.PositionSliderSensor.Tooltip = {'Select a position'};
            app.PositionSliderSensor.FontSize = 9;
            app.PositionSliderSensor.Position = [420 632 634 3];

            % Create PositionLabelSensor
            app.PositionLabelSensor = uilabel(app.SensorTab);
            app.PositionLabelSensor.Position = [294 623 58 22];
            app.PositionLabelSensor.Text = 'Position #';

            % Create PositionFieldSensor
            app.PositionFieldSensor = uieditfield(app.SensorTab, 'numeric');
            app.PositionFieldSensor.Editable = 'off';
            app.PositionFieldSensor.BackgroundColor = [0.9412 0.9412 0.9412];
            app.PositionFieldSensor.Position = [353 622 44 22];

            % Create NextButton_Sensor
            app.NextButton_Sensor = uibutton(app.SensorTab, 'push');
            app.NextButton_Sensor.ButtonPushedFcn = createCallbackFcn(app, @NextButton_SensorPushed, true);
            app.NextButton_Sensor.Position = [1116 623 51 22];
            app.NextButton_Sensor.Text = 'Next >>';

            % Create PrevButton_Sensor
            app.PrevButton_Sensor = uibutton(app.SensorTab, 'push');
            app.PrevButton_Sensor.ButtonPushedFcn = createCallbackFcn(app, @PrevButton_SensorPushed, true);
            app.PrevButton_Sensor.Position = [1061 623 51 22];
            app.PrevButton_Sensor.Text = '<<Prev';

            % Create CorrelationTab
            app.CorrelationTab = uitab(app.TabGroup);
            app.CorrelationTab.Tooltip = {''};
            app.CorrelationTab.Title = 'Correlation';
            app.CorrelationTab.ButtonDownFcn = createCallbackFcn(app, @CorrelationTabButtonDown, true);

            % Create UIAxes14
            app.UIAxes14 = uiaxes(app.CorrelationTab);
            xlabel(app.UIAxes14, 'X')
            ylabel(app.UIAxes14, 'Y')
            zlabel(app.UIAxes14, 'Z')
            app.UIAxes14.PlotBoxAspectRatio = [1.32361516034985 1 1];
            app.UIAxes14.Position = [379 18 788 621];

            % Create PointofInterestListBoxLabel
            app.PointofInterestListBoxLabel = uilabel(app.CorrelationTab);
            app.PointofInterestListBoxLabel.HorizontalAlignment = 'right';
            app.PointofInterestListBoxLabel.Position = [22 519 89 22];
            app.PointofInterestListBoxLabel.Text = 'Point of Interest';

            % Create POIX
            app.POIX = uilistbox(app.CorrelationTab);
            app.POIX.Tooltip = {'Choose a parameter to correlate'};
            app.POIX.Position = [127 469 175 74];

            % Create PointofInterestListBox_2Label
            app.PointofInterestListBox_2Label = uilabel(app.CorrelationTab);
            app.PointofInterestListBox_2Label.HorizontalAlignment = 'right';
            app.PointofInterestListBox_2Label.Position = [22 327 89 22];
            app.PointofInterestListBox_2Label.Text = 'Point of Interest';

            % Create POIY
            app.POIY = uilistbox(app.CorrelationTab);
            app.POIY.Tooltip = {'Choose a parameter to correlate'};
            app.POIY.Position = [127 276 175 74];

            % Create ElementDropDown_5Label
            app.ElementDropDown_5Label = uilabel(app.CorrelationTab);
            app.ElementDropDown_5Label.HorizontalAlignment = 'right';
            app.ElementDropDown_5Label.Position = [23 605 50 22];
            app.ElementDropDown_5Label.Text = 'Element';

            % Create ElementDropDownX
            app.ElementDropDownX = uidropdown(app.CorrelationTab);
            app.ElementDropDownX.Items = {'Name'};
            app.ElementDropDownX.Tooltip = {'Choose one element to correlate'};
            app.ElementDropDownX.Position = [127 605 175 22];
            app.ElementDropDownX.Value = 'Name';

            % Create ParameterDropDownLabel
            app.ParameterDropDownLabel = uilabel(app.CorrelationTab);
            app.ParameterDropDownLabel.HorizontalAlignment = 'right';
            app.ParameterDropDownLabel.Position = [24 577 61 22];
            app.ParameterDropDownLabel.Text = 'Parameter';

            % Create ParameterX
            app.ParameterX = uidropdown(app.CorrelationTab);
            app.ParameterX.Items = {'Choose', 'Distance', 'Speed', 'Acceleration', 'Angular variation', 'Angular velocity', 'Angular acceleration', 'Raw E-phy trace', 'E-phy envelope', 'Raw sensor signal', 'Sensor envelope'};
            app.ParameterX.ValueChangedFcn = createCallbackFcn(app, @ParameterXValueChanged, true);
            app.ParameterX.Tooltip = {'Choose a parameter for the correlation.'};
            app.ParameterX.Position = [127 577 175 22];
            app.ParameterX.Value = 'Choose';

            % Create ElementDropDown_6Label
            app.ElementDropDown_6Label = uilabel(app.CorrelationTab);
            app.ElementDropDown_6Label.HorizontalAlignment = 'right';
            app.ElementDropDown_6Label.Position = [22 412 50 22];
            app.ElementDropDown_6Label.Text = 'Element';

            % Create ElementDropDownY
            app.ElementDropDownY = uidropdown(app.CorrelationTab);
            app.ElementDropDownY.Items = {'Name'};
            app.ElementDropDownY.Tooltip = {'Choose one element to correlate'};
            app.ElementDropDownY.Position = [127 412 175 22];
            app.ElementDropDownY.Value = 'Name';

            % Create ParameterDropDownLabel_2
            app.ParameterDropDownLabel_2 = uilabel(app.CorrelationTab);
            app.ParameterDropDownLabel_2.HorizontalAlignment = 'right';
            app.ParameterDropDownLabel_2.Position = [22 384 61 22];
            app.ParameterDropDownLabel_2.Text = 'Parameter';

            % Create ParameterY
            app.ParameterY = uidropdown(app.CorrelationTab);
            app.ParameterY.Items = {'Choose', 'Distance', 'Speed', 'Acceleration', 'Angular variation', 'Angular velocity', 'Angular acceleration', 'Raw E-phy trace', 'E-phy envelope', 'Raw sensor signal', 'Sensor envelope'};
            app.ParameterY.ValueChangedFcn = createCallbackFcn(app, @ParameterYValueChanged, true);
            app.ParameterY.Tooltip = {'Choose a parameter for the correlation.'};
            app.ParameterY.Position = [127 384 175 22];
            app.ParameterY.Value = 'Choose';

            % Create SelectcorrelationparametersLabel
            app.SelectcorrelationparametersLabel = uilabel(app.CorrelationTab);
            app.SelectcorrelationparametersLabel.Position = [136 630 162 22];
            app.SelectcorrelationparametersLabel.Text = 'Select correlation parameters';

            % Create PlotcorrelationButton
            app.PlotcorrelationButton = uibutton(app.CorrelationTab, 'push');
            app.PlotcorrelationButton.ButtonPushedFcn = createCallbackFcn(app, @PlotcorrelationButtonPushed, true);
            app.PlotcorrelationButton.Tooltip = {'This plots a parameter (e.g. angle, speed, etc.) for the first selected element against a parameter for the second selected element. This allows you to visualize the relationship between the two elements based on the selected parameter. '};
            app.PlotcorrelationButton.Position = [124 182 107 22];
            app.PlotcorrelationButton.Text = 'Plot correlation';

            % Create PlotcrosscorrelationButton
            app.PlotcrosscorrelationButton = uibutton(app.CorrelationTab, 'push');
            app.PlotcrosscorrelationButton.ButtonPushedFcn = createCallbackFcn(app, @PlotcrosscorrelationButtonPushed, true);
            app.PlotcrosscorrelationButton.Tooltip = {'This plots the crosscorrelation between the parameter for the first selected element against the parameter of the second selected element.'};
            app.PlotcrosscorrelationButton.Position = [235 182 128 22];
            app.PlotcrosscorrelationButton.Text = 'Plot cross-correlation';

            % Create PlotautocorrelationButton
            app.PlotautocorrelationButton = uibutton(app.CorrelationTab, 'push');
            app.PlotautocorrelationButton.ButtonPushedFcn = createCallbackFcn(app, @PlotautocorrelationButtonPushed, true);
            app.PlotautocorrelationButton.Position = [147 248 129 22];
            app.PlotautocorrelationButton.Text = 'Plot auto-correlation';

            % Create PlotautocorrelationButton_2
            app.PlotautocorrelationButton_2 = uibutton(app.CorrelationTab, 'push');
            app.PlotautocorrelationButton_2.ButtonPushedFcn = createCallbackFcn(app, @PlotautocorrelationButton_2Pushed, true);
            app.PlotautocorrelationButton_2.Position = [147 443 128 22];
            app.PlotautocorrelationButton_2.Text = 'Plot auto-correlation';

            % Create ScaleoptionDropDownLabel
            app.ScaleoptionDropDownLabel = uilabel(app.CorrelationTab);
            app.ScaleoptionDropDownLabel.HorizontalAlignment = 'right';
            app.ScaleoptionDropDownLabel.Position = [61 221 71 22];
            app.ScaleoptionDropDownLabel.Text = 'Scale option';

            % Create Scaleoption
            app.Scaleoption = uidropdown(app.CorrelationTab);
            app.Scaleoption.Items = {'none', 'biased', 'unbiased', 'normalized'};
            app.Scaleoption.Tooltip = {'Choose the appropriate option to display the crosscorrelogram'};
            app.Scaleoption.Position = [148 221 128 22];
            app.Scaleoption.Value = 'normalized';

            % Create PlottogetherButton
            app.PlottogetherButton = uibutton(app.CorrelationTab, 'push');
            app.PlottogetherButton.ButtonPushedFcn = createCallbackFcn(app, @PlottogetherButtonPushed, true);
            app.PlottogetherButton.Tooltip = {'This plots an overlay of the selected parameters for each element.'};
            app.PlottogetherButton.Position = [21 181 99 23];
            app.PlottogetherButton.Text = 'Plot together';

            % Create Axis_X
            app.Axis_X = uidropdown(app.CorrelationTab);
            app.Axis_X.Items = {'XY', 'XZ', 'YZ', 'XYZ'};
            app.Axis_X.Tooltip = {'Choose the plan you are interested in using'};
            app.Axis_X.Position = [127 549 175 22];
            app.Axis_X.Value = 'XY';

            % Create SelecttheaxisLabel_2
            app.SelecttheaxisLabel_2 = uilabel(app.CorrelationTab);
            app.SelecttheaxisLabel_2.HorizontalAlignment = 'right';
            app.SelecttheaxisLabel_2.Position = [22 549 87 22];
            app.SelecttheaxisLabel_2.Text = 'Select the axis ';

            % Create Axis_Y
            app.Axis_Y = uidropdown(app.CorrelationTab);
            app.Axis_Y.Items = {'XY', 'XZ', 'YZ', 'XYZ'};
            app.Axis_Y.Tooltip = {'Choose the plan you are interested in using'};
            app.Axis_Y.Position = [127 356 175 22];
            app.Axis_Y.Value = 'XY';

            % Create SelecttheaxisLabel_3
            app.SelecttheaxisLabel_3 = uilabel(app.CorrelationTab);
            app.SelecttheaxisLabel_3.HorizontalAlignment = 'right';
            app.SelecttheaxisLabel_3.Position = [20 358 87 22];
            app.SelecttheaxisLabel_3.Text = 'Select the axis ';

            % Create UITableCCC
            app.UITableCCC = uitable(app.CorrelationTab);
            app.UITableCCC.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITableCCC.RowName = {};
            app.UITableCCC.Tooltip = {'Displays calculated values'};
            app.UITableCCC.Position = [22 18 341 125];

            % Create EdistanceButton
            app.EdistanceButton = uibutton(app.CorrelationTab, 'push');
            app.EdistanceButton.ButtonPushedFcn = createCallbackFcn(app, @EdistanceButtonPushed, true);
            app.EdistanceButton.Tooltip = {'This plots an overlay of the selected parameters for each element.'};
            app.EdistanceButton.Position = [21 156 89 22];
            app.EdistanceButton.Text = 'E-distance';

            % Create CosinesimilarityButton
            app.CosinesimilarityButton = uibutton(app.CorrelationTab, 'push');
            app.CosinesimilarityButton.ButtonPushedFcn = createCallbackFcn(app, @CosinesimilarityButtonPushed, true);
            app.CosinesimilarityButton.Position = [113 156 103 22];
            app.CosinesimilarityButton.Text = 'Cosine similarity';

            % Create DTWButton
            app.DTWButton = uibutton(app.CorrelationTab, 'push');
            app.DTWButton.ButtonPushedFcn = createCallbackFcn(app, @DTWButtonPushed, true);
            app.DTWButton.Position = [322 156 41 22];
            app.DTWButton.Text = 'DTW';

            % Create CorrCoeff
            app.CorrCoeff = uidropdown(app.CorrelationTab);
            app.CorrCoeff.Items = {'Pearson coef.', 'Spearman coef.', 'Kendall coef.'};
            app.CorrCoeff.ValueChangedFcn = createCallbackFcn(app, @CorrCoeffValueChanged, true);
            app.CorrCoeff.Position = [218 156 100 22];
            app.CorrCoeff.Value = 'Pearson coef.';

            % Create StrideGaitTab
            app.StrideGaitTab = uitab(app.TabGroup);
            app.StrideGaitTab.Tooltip = {''};
            app.StrideGaitTab.Title = 'Stride & Gait';
            app.StrideGaitTab.ButtonDownFcn = createCallbackFcn(app, @StrideGaitTabButtonDown, true);

            % Create UIAxes13
            app.UIAxes13 = uiaxes(app.StrideGaitTab);
            xlabel(app.UIAxes13, 'x-coordinate')
            ylabel(app.UIAxes13, 'y-coordinate')
            zlabel(app.UIAxes13, 'Z')
            app.UIAxes13.PlotBoxAspectRatio = [4.19551282051282 1 1];
            app.UIAxes13.XTick = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
            app.UIAxes13.YTick = [];
            app.UIAxes13.Position = [1 260 1178 347];

            % Create UITableGait
            app.UITableGait = uitable(app.StrideGaitTab);
            app.UITableGait.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITableGait.RowName = {};
            app.UITableGait.Tooltip = {'This table displays the position captured or the gait parameters calculated'};
            app.UITableGait.Position = [380 16 787 208];

            % Create CaptureandcalculationsLabel
            app.CaptureandcalculationsLabel = uilabel(app.StrideGaitTab);
            app.CaptureandcalculationsLabel.HorizontalAlignment = 'center';
            app.CaptureandcalculationsLabel.Position = [380 225 138 22];
            app.CaptureandcalculationsLabel.Text = 'Capture and calculations';

            % Create ElementDropDown_4
            app.ElementDropDown_4 = uidropdown(app.StrideGaitTab);
            app.ElementDropDown_4.Items = {'Choose', 'Element 1', 'Element 2'};
            app.ElementDropDown_4.ValueChangedFcn = createCallbackFcn(app, @ElementDropDown_4ValueChanged, true);
            app.ElementDropDown_4.Tooltip = {'Choose the element you want to work with'};
            app.ElementDropDown_4.Position = [13 631 112 22];
            app.ElementDropDown_4.Value = 'Choose';

            % Create ButtonGroup
            app.ButtonGroup = uibuttongroup(app.StrideGaitTab);
            app.ButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.ButtonGroup.Tooltip = {'Define the amplificationvalue of the slider'};
            app.ButtonGroup.Position = [146 624 1033 31];

            % Create x1Button
            app.x1Button = uiradiobutton(app.ButtonGroup);
            app.x1Button.Text = 'x1';
            app.x1Button.Position = [718 7 35 22];
            app.x1Button.Value = true;

            % Create x5Button
            app.x5Button = uiradiobutton(app.ButtonGroup);
            app.x5Button.Text = 'x5';
            app.x5Button.Position = [792 7 35 22];

            % Create x10Button
            app.x10Button = uiradiobutton(app.ButtonGroup);
            app.x10Button.Text = 'x10';
            app.x10Button.Position = [829 7 41 22];

            % Create x1000Button
            app.x1000Button = uiradiobutton(app.ButtonGroup);
            app.x1000Button.Text = 'x1000';
            app.x1000Button.Position = [921 7 55 22];

            % Create x3Button
            app.x3Button = uiradiobutton(app.ButtonGroup);
            app.x3Button.Text = 'x3';
            app.x3Button.Position = [755 7 35 22];

            % Create x100Button
            app.x100Button = uiradiobutton(app.ButtonGroup);
            app.x100Button.Text = 'x100';
            app.x100Button.Position = [872 7 48 22];

            % Create NextButton_3
            app.NextButton_3 = uibutton(app.ButtonGroup, 'push');
            app.NextButton_3.ButtonPushedFcn = createCallbackFcn(app, @NextButton_3Pushed, true);
            app.NextButton_3.Tooltip = {'Move to the next position'};
            app.NextButton_3.Position = [641 7 66 22];
            app.NextButton_3.Text = 'Next >>';

            % Create PrevButton_3
            app.PrevButton_3 = uibutton(app.ButtonGroup, 'push');
            app.PrevButton_3.ButtonPushedFcn = createCallbackFcn(app, @PrevButton_3Pushed, true);
            app.PrevButton_3.Tooltip = {'Move to the previous position'};
            app.PrevButton_3.Position = [569 7 66 22];
            app.PrevButton_3.Text = '<<Prev';

            % Create PositionSlider_2
            app.PositionSlider_2 = uislider(app.ButtonGroup);
            app.PositionSlider_2.MajorTicks = [];
            app.PositionSlider_2.ValueChangedFcn = createCallbackFcn(app, @PositionSlider_2ValueChanged, true);
            app.PositionSlider_2.MinorTicks = [];
            app.PositionSlider_2.Tooltip = {'Select a position'};
            app.PositionSlider_2.Position = [154 16 400 3];

            % Create PositionEditFieldLabel
            app.PositionEditFieldLabel = uilabel(app.ButtonGroup);
            app.PositionEditFieldLabel.HorizontalAlignment = 'right';
            app.PositionEditFieldLabel.Position = [9 7 58 22];
            app.PositionEditFieldLabel.Text = 'Position #';

            % Create PositionEditField
            app.PositionEditField = uieditfield(app.ButtonGroup, 'numeric');
            app.PositionEditField.Editable = 'off';
            app.PositionEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.PositionEditField.Tooltip = {'Position number'};
            app.PositionEditField.Position = [82 7 44 22];

            % Create HeelstrikeButton
            app.HeelstrikeButton = uibutton(app.StrideGaitTab, 'push');
            app.HeelstrikeButton.ButtonPushedFcn = createCallbackFcn(app, @HeelstrikeButtonPushed, true);
            app.HeelstrikeButton.Tooltip = {'Select the position that corresponds to the heel-strike event.This is the point at which the foot first contacts the ground during gait analysis.'};
            app.HeelstrikeButton.Position = [208 201 78 22];
            app.HeelstrikeButton.Text = 'Heel-strike';

            % Create DeletelastButton
            app.DeletelastButton = uibutton(app.StrideGaitTab, 'push');
            app.DeletelastButton.ButtonPushedFcn = createCallbackFcn(app, @DeletelastButtonPushed, true);
            app.DeletelastButton.Tooltip = {'Delete the last select position for the heel-strike.'};
            app.DeletelastButton.Position = [291 201 78 22];
            app.DeletelastButton.Text = 'Delete last';

            % Create CapturepositionsLabel
            app.CapturepositionsLabel = uilabel(app.StrideGaitTab);
            app.CapturepositionsLabel.HorizontalAlignment = 'center';
            app.CapturepositionsLabel.Position = [223 225 99 22];
            app.CapturepositionsLabel.Text = 'Capture positions';

            % Create ToeoffButton
            app.ToeoffButton = uibutton(app.StrideGaitTab, 'push');
            app.ToeoffButton.ButtonPushedFcn = createCallbackFcn(app, @ToeoffButtonPushed, true);
            app.ToeoffButton.Tooltip = {'Select the position that corresponds to the toe-off event in the gait cycle.'};
            app.ToeoffButton.Position = [208 148 78 22];
            app.ToeoffButton.Text = 'Toe-off';

            % Create DeletelastButton_3
            app.DeletelastButton_3 = uibutton(app.StrideGaitTab, 'push');
            app.DeletelastButton_3.ButtonPushedFcn = createCallbackFcn(app, @DeletelastButton_3Pushed, true);
            app.DeletelastButton_3.Tooltip = {'Delete the last select position for the toe-off.'};
            app.DeletelastButton_3.Position = [291 149 78 22];
            app.DeletelastButton_3.Text = 'Delete last';

            % Create MaxtoeliftButton
            app.MaxtoeliftButton = uibutton(app.StrideGaitTab, 'push');
            app.MaxtoeliftButton.ButtonPushedFcn = createCallbackFcn(app, @MaxtoeliftButtonPushed, true);
            app.MaxtoeliftButton.Tooltip = {'Select the position that corresponds to the maximum toe-lift during the gait cycle. This can be useful for analyzing the peak performance of the foot during walking or running.'};
            app.MaxtoeliftButton.Position = [208 123 78 22];
            app.MaxtoeliftButton.Text = 'Max toe-lift';

            % Create DeletelastButton_4
            app.DeletelastButton_4 = uibutton(app.StrideGaitTab, 'push');
            app.DeletelastButton_4.ButtonPushedFcn = createCallbackFcn(app, @DeletelastButton_4Pushed, true);
            app.DeletelastButton_4.Tooltip = {'Delete the last select position for the maximum toe-lift.'};
            app.DeletelastButton_4.Position = [291 123 78 22];
            app.DeletelastButton_4.Text = 'Delete last';

            % Create DeleteallButton
            app.DeleteallButton = uibutton(app.StrideGaitTab, 'push');
            app.DeleteallButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteallButtonPushed, true);
            app.DeleteallButton.Tooltip = {'Delete all captured positions.'};
            app.DeleteallButton.Position = [290 98 78 22];
            app.DeleteallButton.Text = 'Delete all';

            % Create AnalyseLabel
            app.AnalyseLabel = uilabel(app.StrideGaitTab);
            app.AnalyseLabel.HorizontalAlignment = 'center';
            app.AnalyseLabel.Position = [107 59 48 22];
            app.AnalyseLabel.Text = 'Analyse';

            % Create GaitdiagramButton
            app.GaitdiagramButton = uibutton(app.StrideGaitTab, 'push');
            app.GaitdiagramButton.ButtonPushedFcn = createCallbackFcn(app, @GaitdiagramButtonPushed, true);
            app.GaitdiagramButton.Tooltip = {'Plot the gait cycle diagram.'};
            app.GaitdiagramButton.Position = [173 36 78 22];
            app.GaitdiagramButton.Text = 'Gait diagram';

            % Create ShowallButton
            app.ShowallButton = uibutton(app.StrideGaitTab, 'push');
            app.ShowallButton.ButtonPushedFcn = createCallbackFcn(app, @ShowallButtonPushed, true);
            app.ShowallButton.Tooltip = {'Show all selected positions of the gait cycle.'};
            app.ShowallButton.Position = [208 98 78 22];
            app.ShowallButton.Text = 'Show all';

            % Create HeeloffButton
            app.HeeloffButton = uibutton(app.StrideGaitTab, 'push');
            app.HeeloffButton.ButtonPushedFcn = createCallbackFcn(app, @HeeloffButtonPushed, true);
            app.HeeloffButton.Tooltip = {'Select the position that corresponds to the moment of heel-off during the gait cycle.'};
            app.HeeloffButton.Position = [208 175 78 22];
            app.HeeloffButton.Text = 'Heel-off';

            % Create DeletelastButton_2
            app.DeletelastButton_2 = uibutton(app.StrideGaitTab, 'push');
            app.DeletelastButton_2.ButtonPushedFcn = createCallbackFcn(app, @DeletelastButton_2Pushed, true);
            app.DeletelastButton_2.Tooltip = {'Delete the last select position for the heel-off.'};
            app.DeletelastButton_2.Position = [291 175 78 22];
            app.DeletelastButton_2.Text = 'Delete last';

            % Create ColorHeelStrike
            app.ColorHeelStrike = uibutton(app.StrideGaitTab, 'push');
            app.ColorHeelStrike.ButtonPushedFcn = createCallbackFcn(app, @ColorHeelStrikePushed, true);
            app.ColorHeelStrike.Position = [182 201 22 22];
            app.ColorHeelStrike.Text = 'C';

            % Create ColorHeelOff
            app.ColorHeelOff = uibutton(app.StrideGaitTab, 'push');
            app.ColorHeelOff.ButtonPushedFcn = createCallbackFcn(app, @ColorHeelOffButtonPushed, true);
            app.ColorHeelOff.Position = [182 175 22 22];
            app.ColorHeelOff.Text = 'C';

            % Create ColorHeelOff_2
            app.ColorHeelOff_2 = uibutton(app.StrideGaitTab, 'push');
            app.ColorHeelOff_2.ButtonPushedFcn = createCallbackFcn(app, @ColorHeelOff_2ButtonPushed, true);
            app.ColorHeelOff_2.Position = [182 148 22 22];
            app.ColorHeelOff_2.Text = 'C';

            % Create ColorHeelOff_3
            app.ColorHeelOff_3 = uibutton(app.StrideGaitTab, 'push');
            app.ColorHeelOff_3.ButtonPushedFcn = createCallbackFcn(app, @ColorHeelOff_3ButtonPushed, true);
            app.ColorHeelOff_3.Position = [182 122 22 22];
            app.ColorHeelOff_3.Text = 'C';

            % Create SelectpointDropDown_2Label
            app.SelectpointDropDown_2Label = uilabel(app.StrideGaitTab);
            app.SelectpointDropDown_2Label.HorizontalAlignment = 'right';
            app.SelectpointDropDown_2Label.Position = [5 198 68 22];
            app.SelectpointDropDown_2Label.Text = 'Select point';

            % Create SelectpointDropDown_2
            app.SelectpointDropDown_2 = uidropdown(app.StrideGaitTab);
            app.SelectpointDropDown_2.Items = {'Choose'};
            app.SelectpointDropDown_2.Tooltip = {'Select the Point of Interest that you want to use as a reference point for normalizing the movement.'};
            app.SelectpointDropDown_2.Position = [80 198 90 22];
            app.SelectpointDropDown_2.Value = 'Choose';

            % Create SelectaxisDropDown_2Label
            app.SelectaxisDropDown_2Label = uilabel(app.StrideGaitTab);
            app.SelectaxisDropDown_2Label.HorizontalAlignment = 'right';
            app.SelectaxisDropDown_2Label.Position = [8 171 63 22];
            app.SelectaxisDropDown_2Label.Text = 'Select axis';

            % Create SelectaxisDropDown_2
            app.SelectaxisDropDown_2 = uidropdown(app.StrideGaitTab);
            app.SelectaxisDropDown_2.Items = {'Choose', 'x', 'y', 'xy', 'Revert'};
            app.SelectaxisDropDown_2.ValueChangedFcn = createCallbackFcn(app, @SelectaxisDropDown_2ValueChanged, true);
            app.SelectaxisDropDown_2.Tooltip = {'Select the normalization method for the data - either on x, y, or xy axes. Use ''Revert'' to restore the original data.'};
            app.SelectaxisDropDown_2.Position = [80 171 89 22];
            app.SelectaxisDropDown_2.Value = 'Choose';

            % Create NormalisepositionsLabel
            app.NormalisepositionsLabel = uilabel(app.StrideGaitTab);
            app.NormalisepositionsLabel.HorizontalAlignment = 'center';
            app.NormalisepositionsLabel.Position = [43 225 110 22];
            app.NormalisepositionsLabel.Text = 'Normalise positions';

            % Create CalculateButton_2
            app.CalculateButton_2 = uibutton(app.StrideGaitTab, 'push');
            app.CalculateButton_2.ButtonPushedFcn = createCallbackFcn(app, @CalculateButton_2Pushed, true);
            app.CalculateButton_2.Tooltip = {'Calculate the gait cycle parameters.'};
            app.CalculateButton_2.Position = [91 36 80 22];
            app.CalculateButton_2.Text = 'Calculate';

            % Create TLAButton
            app.TLAButton = uibutton(app.StrideGaitTab, 'push');
            app.TLAButton.ButtonPushedFcn = createCallbackFcn(app, @TLAButtonPushed, true);
            app.TLAButton.Tooltip = {'Plot the toe lift amplitude'};
            app.TLAButton.Position = [254 35 78 23];
            app.TLAButton.Text = 'TLA';

            % Create ContextMenu
            app.ContextMenu = uicontextmenu(app.MotionAnalyserUIFigure);
            
            % Assign app.ContextMenu
            app.UIAxes.ContextMenu = app.ContextMenu;

            % Show the figure after all components are created
            app.MotionAnalyserUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = MotionAnalyser

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.MotionAnalyserUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.MotionAnalyserUIFigure)
        end
    end
end