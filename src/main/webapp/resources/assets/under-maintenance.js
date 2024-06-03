
function updateTimer() {
    future = Date.parse("Dec 19, 2024 11:30:00");
    now = new Date();
    diff = future - now;

    days = Math.floor(diff / (1000 * 60 * 60 * 24));
    hours = Math.floor(diff / (1000 * 60 * 60));
    mins = Math.floor(diff / (1000 * 60));
    secs = Math.floor(diff / 1000);

    d = days;
    h = hours - days * 24;
    m = mins - hours * 60;
    s = secs - mins * 60;

    document.getElementById("timer")
        .innerHTML =
        '<div class=" col-xxl-3 col-lg-12 col-md-3 col-sm-3 col-12"><div class="px-3 py-4 text-muted fw-semibold under-maintenance-time bg-light rounded-1"><h4 class="fw-semibold fs-32 op-8 mb-2">' + d + '</h4><p class="mb-1 fs-14 op-7">DAYS</p></div></div>' +
        '<div class=" col-xxl-3 col-lg-12 col-md-3 col-sm-3 col-12"><div class="px-3 py-4 text-muted fw-semibold under-maintenance-time bg-light rounded-1"><h4 class="fw-semibold fs-32 op-8 mb-2">' + h + '</h4><p class="mb-1 fs-14 op-7">HOURS</p></div></div>' +
        '<div class=" col-xxl-3 col-lg-12 col-md-3 col-sm-3 col-12"><div class="px-3 py-4 text-muted fw-semibold under-maintenance-time bg-light rounded-1"><h4 class="fw-semibold fs-32 op-8 mb-2">' + m + '</h4><p class="mb-1 fs-14 op-7">MINUTES</p></div></div>' +
        '<div class=" col-xxl-3 col-lg-12 col-md-3 col-sm-3 col-12"><div class="px-3 py-4 text-muted fw-semibold under-maintenance-time bg-light rounded-1"><h4 class="fw-semibold fs-32 op-8 mb-2">' + s + '</h4><p class="mb-1 fs-14 op-7">SECONDS</p></div></div>'
}
setInterval('updateTimer()', 1000);