str='195256 СПб Науки 49';
disp('Оригинальная строка =');
disp(['    "' str '"']); disp(' ');
spacePoz = findstr(str, ' ');
disp('Длина строки без пробелов =');
disp(length(str) - length(findstr(str, ' ')));

word1 = str(1:spacePoz(1)-1);
word2 = str(spacePoz(end)+1:end);
newStr = strcat(word2,str(spacePoz(1):spacePoz(end)));
strRevert = strcat (newStr,[' ' word1])

i = 0;
numStr = str;
while i < length(numStr)
    i = i  + 1;
    switch numStr(i)
        case '0'
            numStr = [numStr(1:i-1) 'ноль' numStr(i+1:end)];
        case '1'
            numStr = [numStr(1:i-1) 'один' numStr(i+1:end)];
        case '2'
            numStr = [numStr(1:i-1) 'два' numStr(i+1:end)];
        case '3'
            numStr = [numStr(1:i-1) 'три' numStr(i+1:end)];
        case '4'
            numStr = [numStr(1:i-1) 'четыри' numStr(i+1:end)];
        case '5'
            numStr = [numStr(1:i-1) 'пять' numStr(i+1:end)];
        case '6'
            numStr = [numStr(1:i-1) 'шесть' numStr(i+1:end)];
        case '7'
            numStr = [numStr(1:i-1) 'семь' numStr(i+1:end)];
        case '8'
            numStr = [numStr(1:i-1) 'восемь' numStr(i+1:end)];
        case '9'
            numStr = [numStr(1:i-1) 'девять' numStr(i+1:end)];
    end
end
numStr

i = 1;
numArray = 0;
[a7, tf] = str2num(str(1:spacePoz(1)-1));
if tf
    numArray(i) = a7;
    i = i + 1;
end
for j = 1:length(spacePoz)-1
    [a7, tf] = str2num(str(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        numArray(i) = a7;
        i = i + 1;
    end
end
[a7, tf] = str2num(str(spacePoz(end)+1:end));
if tf
    numArray(i) = a7;
    i = i + 1;
end
numArray

f=fopen('in7.txt','wt');
fprintf(f,'195256 СПб Науки 49\n4.79 2.001 9.921 3.21 0.25\n1.129 1.865 8.341 9.33 8.01\n8.136 8.401 7.133 3.12 3.44');
fclose(f);
disp('in7.txt файл сгенирирован.'); disp(' ');

f=fopen('in7.txt','rt');
fileStr=fgetl(f);
i = 1;
[a7, tf] = str2num(fileStr(1:spacePoz(1)-1));
if tf
    fileVector(i) = a7;
    i = i + 1;
end
for j = 1:length(spacePoz)-1
    [a7, tf] = str2num(fileStr(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        fileVector(i) = a7;
        i = i + 1;
    end
end
[a7, tf] = str2num(fileStr(spacePoz(end)+1:end));
if tf
    fileVector(i) = a7;
    i = i + 1;
end
disp('fileVector =');
disp(fileVector);
fileStr=fgetl(f);
spacePoz = findstr(fileStr, ' ');
i = 1;
[a7, tf] = str2num(fileStr(1:spacePoz(1)-1));
if tf
    fileMatrix(1,i) = a7;
    i = i + 1;
end
for j = 1:length(spacePoz)-1
    [a7, tf] = str2num(fileStr(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        fileMatrix(1,i) = a7;
        i = i + 1;
    end
end
[a7, tf] = str2num(fileStr(spacePoz(end)+1:end));
if tf
    fileMatrix(1,i) = a7;
    i = i + 1;
end
fileStr=fgetl(f);
spacePoz = findstr(fileStr, ' ');
i = 1;
[a7, tf] = str2num(fileStr(1:spacePoz(1)-1));
if tf
    fileMatrix(2,i) = a7;
    i = i + 1;
end
for j = 1:length(spacePoz)-1
    [a7, tf] = str2num(fileStr(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        fileMatrix(2,i) = a7;
        i = i + 1;
    end
end
[a7, tf] = str2num(fileStr(spacePoz(end)+1:end));
if tf
    fileMatrix(2,i) = a7;
    i = i + 1;
end
fileStr=fgetl(f);
spacePoz = findstr(fileStr, ' ');
i = 1;
[a7, tf] = str2num(fileStr(1:spacePoz(1)-1));
if tf
    fileMatrix(3,i) = a7;
    i = i + 1;
end
for j = 1:length(spacePoz)-1
    [a7, tf] = str2num(fileStr(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        fileMatrix(3,i) = a7;
        i = i + 1;
    end
end
[a7, tf] = str2num(fileStr(spacePoz(end)+1:end));
if tf
    fileMatrix(3,i) = a7;
    i = i + 1;
end
fileMatrix
fclose(f);

FileHtml=fopen(['lab3_7.html'],'wt');
fprintf(FileHtml,['<HTML>\n']);
fprintf(FileHtml,['<head>\n']);
fprintf(FileHtml,['<title>Отчет по лабораторной работе \n']);
fprintf(FileHtml,['</title>\n']);
fprintf(FileHtml,['<META HTTP-EQUIV="Content-Type"  CONTENT="text/html; charset=windows">\n']);
fprintf(FileHtml,['</head>\n']);
fprintf(FileHtml,['<body>\n']);
fprintf(FileHtml,['<center><H3>ОТЧЕТ<br>по лабораторной  работе</h3></center>\n']);
n1=1;
n2=2;
fprintf(FileHtml,['<h3>Исходные данные</h3>\n']);
fprintf(FileHtml,'<br>y = sin(7*x)<br> x - вектор от 1 до 5 с шагом 0.1 ',n1,n2);
h1=figure('Name','var7.svg y = sin(7*x)');
hold on
x = [1:0.1:5];
y = sin(7*x);
plot(x,y)
hold off
saveas(h1,'var7', 'svg');
fprintf(FileHtml,['<br><br> График \n']);
fprintf(FileHtml,['<a href="var7.svg">']);
fprintf(FileHtml,['<br><img src="var7.svg" height="500" >' '\n']);
fprintf(FileHtml,['</a>\n']);
fprintf(FileHtml,['</body>\n']);
fprintf(FileHtml,['</HTML>\n']);
fclose(FileHtml);
disp('HTML отчет сгенирирован.');