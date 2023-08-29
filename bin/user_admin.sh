#!/bin/bash
AdminList() {
        cat << EOF
(관리 목록)
------------------------------------
1) 사용자 추가
2) 사용자 확인
3) 사용자 삭제
4) 종료
------------------------------------
EOF
}

UserList() {
    cat << EOF
------------------------------
$( awk -F: '$3 >= 1000&& $3 <= 60000 {print $1}' /etc/passwd)
------------------------------
EOF
}

UserDel() {
    echo -n "삭제할 사용자 이름? : "
    read UNAME

    grep -w $UNAME /etc/passwd >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        userdel -r $UNAME \ 
            && echo "[ OK ] $UNAME 사용자가 삭제되었습니다." \
            || echo "[ FAIL ] $UNAME 사용자가 not 삭제되었습니다. "
    else
        echo "[ FAIL ] $UNAME 사용자가 없습니다. "

    fi
}

UserAdd() {
    echo "(사용자 추가)"
    echo -n "추가할 사용자 이름? : "
    read UNAME

    useradd $UNAME >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "[ OK ] 정상적으로 추가 되었습니다."
        echo $NAME | passwd --stdin $UNAME>/dev/null 2>&1
        echo "[ OK ] $UNAME password changed."
    else
        echo "[ FAIL ] wrong choice."
    }

while true
do 
    AdminList
    echo -n "선택 번호? : "
    read NUM
    case $NUM in
        1) UserAdd ;;
        2) UserList ;;
        3) UserDel ;;
        4) break ;;
        *) echo "[ INFO ] wrong number," ; echo ;;
    esac
done