mkdir q7
cd q7
git init

for i in {1..5}
do
echo "iit" > $i.txt
done

git add 1.txt 2.txt 3.txt 4.txt 5.txt
git commit -m "first"

mkdir new
cp 1.txt 2.txt 3.txt 4.txt 5.txt new
git add new
git commit -m "Second"

rm 1.txt 2.txt 3.txt 4.txt 5.txt
git add 1.txt 2.txt 3.txt 4.txt 5.txt
git commit -m "done"
git graph
