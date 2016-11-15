function GetData(url, postData, dataType) {

    var result;
    if (postData.trim() == '') {
        var jqxhr = $.get(url, function (data) {
            result = data; //alert(result);
        },
                    dataType)
                    .done(function (data) { alert(data); result = data })
                    .fail(function () { alert("error"); });

        alert(result);
        return result;
    }
}

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function getJSON(container, marker) {

    if (typeof (marker) == 'undefined') {
        marker = '.';
    }
    var jsonString = '{';
    var colName;
    var value;
    $(marker + container + ' input[type="text"], ' + marker + container + ' input[type="password"]').each(function () {
        var controlId = $(this).attr('id');
        //alert(controlId);
        colName = controlId.substring(3, (controlId.length));
        value = $(this).val();
        jsonString = jsonString + '"' + colName + '" : "' + value + '",';
    });
    //for checkbox
    $(marker + container + ' input[type="checkbox"]').each(function () {
        var controlId = $(this).attr('id');

        colName = controlId.substring(3, (controlId.length));

        if ($(this).is(":checked")) {
            value = '1';
        }
        else {
            value = '0';
        }
        //value = $(this).prop("checked") ? '1' : '0';
        //alert(value);
        //value = $(this).val();
        jsonString = jsonString + '"' + colName + '" : "' + value + '",';
    });

    $(marker + container).find("select").each(function () {
        var controlId = $(this).attr('id');
        colName = controlId.substring(3, (controlId.length));
        value = $(this).val();
        jsonString = jsonString + '"' + colName + '" : "' + value + '",';
    });


    jsonString = jsonString.replace(/,(?=[^,]*$)/, '');
    jsonString = jsonString + "}";
    console.log(jsonString);
    return jsonString;
}

//Required Field Validation
function requiredValidation(container, resultObj, marker) {

    var value;
    var required;
    var controlId;
    if (typeof (marker) == 'undefined') {
        marker = '.';
    }

    //*********** For Textboxes *************//
    $(marker + container + ' input[type="password"], ' + marker + container + ' input[type="text"],' + ' input[type="email"],' + 'textarea').each(function () {

        required = $(this).attr('req');
        controlId = $(this).attr('id');
        value = $.trim($(this).val());
        //alert(container + "-" + controlId);
        if (typeof required != 'undefined') {
            if (value == '') {
                $(this).addClass('error');
                //Setting Result Object properties
                resultObj.validate = false;
                //resultObj.message = 'Form is incomplete!';

                if (resultObj.message.length <= 0) {
                    resultObj.message.push("Please fill required fields");
                }
                //alert(controlId + '-' + value + '-' + required);
            }
            else {
                $(this).removeClass('error');
            }
        }
    });

    $(marker + container + ' input[type="file"]').each(function () {

        required = $(this).attr('req');
        controlId = $(this).attr('id');
        value = $.trim($(this).val());
        //alert(container + "-" + controlId);
        if (typeof required != 'undefined') {
            if (value == '') {
                $(this).addClass('error');
                //Setting Result Object properties
                resultObj.validate = false;
                //resultObj.message = 'Form is incomplete!';

                if (resultObj.message.length <= 0) {
                    resultObj.message.push("Please fill required fields");
                }
                //alert(controlId + '-' + value + '-' + required);
            }
            else {
                $(this).removeClass('error');
            }
        }
    });

    //*********** For Dropdown *************//
    $(marker + container).find("select").each(function () {

        required = $(this).attr('req');
        controlId = $(this).attr('id');
        // value = $(this).val().substring(0, 2);

        if (typeof required != 'undefined') {
            //value = $(this).val().substring(0, 2);
            //alert(controlId);
            value = $("#" + controlId + " option:selected").text().substring(0, 2);
            //alert(value)
            if ($.trim(value) == '::') {
                $(this).addClass('error');
                resultObj.validate = false;
                //resultObj.message = 'Form is incomplete!';
                if (resultObj.message.length <= 0) {
                    resultObj.message.push("Please fill required fields");
                }
                //alert(controlId + ':' + value + ':' + required);
            }
            else {
                $(this).removeClass('error');
            }
        }
    });

    return resultObj.validate;
}

//Email Validation
function getEmailValidated(container, resultObj, marker) {

    if (typeof (marker) == 'undefined') {
        marker = '.';
    }
    $(marker + container + ' input[type="text"]').each(function () {



        var controlId = $(this).attr('id');

        if (controlId.lastIndexOf('Email') != -1 && $.trim($(this).val()) != '') {

            //alert(container + "-" + controlId);
            var validEmail = true;
            var regex = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
            validEmail = regex.test($.trim($(this).val()));
            //alert($(this).val() + '----' + validEmail);
            if (!validEmail) {
                $(this).addClass('error');
                resultObj.validate = false;
                //resultObj.message = 'Email Address is invalid...';

                //console.log(resultObj.message[0]); 
                resultObj.message.push("Email Address is invalid");
            }
            else {
                resultObj.validate = true;
                $(this).removeClass('error');
            }
        }

    });
    return resultObj.validate;
}

//Password Match Validation 
function getPasswordMatched(container, resultObj, marker) {

    if (typeof (marker) == 'undefined') {
        marker = '.';
    }
    $(marker + container + ' input[type="password"]').each(function () {

        var controlId = $(this).attr('id');
        if (controlId == 'txtPassword') {
            if ($.trim($(this).val()) == $.trim($('#txtRePassword').val())) {
                resultObj.validate = true;
                $(this).removeClass('error');
                $('#txtRePassword').removeClass('error');
            }
            else {
                resultObj.validate = false;
                $(this).addClass('error');
                $('#txtRePassword').addClass('error');
                //resultObj.message = 'Password doesn\'t match...';
                console.log(resultObj.message);
                resultObj.message.push("Password doesn\'t match");
            }
        }

    });
    return resultObj.validate;
}

//URL Validation
function getURLValidated(container, resultObj, marker) {

    if (typeof (marker) == 'undefined') {
        marker = '.';
    }
    $(marker + container + ' input[type="text"]').each(function () {

        var controlId = $(this).attr('id');

        if (controlId.toLowerCase().lastIndexOf('url') != -1) {
            //alert(controlId);
            var validURL = true;
            //var regex = new RegExp(/^(ht|f)tps?:\/\/[a-z0-9-\.]+\.[a-z]{2,4}\/?([^\s<>\#%"\,\{\}\\|\\\^\[\]`]+)?$/);
            var regex = new RegExp(/((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/)
            validURL = regex.test($(this).val());
            if (!validURL) {
                $(this).addClass('error');
                resultObj.validate = false;
                resultObj.message.push("URL is invalid");
            }
            else {
                resultObj.validate = true;
                $(this).removeClass('error');
            }
        }
    });
    return resultObj.validate;
}

//Date Validation
function getDateValidated(container, resultObj, marker) {
    //alert('in date');
    if (typeof (marker) == 'undefined') {
        marker = '.';
    }

    $(marker + container + ' input[type="text"]').each(function () {

        var controlId = $(this).attr('id');

        if ((controlId.toLowerCase().lastIndexOf('date') != -1 || controlId.toLowerCase().lastIndexOf('dob') != -1)) {

            if ($.trim($(this).val()) != '') {
                var validDate = true;
                //var regex = new RegExp(/^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/);
                var regex = new RegExp(/^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/);

                validDate = regex.test($(this).val());
                if (!validDate) {
                    $(this).addClass('error');
                    resultObj.validate = false;
                    resultObj.message.push("Date is invalid");
                }
                else {
                    resultObj.validate = true;
                    $(this).removeClass('error');
                }
            }
            else {
                resultObj.validate = true;
            }
        }
    });
    return resultObj.validate;
}

function ValidateAll(container, resultObj, marker) {

    if (typeof (marker) == 'undefined') {
        marker = '.';

    }
    var isValidated = false;
    if (resultObj.validate) {

        isValidated = requiredValidation(container, resultObj, marker);


    }
    if (!isValidated) {
        return;
    }
    if (resultObj.checkemail) {

        isValidated = getEmailValidated(container, resultObj, marker);

    }

    if (resultObj.checkpasswordmatch) {

        isValidated = getPasswordMatched(container, resultObj, marker);

    }
    if (resultObj.checkurl) {

        isValidated = getURLValidated(container, resultObj, marker);
    }

    if (resultObj.checkdate) {

        isValidated = getDateValidated(container, resultObj, marker);
    }


    return isValidated;
}

function IsValidPositiveNumber(container, marker) {

    if (typeof (marker) == 'undefined') {
        marker = '#';
    }
    var intsOnly = /^\d+$/,
    value = $(marker + container).val();
    if (intsOnly.test(value)) {
        return true;
    }
    else {
        false;
    }
}

