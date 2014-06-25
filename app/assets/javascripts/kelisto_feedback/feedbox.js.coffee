# It's a js needed for the feedback functionality...
# It adds the slide effect, validation and ajax message sending to the BE

class @Feedback
  constructor: ()->
    @bindFeedbackHandle();

  # Binds the click event over feedback button with loading the #feedback into a fancybox
  bindFeedbackHandle: ()=>
    $('#feedback-handle').fancybox({
      closeBtn:   true,
      padding:    0,
      fitToView: true,
      maxWidth: "800px",
      enableEscapeButton:true,
      height:   'auto',
      href:     '#feedback'
      beforeShow: @setValidation


    }); #which div to show as fancybox

  setValidation: ()->

    #jQuery validate plugin...
    $("#feedback form").validate
      onfocusout: false  #don't re-validate  inputs while writing...
      onkeyup:    false
      onclick:    false

      rules:
        "from":
          required: true
          email:    true
        "message":
          required: true
        "terms":
          required: true

      messages:
        "from":
          required: "Introduce tu correo"
          email:    "Correo incorrecto!"
        "message":
          required : "Escribe el mensaje"
        "terms":
          required: "Acepta las condiciones"

      # terms and conditions have special error placement
      errorPlacement: (error, element) ->
        # on the quiz form we add our div to the left of the radio with a small X
        $(error).insertBefore(element);



      submitHandler: (form)->
        $.ajax
          url: "/feedbacks"
          type: "post"
          timeout: 15000
          dataType: "json"  #response to expect
          data: $(form).serialize()
          success: (data, status) ->
          error: (jqXHR, status, error) ->
            alert "Imposible enviar email! Por favor, inténtelo de nuevo más tarde."
          complete: ->
            $.fancybox.close();


if $("#feedback").length
  window.feedback = new Feedback()
