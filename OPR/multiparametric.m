function varargout = multiparametric(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @multiparametric_OpeningFcn, ...
                   'gui_OutputFcn',  @multiparametric_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before multiparametric is made visible.
function multiparametric_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
set(handles.textValueOfParameters,'String',get(handles.sliderNumberOfParameters, 'Value'));
set(handles.textValueOfFunctions,'String',get(handles.sliderNumberOfFunctions, 'Value'));
clearData(handles);

% --- Outputs from this function are returned to the command line.
function varargout = multiparametric_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function sliderNumberOfParameters_Callback(hObject, eventdata, handles)
set(handles.textValueOfParameters, 'String', num2str(get(hObject, 'Value')));
clearData(handles);

% --- Executes during object creation, after setting all properties.
function sliderNumberOfParameters_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject, 'Max', 5, 'Min', 1, 'Value', 1, 'SliderStep', [1/4 1/4]);

function sliderNumberOfFunctions_Callback(hObject, eventdata, handles)
set(handles.textValueOfFunctions, 'String', num2str(get(hObject, 'Value')));
clearData(handles);

% --- Executes during object creation, after setting all properties.
function sliderNumberOfFunctions_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject, 'Max', 5, 'Min', 1, 'Value', 1, 'SliderStep', [1/4 1/4]);

function editMinX1_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editMinX1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editMaxX1_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editMaxX1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editMinX2_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editMinX2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editMaxX2_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editMaxX2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editMinX3_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editMinX3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editMaxX3_Callback(hObject, eventdata, handles)

function editMaxX3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editMinX4_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editMinX4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editMaxX4_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editMaxX4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editMinX5_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editMinX5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editMaxX5_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editMaxX5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editF1_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editF1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editF2_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editF2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editF3_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editF3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editF4_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editF4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function editF5_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editF5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editNumberOfSolutions_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editNumberOfSolutions_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editL1_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editL1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function editL2_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editL2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editL3_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editL3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editL4_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editL4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editL5_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editL5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function editDirectionF1_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editDirectionF1_CreateFcn(hObject, eventdata, handles)
     See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editDirectionF2_Callback(hObject, eventdata, handles)  

% --- Executes during object creation, after setting all properties.
function editDirectionF2_CreateFcn(hObject, eventdata, handles)
      See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editDirectionF3_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editDirectionF3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editDirectionF5_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editDirectionF5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editDirectionF4_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editDirectionF4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
    
% --- Executes on button press in pushbuttonGetStartPoints.
function pushbuttonGetStartPoints_Callback(hObject, eventdata, handles)
clearData(handles);
[numberOfSolutions, numberOfParameters] = getDefaultData(handles);
tableData = getStartPoints(numberOfSolutions, numberOfParameters, handles);
set(handles.table,'data', tableData);
set(handles.pushbuttonGetFunctionsValue, 'Enable', 'on');

function tableData = getStartPoints(numberOfSolutions, numberOfParameters, handles)
tableData = [];
for i=1:numberOfSolutions
    newRow = [];
    arrayOfMin = getDataFromEdit(handles, numberOfParameters, 'editMinX');
    arrayOfMax = getDataFromEdit(handles, numberOfParameters, 'editMaxX');
    for j=1:numberOfParameters
        newRow = [newRow, {randi([str2num(arrayOfMin{j}), str2num(arrayOfMax{j})])}];
    end
    tableData = [tableData; newRow];
end


% --- Executes on button press in pushbuttonGetFunctionsValue.
function pushbuttonGetFunctionsValue_Callback(hObject, eventdata, handles)
tableData = get(handles.table, 'Data');
matrixOfParameters = getMatrixOfParameters(handles);
parametersCount = numel(matrixOfParameters(1, :));
matrixOfCriterions = getFunctionsValue(matrixOfParameters, parametersCount,  handles);
set(handles.table, 'Data', [tableData, matrixOfCriterions]);
set(handles.pushbuttonGetPoretoPoints, 'Enable', 'on');

function matrixOfCriterions = getFunctionsValue(matrixOfParameters, parametersCount, handles)
[numberOfSolutions, numberOfParameters, numberOfFunctions] = getDefaultData(handles);
for i=1:numberOfSolutions
    for j=1:numberOfFunctions
        [funct, countOfInpuntParameters] = getFunction(handles, j);
        if(parametersCount < countOfInpuntParameters)
            msgbox('Error! Count of parameters should not be less than count of input parameters.');
            return;
        end
        arrayOfParameters = cell2mat(matrixOfParameters(i, :));
        value = getValueOfFunction(countOfInpuntParameters, funct, arrayOfParameters);
        matrixOfCriterions(i, j) = {value};
    end    
end

function [funct, countOfInpuntParameters] = getFunction(handles, number)
funstr = get(handles.(strcat('editF', num2str(number))), 'String');
funct = inline(funstr);
countOfInpuntParameters = nargin(funct);

function value = getValueOfFunction(numberOfImpuntParameters, funct, arrayOfParameters)
switch numberOfImpuntParameters
    case 1
        value = funct(arrayOfParameters(1));
    case 2
        value = funct(arrayOfParameters(1),arrayOfParameters(2));
    case 3
        value = funct(arrayOfParameters(1),arrayOfParameters(2),arrayOfParameters(3));
    case 4 
        value = funct(arrayOfParameters(1),arrayOfParameters(2),arrayOfParameters(3),arrayOfParameters(4));
    case 5
        value = funct(arrayOfParameters(1),arrayOfParameters(2),arrayOfParameters(3),arrayOfParameters(4),arrayOfParameters(5));
end

% --- Executes on button press in pushbuttonGetPoretoPoints.
function pushbuttonGetPoretoPoints_Callback(hObject, eventdata, handles)
tableData = get(handles.table, 'Data');
poretoValues = getPoretoPoints(tableData, handles);
set(handles.table, 'Data', [tableData, poretoValues]);
set(handles.pushbuttonNormalizePoints, 'Enable', 'on');
set(handles.pushbuttonMainCriterion, 'Enable', 'on');

function poretoValues = getPoretoPoints(tableData, handles)
addColumnNames(handles, {'Poreto Points', 'Power'});
[numberOfSolutions, numberOfParameters, numberOfFunctions] = getDefaultData(handles);
[matrixOfCriterions, indexFirstColumn, indexEndColumn] = getMatrixOfCriterions(handles); 
poretoValues = setDefaultRange(numberOfSolutions);
directionOfFunctions = getDataFromButtonGroups(handles, numberOfFunctions, 'uipanelFunction');
for i=1:numberOfSolutions
    for j=i+1:numberOfSolutions
        rowOne = cell2mat(matrixOfCriterions(i, :));
        rowTwo = cell2mat(matrixOfCriterions(j, :));
        string = compareRow(rowOne, rowTwo, numberOfFunctions, directionOfFunctions);  
        poretoValues = setPoretoPoints(poretoValues, string, i, j);
    end
end
indexInColumn = getIndexOfMax(cell2mat(poretoValues(:, 2)));
point = num2str(cell2mat(poretoValues(indexInColumn, 2)));
poretoValues(indexInColumn, 2) = {markBest(point)};

function defaultValues = setDefaultRange(numberOfSolutions, indexEndColumn)
for i=1:numberOfSolutions
    defaultValues(i, 1) = {'K'};
    defaultValues(i, 2) = {'0'};
end

function string = compareRow(rowOne, rowTwo, numberOfFunctions, directionOfFunctions)
compareArray = {};
for i=1:numberOfFunctions
    compareArray{end+1} = compareTwoValue(rowOne(i),rowTwo(i), directionOfFunctions{i});
end
if checkOnBool(compareArray, true)
   string = 'isBetter';
elseif checkOnBool(compareArray, false)
    string = 'isWorse';
else 
    string = 'areEqual';
end

function bool = compareTwoValue(a, b, type)
if strcmp(type, 'UP')
    if a > b 
        bool = true;
    elseif a < b
        bool = false;
    elseif a == b 
        bool = '';
    end
else strcmp(type, 'DOWN')
   if a < b 
        bool = true;
    elseif a > b
        bool = false;
    elseif a == b 
        bool = '';
    end 
end

function bool = checkOnBool(array, type)
bool = true;
for i=1:numel(array)
    if array{i} == ''
        continue;
    elseif array{i} ~= type;
        bool = false;
        return;
    end
end

function defauldValues = setPoretoPoints(defauldValues, string, i, j)
if strcmp(string, 'isBetter')
    if ~strcmp(defauldValues(i, 1), 'C')
        defauldValues(i, 1) = {'K'};
    end
    value = str2num(char(defauldValues(i, 2))) + 1;
    defauldValues(i, 2) = {num2str(value)};
    defauldValues(j, 1) = {'C'} ;
elseif strcmp(string,'isWorse')
    if ~strcmp(defauldValues(i, 1), 'C') 
        defauldValues(j, 1) = {'K'}; 
    end
    defauldValues(i, 1) = {'C'} ;
    value = str2num(char(defauldValues(j, 2))) + 1;
    defauldValues(j, 2) = {num2str(value)};           
end

% --- Executes on button press in pushbuttonNormalizePoints.
function pushbuttonNormalizePoints_Callback(hObject, eventdata, handles)
tableData = get(handles.table, 'Data');
[numberOfSolutions, numberOfParameters, numberOfFunctions, totalDirection] = getDefaultData(handles);
[matrixOfCreterions, indexFirstColumn, columnCount] = getMatrixOfCriterions(handles);
poretoValues = tableData(:, indexFirstColumn + columnCount);
if ~checkForContinue(poretoValues, numberOfSolutions, numberOfParameters, numberOfFunctions)
    msgbox('Error! Next calculating is not make sense.');
    return;
end 
directionOfFunctions = getDataFromButtonGroups(handles, numberOfFunctions, 'uipanelFunction');
[sortedValues, columnNames] = sortPoints(matrixOfCreterions, poretoValues, numberOfSolutions, columnCount, directionOfFunctions, totalDirection);
addColumnNames(handles, columnNames);
[normalizedMatrix, columnNames] = normalizePoints(sortedValues, poretoValues, numberOfSolutions, columnCount);
addColumnNames(handles, columnNames);
set(handles.table, 'Data', [tableData, sortedValues, normalizedMatrix]);
set(handles.pushbuttonMainCriterion, 'Enable', 'on');
set(handles.pushbuttonMiniMax, 'Enable', 'on');

function [sortedValues, columnNames]  = sortPoints(matrixOfCreterions, poretoValues, numberOfSolutions, columnCount, directionOfFunctions, totalDirection)
columnNames = {};
for p=1:columnCount
    columnNames{end+1} = strcat('UP f', num2str(p));
end
for i=1:numberOfSolutions
    if ~strcmp(poretoValues(i), 'C')
        for j=1:columnCount      
            if strcmp(directionOfFunctions{j}, totalDirection) 
                value = cell2mat(matrixOfCreterions(i, j));
                sortedValues(i, j) = num2cell(value);
            else 
                value = cell2mat(matrixOfCreterions(i, j)) * (-1);
                sortedValues(i, j) = num2cell(value);
            end
        end  
    else
       sortedValues(i, :) = {[]}; 
    end
end


function [normalizedMatrix, columnNames]  = normalizePoints(sortedValues, poretoValues, numberOfSolutions, numberOfFunctions)
arrayOfMin = {};
arrayOfDivider = {};
columnNames = {};
for p=1:numberOfFunctions
    column = cell2mat(sortedValues( : , p));
    arrayOfMin{end+1} = min(column);
    arrayOfDivider{end+1} = max(column) - min(column);
    columnNames{end+1} = strcat('KN-', num2str(p));
end
for i=1:numberOfSolutions
    if ~strcmp(poretoValues(i), 'C')  
        for j=1:numberOfFunctions
            value = (cell2mat(sortedValues(i, j)) - arrayOfMin{j}) / arrayOfDivider{j};
            normalizedMatrix(i, j) = num2cell(value);
        end
    else
       normalizedMatrix(i, :) = {[]}; 
    end
end

function isContinue = checkForContinue(poretoValues, numberOfSolutions, numberOfParameters, numberOfFunctions)
count = 0;
for i=1:numberOfSolutions
    if strcmp(poretoValues(i), 'K')
        count = count + 1;
    end
end
isContinue = count > 1; 

% --- Executes on button press in pushbuttonMainCriterion.
function pushbuttonMainCriterion_Callback(hObject, eventdata, handles)
tableData = get(handles.table, 'Data');
matrixOfCriterions = getMatrixOfCriterions(handles);
rowCount = addColumnNames(handles, {'Main Criterion'});
numberOfMainCriterion = str2num(get(handles.editMainCriterion, 'String'));
[numberOfSolutions, numberOfParameters, numberOfFunctions, totalDirection] = getDefaultData(handles);
matrixWithoutColumn = cell2mat(matrixOfCriterions);
mainColumn = matrixWithoutColumn(:, numberOfMainCriterion);
matrixWithoutColumn(:, numberOfMainCriterion) = [];
arrayOfMin = getDataFromEdit(handles, numberOfFunctions, 'editMinF');
arrayOfMax = getDataFromEdit(handles, numberOfFunctions, 'editMaxF');
arrayOfMin(numberOfMainCriterion) = [];
arrayOfMax(numberOfMainCriterion) = [];
arrayForCompare = [];
if strcmp(totalDirection, 'UP')
    value = intmin('int32');
else
    value = intmax('int32');
end
for i=1:numberOfSolutions
    arrayForCompare(i) = mainColumn(i);
    for j=1:numberOfFunctions - 1
        if (matrixWithoutColumn(i, j) <= str2num(cell2mat(arrayOfMin(j)))) || (matrixWithoutColumn(i, j) >= str2num(cell2mat(arrayOfMax(j))))
            arrayForCompare(i) = value;
            j = numberOfFunctions;  
        end
    end
end
if strcmp(totalDirection, 'UP')
    indexInColumn = getIndexOfMax(arrayForCompare);
else 
    indexInColumn = getIndexOfMin(arrayForCompare);
end
point = num2str(mainColumn(indexInColumn));
mainColumn = num2cell(mainColumn);
mainColumn(indexInColumn) = {markBest(point)};
set(handles.table, 'Data', [tableData, mainColumn]);

% --- Executes on button press in pushbuttonMiniMax.
function pushbuttonMiniMax_Callback(hObject, eventdata, handles)
tableData = get(handles.table, 'Data');
rowCount = addColumnNames(handles, {'Min Max'});
[numberOfSolutions, numberOfParameters, numberOfFunctions] = getDefaultData(handles);
for i=1:numberOfSolutions
 if ~strcmp(tableData(i, numberOfParameters + numberOfFunctions + 1), 'C') 
 currPoint = cell2mat(tableData(i, numberOfParameters + numberOfFunctions * 2 + 3 : numberOfParameters + numberOfFunctions*3 + 2));
 tableData(i, rowCount + 1) = {getDistanceBetweenPoint(currPoint, numberOfSolutions, numberOfFunctions)};
 end
end
column = getDataFromColumn(tableData(:, rowCount + 1), intmax('int32'));
indexInColumn = getIndexOfMin(column);
point = num2str(cell2mat(tableData(indexInColumn, rowCount + 1)));
tableData(indexInColumn, rowCount + 1) = {markBest(point)};
set(handles.table, 'Data', tableData);

function distance = getDistanceBetweenPoint(firstPoint, numberOfSolutions, count)
max = 0;
for i=1:numberOfSolutions 
 if firstPoint(i) > max 
 max = firstPoint(i);
 end
end
distance = max;


% --- Executes on button press in pushbuttonClear.
function pushbuttonClear_Callback(hObject, eventdata, handles)
clearData(handles);

% --- Executes when selected cell(s) is changed in table.
function table_CellSelectionCallback(hObject, eventdata, handles)
direction = get(get(handles.uipanelSortDirection, 'SelectedObject'), 'String');
tableData = get(handles.table, 'Data');
if numel(eventdata.Indices) == 0 
    return;
end
if strcmp(direction, 'ascend')
    emptyValue = intmax('int32');
else
    emptyValue = intmin('int32');
end
column = getDataFromColumn(tableData(:, eventdata.Indices(2)),emptyValue);
if strcmp(class(column), 'cell')
    column = char(cell2mat(column));
end
[~,idx] = sort(column, direction);
disp(idx);
try
    tableData = tableData(idx, :);
catch
     msgbox('Error! It''s impossible to sort by this column');
end
numberOfSolutions = numel(tableData(:,1));
set(handles.editNumberOfSolutions, 'string', numberOfSolutions);
set(handles.table, 'Data', tableData);

%Helpers
function generateColunmName(handles, count, type)
allNames = get(handles.table, 'columnname');
newNames = {};
if type == 'X'
    [newNames] =  addNewNames(newNames, type, count);
    [newNames] = addOldNames(newNames,allNames, type);
else
    [newNames] = addOldNames(newNames,allNames, type);
    [newNames] =  addNewNames(newNames, type, count);
end
set(handles.table, 'columnname', newNames);

function [newNames, columnFormat] = addNewNames(newNames, type, count) 
for i=1:count
    newNames{end+1} = strcat(type, num2str(i));
end

function [newNames, columnFormat] = addOldNames(newNames, allNames, type) 
count  = numel(allNames);
for i=1:count
    bool = isempty(strfind(allNames{i}, type));
    if bool == 1
        newNames{end+1}  = allNames{i};
    end
end

function prepareEdits(handles, count, type)
for i=1:5
    s = strcat('edit', type, num2str(i));
    set(handles.(s), 'Enable', 'off');
    if(i <= count)
    set(handles.(s), 'Enable', 'on');
    end
end

function dataArray = getDataFromEdit(handles, count, type)
dataArray = {};
for i=1:count
     dataArray{end+1} =  get(handles.(strcat(type, num2str(i))), 'String');
end

function dataArray = getDataFromButtonGroups(handles, count, type)
dataArray = {};
for i=1:count
     dataArray{end+1} = get(get(handles.(strcat(type,num2str(i))), 'SelectedObject'), 'String');
end

function columnCount = addColumnNames(handles, arrayOfNames)
columnNames = get(handles.table, 'columnname');
columnCount = numel(columnNames);
for i=1:numel(arrayOfNames)
    columnNames{end+1} = arrayOfNames{i};
end
set(handles.table, 'columnname', columnNames);

function array = getDataFromColumn(column, emptyValue)
array = [];
for i=1:numel(column)
    value = cell2mat(column(i));
    if isempty(value)
        array = [array emptyValue];
    end
    array = [array value];
end

function indexOfMin = getIndexOfMin(column)
[value, index] = min(column);
indexOfMin = index;

function indexOfMax = getIndexOfMax(column)
[value, index] = max(column);
indexOfMax = index;

function point = markBest(value)
point = strcat(...
    '<html><span style="color: #FF0000; font-weight: bold;">', ...
    value, ...
    '</span></html>');

function matrixOfParameters = getMatrixOfParameters(handles)
columnNames = get(handles.table, 'columnname');
indexEndColumn = 0;
indexFirstColumn = 0;
for i=1:numel(columnNames)
    if strfind(columnNames{i}, 'X')
        if(strfind(columnNames{i}, '1')) 
            indexFirstColumn = i;
        end
       indexEndColumn = indexEndColumn + 1; 
    end
end
tableData = get(handles.table, 'Data');
matrixOfParameters = tableData( : , indexFirstColumn : indexEndColumn);

function [matrixOfCriterions, indexFirstColumn, indexEndColumn] = getMatrixOfCriterions(handles)
columnNames = get(handles.table, 'columnname');
indexEndColumn = 0;
indexFirstColumn = 0;
for i=1:numel(columnNames)
    if strfind(columnNames{i}, 'F')
        if(strfind(columnNames{i}, '1')) 
            indexFirstColumn = i;
        end
       indexEndColumn = indexEndColumn + 1; 
    end
end
tableData = get(handles.table, 'Data');
matrixOfCriterions = tableData( : , indexFirstColumn : indexFirstColumn + indexEndColumn - 1);


function clearData(handles) 
set(handles.table, 'Data', [[];[]]);
set(handles.table, 'columnname', []);
[numberOfSolutions, numberOfParameters, numberOfFunctions] = getDefaultData(handles);
prepareEdits(handles, numberOfParameters, 'MaxX');
prepareEdits(handles, numberOfParameters, 'MinX');
prepareEdits(handles, numberOfFunctions, 'F');
prepareEdits(handles, numberOfFunctions, 'MinF');
prepareEdits(handles, numberOfFunctions, 'MaxF');
generateColunmName(handles, numberOfParameters, 'X');
generateColunmName(handles,numberOfFunctions , 'F');
set(handles.pushbuttonGetFunctionsValue, 'Enable', 'off');
set(handles.pushbuttonGetPoretoPoints, 'Enable', 'off');
set(handles.pushbuttonNormalizePoints, 'Enable', 'off');
set(handles.pushbuttonMainCriterion, 'Enable', 'off');
set(handles.pushbuttonMiniMax, 'Enable', 'off');

function [numberOfSolutions, numberOfParameters, numberOfFunctions, totalDirection] = getDefaultData(handles)
numberOfFunctions = get(handles.sliderNumberOfFunctions, 'Value');
numberOfParameters = get(handles.sliderNumberOfParameters, 'Value');
numberOfSolutions = str2num(get(handles.editNumberOfSolutions, 'String'));
totalDirection = get(get(handles.uipanelTotalDirection, 'SelectedObject'), 'String');

function editMinF1_Callback(hObject, eventdata, handles)
% hObject    handle to editMinF1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMinF1 as text
%        str2double(get(hObject,'String')) returns contents of editMinF1 as a double


% --- Executes during object creation, after setting all properties.
function editMinF1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMinF1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editMaxF1_Callback(hObject, eventdata, handles)
% hObject    handle to editMaxF1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMaxF1 as text
%        str2double(get(hObject,'String')) returns contents of editMaxF1 as a double


% --- Executes during object creation, after setting all properties.
function editMaxF1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMaxF1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editMinF2_Callback(hObject, eventdata, handles)
% hObject    handle to editMinF2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMinF2 as text
%        str2double(get(hObject,'String')) returns contents of editMinF2 as a double


% --- Executes during object creation, after setting all properties.
function editMinF2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMinF2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editMaxF2_Callback(hObject, eventdata, handles)
% hObject    handle to editMaxF2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMaxF2 as text
%        str2double(get(hObject,'String')) returns contents of editMaxF2 as a double


% --- Executes during object creation, after setting all properties.
function editMaxF2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMaxF2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editMinF3_Callback(hObject, eventdata, handles)
% hObject    handle to editMinF3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMinF3 as text
%        str2double(get(hObject,'String')) returns contents of editMinF3 as a double


% --- Executes during object creation, after setting all properties.
function editMinF3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMinF3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editMaxF3_Callback(hObject, eventdata, handles)
% hObject    handle to editMaxF3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMaxF3 as text
%        str2double(get(hObject,'String')) returns contents of editMaxF3 as a double


% --- Executes during object creation, after setting all properties.
function editMaxF3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMaxF3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editMinF4_Callback(hObject, eventdata, handles)
% hObject    handle to editMinF4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMinF4 as text
%        str2double(get(hObject,'String')) returns contents of editMinF4 as a double


% --- Executes during object creation, after setting all properties.
function editMinF4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMinF4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editMaxF4_Callback(hObject, eventdata, handles)
% hObject    handle to editMaxF4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMaxF4 as text
%        str2double(get(hObject,'String')) returns contents of editMaxF4 as a double


% --- Executes during object creation, after setting all properties.
function editMaxF4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMaxF4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editMinF5_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function editMinF5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editMaxF5_Callback(hObject, eventdata, handles)
% hObject    handle to editMaxF1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMaxF1 as text
%        str2double(get(hObject,'String')) returns contents of editMaxF1 as a double


% --- Executes during object creation, after setting all properties.
function editMaxF5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMaxF1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function editMainCriterion_Callback(hObject, eventdata, handles)
% hObject    handle to editMainCriterion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editMainCriterion as text
%        str2double(get(hObject,'String')) returns contents of editMainCriterion as a double


% --- Executes during object creation, after setting all properties.
function editMainCriterion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editMainCriterion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
