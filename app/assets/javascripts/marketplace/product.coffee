window.Product = @Product || {}

Product.setUpProduct = () ->
  $(document).on 'click', '.new_product input[type="radio"]', Product.renderImageForm

Product.renderImageForm = (event) ->
  current_id = $(event.target).attr('id')
  translate_id = current_id.replace(/^product_/,'').replace('_','-')
  if $('.' + translate_id).is(":hidden")
    $('.image-option:visible').addClass('hidden')
    $('.' + translate_id).removeClass('hidden')


$ -> Product.setUpProduct()
