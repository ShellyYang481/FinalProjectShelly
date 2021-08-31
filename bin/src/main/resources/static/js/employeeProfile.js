$(function() {
    hideAllRightColumn();
    showRightColumn('.main-dashboard-container');
    // Main btn Listener
    $('#main-function-selection').on('click', function() {
        mainBtnClick(this);
    });

    // Add Emp btn Listener
    $('#add-emp-function-selection').on('click', function() {
        addEmpBtnClick(this);
    });

    // Sales Analytics btn Listener
    $('#sales-analytics-selection').on('click', function() {
        salesAnalyticBtnClick(this);
    });

    // Deliver Analytics btn Listener
    $('#deliver-analytics-selection').on('click', function() {
        deliverAnalyticBtnClick(this);
    });

    // Setting btn Listener
    $('#setting-function-selection').on('click', function() {
        settingBtnClick(this);
    });

    // Logout btn Listener
    $('#logout-function-selection').on('click', function() {
        logoutBtnClick(this);
    });

    
    
})

// Switch Page when Main-btn-click
function mainBtnClick(DOM) {
    removeAllCurrentFunctionClass();
    addCurrenFunctionClass(DOM);
    hideAllRightColumn();
    showRightColumn('.main-dashboard-container');
    console.log('main-btn-click');
}

// Switch Page when Add-Emp-btn-click
function addEmpBtnClick(DOM) {
    removeAllCurrentFunctionClass();
    addCurrenFunctionClass(DOM);
    hideAllRightColumn();
    showRightColumn('.create-emp-form-container');
    console.log('add-emp-click');
}

// Switch Page when Sales-analytic-btn-click
function salesAnalyticBtnClick(DOM) {
    removeAllCurrentFunctionClass();
    addCurrenFunctionClass(DOM);
    hideAllRightColumn();
    showRightColumn('.sales-analytics-dashboard');
    console.log('sales-analytic-click');
}

// Switch Page when Deliver-analytic-btn-click
function deliverAnalyticBtnClick(DOM) {
    removeAllCurrentFunctionClass();
    addCurrenFunctionClass(DOM);
    hideAllRightColumn();
    showRightColumn('.deliver-analytics-dashboard');
    console.log('deliver-btn-click');
}

// Switch Page when Setting-btn-click
function settingBtnClick(DOM) {
    removeAllCurrentFunctionClass();
    addCurrenFunctionClass(DOM);
    hideAllRightColumn();
    showRightColumn('.setting-form-container');
    console.log('setting-btn-click');
}

// Logout function when Logout-btn-click
function logoutBtnClick(DOM) {
    console.log('logout-btn-click');
}


// Add selected effect to DOM
function addCurrenFunctionClass(curDOM) {
    $(curDOM).addClass('current-function');
}

// Remove all selected effects
function removeAllCurrentFunctionClass() {
    $('.top-function-selection').removeClass('current-function');
    $('.bottom-function-selection').removeClass('current-function');
}

// Hide all right column
function hideAllRightColumn() {
    $('.right-column-container').hide();
}

// Show right column
function showRightColumn(DOM) {
    $(DOM).show();
}