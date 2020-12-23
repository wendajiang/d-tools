echo "old file directory is " $1
echo "new file directory is " $2 
olddir=$1
newdir=$2

if [ ! -d $olddir ];then
    echo $olddir "no such dir"
    exit
fi 


function recur_rmofile() {
for file in `ls $1`
do 
    if [ -d $1"/"$file ];then
        recur_rmofile $1"/"$file   #递归处理文件目录
    else 
        #文件处理
        if [ "${file##*.}"x = "o"x ];then
            allpath=$1"/"$file
            echo $allpath
            rm $allpath
            # echo "cp" $allpath $newpath
        fi
    fi
done
}

recur_rmofile $olddir

