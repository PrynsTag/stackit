document.querySelectorAll(".datepicker").forEach(function (field) {
  const picker = new Pikaday({
    field: field,
  });
});
