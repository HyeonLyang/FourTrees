document.getElementById('mbtiForm').addEventListener('submit', function(event) {
    event.preventDefault();

    var result = '';
    var E_check = 0;
    var S_check = 0;
    var T_check = 0;
    var P_check = 0;

    for (var i = 1; i <= 3; i++) {
        var questionName = 'q' + i;
        var selectedValue = document.querySelector('input[name="' + questionName + '"]:checked');
        if (selectedValue) {
            if (selectedValue.value == 'E')
            E_check += 1;
        } else {
            alert('모든 문항에 답해주세요!');
            return;
        }
    }

    for (var i = 4; i <= 6; i++) {
        var questionName = 'q' + i;
        var selectedValue = document.querySelector('input[name="' + questionName + '"]:checked');
        if (selectedValue) {
            if (selectedValue.value == 'S')
            S_check += 1;
        } else {
            alert('모든 문항에 답해주세요!');
            return;
        }
    }

    for (var i = 7; i <= 9; i++) {
        var questionName = 'q' + i;
        var selectedValue = document.querySelector('input[name="' + questionName + '"]:checked');
        if (selectedValue) {
            if (selectedValue.value == 'T')
            T_check += 1;
        } else {
            alert('모든 문항에 답해주세요!');
            return;
        }
    }

    for (var i = 10; i <= 12; i++) {
        var questionName = 'q' + i;
        var selectedValue = document.querySelector('input[name="' + questionName + '"]:checked');
        if (selectedValue) {
            if (selectedValue.value == 'P')
            P_check += 1;
        } else {
            alert('모든 문항에 답해주세요!');
            return;
        }
    }

    if (E_check >= 2) {
        result += 'e';
    }
    else {
        result += 'i';
    }

    if (S_check >= 2) {
        result += 's';
    }
    else {
        result += 'n';
    }

    if (T_check >= 2) {
        result += 't';
    }
    else {
        result += 'f';
    }

    if (P_check >= 2) {
        result += 'p';
    }
    else {
        result += 'j';
    }

    document.getElementById('mbtiResult').innerText = result;
    document.getElementById('resultContainer').style.display = 'block';
    
    window.location.href = "test/" + result;


});

var radioButtons = document.querySelectorAll('.mb');

//Add 'change' event listener to each radio button
for (var i = 0; i < radioButtons.length; i++) {
  radioButtons[i].addEventListener('change', function() {
    // Check if the radio button is checked
    if (this.checked) {
      // If checked, scroll to y-coordinate 100
      //window.scrollTo(0, 10 * [i]);
    }
  });
}