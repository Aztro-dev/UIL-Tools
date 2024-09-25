
verify () {
    if test -f "$d"SOLVED; then
        file=$(find $d*.java 2>/dev/null)
        echo "\033[0;32mPassed \033[0m$base_file_name"
        continue
    fi

    echo "\033[0;35mTESTING\033[0m $base_file_name..."
    cd JudgeData/
    java ../"$d"/"$base_file_name".java > ../temp.out
    cd ../

    output_file="$base_file_name".out

    diff=$(diff --strip-trailing-cr temp.out JudgeOutputFiles/"$output_file" -q)

    if [[ "$diff" == "" ]]; then
        echo "\033[0;32mPassed \033[0m$base_file_name"
    else
        echo "\033[0;31mFAILED\033[0m $base_file_name"
    fi
}

for file in $(find . -name '*.java' | sort); do
    d=$(dirname $file)/
    base_file_name=$(basename $file .java)
    if [[ $# -gt 0 ]]; then
        continue;
    fi
    verify
done

for file in "$@"; do
    file=${file///} # Get rid of slash
    d=./$file/
    base_file_name=$file
    verify
done


rm -f temp.out
