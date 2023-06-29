#!/bin/env bash
: "
Unit Test shellscript project
"

SRC_DIR="../src"
SRC_FILE_NAME="ssh-exec"
SRC_FILE="$SRC_DIR/$SRC_FILE_NAME"

assert()
{
    : "
    Get unit test result code and 
    process/check
    "
    res_code="$1"
    cmd_str="$2"

    if [[ "$res_code" == "0" ]]; then
        # Success
        echo -e "[$cmd_str] : Success"
    else
        # Error
        echo -e "[$cmd_str] : Error"
    fi
}

test_exec()
{
    : "
    Test basic running
    "
    # Define variables
    args="exec"

    # Get command string
    cmd_str="./$SRC_FILE $args"

    # Execute command without output
    $cmd_str > /dev/null # Uncomment this to hide the output
    # $cmd_str | tee -a result.log # Uncomment this to output the result to a log file

    # Get result
    res="$?"
    assert "$res" "$args"
}



main()
{
    test_exec
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    : "
    Equivalent to Python's if __name__ == '__main':
    "
    main
fi
