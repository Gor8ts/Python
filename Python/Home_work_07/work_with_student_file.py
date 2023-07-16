def Read_from_File (FileName):
    with open(FileName) as fileHandler:
        data = fileHandler.read()
        print (data)


def add_new_Student (FileName,arg):
    with open(FileName,'a') as fileHandler:
        data = fileHandler.write(arg)

def del_Student (FileName,Name,Surname):
    with open(FileName,'r+') as fileHandler:
        lines = fileHandler.readlines()
        fileHandler.seek(0)
        
        for line in lines:
            parts = line.split()
            name = parts[0].strip()
            surname = parts[1].strip()
            if name != Name and surname != Surname:
                fileHandler.write(line)
        fileHandler.truncate()

def change_info (FileName,old_data,new_data):
    with open(FileName,'r+') as fileHandler:
        data = fileHandler.read()
        updated_data = data.replace(old_data,new_data)
        fileHandler.seek(0)
        fileHandler.write(updated_data)
        fileHandler.truncate()


def get_info (FileName,parameter):
    with open(FileName,'r') as fileHandler:
        for line in fileHandler:
            if parameter in line:
                print(line)

def get_info_alphabet(FileName):
    with open(FileName) as fileHandler:
        lines = fileHandler.readlines()
      
        sort_lines = sorted(lines)
        for line in sort_lines:
            print(line)
        
def excellent_students(FileName):
    with open(FileName,'r') as fileHandler:

        for line in fileHandler:
            parts = line.split()
            average_line = float(parts[2].strip())
            if average_line >= 10:
                print (line)
        
        
    
        
myFile = '.\Python\Python\Home_work_07\students.txt'  
excellent_students(myFile)
# get_info_alphabet(myFile)
# get_info(myFile,'2')
# change_info(myFile,'10.5','2')
# del_Student(myFile,'Shalabay','Anastasiya')
# print("Original file content:")
# Read_from_File(myFile)
# add_new_Student(myFile,'\nShalabay Anastasiya 11 ')
# print('Modified file content:')
# Read_from_File(myFile)
