$ ->
  onDrop = (event, ui) ->
    $droppable = $(this)
    $dragged = $(ui.draggable)
    $droppable.removeClass "ui-state-highlight"
    $droppable.animate height: "auto"
    $dragged.appendTo($droppable).animate width: "auto"

  onOver = (event, ui) ->
    $(this).addClass "ui-state-highlight"

  onOut = (event, ui) ->
    $(this).removeClass "ui-state-highlight"

  $droppableSpace = $("#droppable-space")
  $draggableBlocks = $("#draggable-blocks")

  $droppableSpace.droppable
    drop: onDrop
    over: onOver
    out: onOut

  # Start the basic blocks
  for_block = new Block({name:"for-block"})
  if_block = new Block({name:"if-block"})
  else_block = new Block({name:"else-block"})

