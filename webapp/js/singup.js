


// 전체 동의
function selectAll(selectAll) {
    const checkboxes
        = document.getElementsByName('agree');

    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked;
    })
}
// 회원가입 유효성
$(function () {
    $('#userPw').keyup(function () {
        $('#chkNotice').html('');
    });

    $('#userPwChk').keyup(function () {

        if ($('#userPw').val() != $('#userPwChk').val()) {
            $('#chkNotice').html('비밀번호가 일치하지 않습니다. 다시 입력해주세요.<br><br>');
            $('#chkNotice').attr('color', '#f82a2aa3');
        } else {
            $('#chkNotice').html('비밀번호가 일치합니다<br><br>');
            $('#chkNotice').attr('color', '#199894b3');
        }
    });
});
// 메일
function doAction() {
    let msgEle = document.getElementById('m_add');

    if (msgEle.value.length == 0) {
        $('#chkNoticeMail').html('메일을 입력해주세요');
        $('#chkNoticeMail').attr('color', '#f82a2aa3');
        alert("메일을 입력해주세요.");
        $('#m_add').focus()
        return false;
    }
    return true;
};
// 아이디 확인
function doAction() {
    let msgEle = document.getElementById('id2');

    if (msgEle.value.length == 0) {
        $('#chkNotice2').html('아이디를 입력해주세요');
        $('#chkNotice2').attr('color', '#f82a2aa3');
        alert("아이디를 입력해주세요.");
        $('#id2').focus()
        return false;
    }
    return true;
};
//  이름 확인

function doAction() {
    let msgEle = document.getElementById('name_ch');

    if (msgEle.value.length == 0) {
        $('#chkNotice3').html('이름을 입력해주세요');
        $('#chkNotice3').attr('color', '#f82a2aa3');
        alert("이름을 입력해주세요.");
        $('#name_ch').focus()
        return false;
    }
    return true;
};
// 번호 확인
function doAction() {
    let msgEle = document.getElementById('tel_ch');

    if (msgEle.value.length == 0) {
        $('#chkNoticeNum').html('번호를 입력해주세요');
        $('#chkNoticeNum').attr('color', '#f82a2aa3');
        alert("번호를 입력해주세요.");
        $('#tel_ch').focus()
        return false;
    }
    return true;
};
// 생년월일 확인
function doAction() {
    let msgEle = document.getElementById('bday_ch');

    if (msgEle.value.length == 0) {
        $('#chkNoticeBday').html('생년월일을 입력해 주세요');
        $('#chkNoticeBday').attr('color', '#f82a2aa3');
        alert("생년월일을 입력해 주세요.");
        $('#bday_ch').focus()
        return false;
    }
    return true;
};

// 주소 확인
function doAction() {
    let msgEle = document.getElementById('address_ch');

    if (msgEle.value.length == 0) {
        $('#chkNoticeAdd').html('주소를 입력해주세요');
        $('#chkNoticeAdd').attr('color', '#f82a2aa3');
        alert("주소를 입력해주세요.");
        $('#address_ch').focus()
        return false;
    }
    return true;
};

