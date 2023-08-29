# Fetching the git object from second question.


#Running Loop for getting the type of the object


count=0
for item in $( ls .git/objects)
do
      #if [ $count == 0 ];
      #then
      #count=1
      #echo count
      #continue
      #fi
      #echo $item
      #count=0;
      if [ ${#item} == 2 ];
      then 
      to=$item;
      
      for temp in $( ls .git/objects/$item)
      do
      to+=$temp
      done
      
      
      git cat-file -t $to;
      git cat-file -p $to;
      
      #echo "Type Of the Git object is :" $ans
      #echo $content
      fi
      

done

#Done
      


