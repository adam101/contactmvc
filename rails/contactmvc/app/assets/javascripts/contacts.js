function hideNewContactForm() {
    var $new_contact_form = $("#new_contact_form"),
        $form = $("form", $new_contact_form);

    //$form.reset();
    $new_contact_form.animate({height: 0, opacity: 0}, "slow", function () {
        $(this).remove();
    });
}