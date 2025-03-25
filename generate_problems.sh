template_contents=$(cat ../template.java)

for problem_name in "$@" 
do
    lowercase=$(echo "${problem_name}" | tr '[:upper:]' '[:lower:]')
    first_letter=$(echo "${problem_name:0:1}" | tr '[:lower:]' '[:upper:]')  # Capitalize first letter
    rest=$(echo "${problem_name:1}")  # Get the rest of the string
    name=$first_letter$rest
    contents="${template_contents:0:108} $name${template_contents:117:169}$lowercase${template_contents:294}"
    mkdir "$name"
    echo "$contents" > $name/$name.java
    
    if test -d "./StudentData"; then
        cp ./StudentData/$lowercase.dat $name/$lowercase.dat
    fi
done
