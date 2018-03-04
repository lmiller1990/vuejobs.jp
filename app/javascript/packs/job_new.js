import pell from 'pell'

let editor
let form

document.addEventListener('DOMContentLoaded', () => {
  form = document.querySelector('#job_form')
  editor = pell.init({
    element: document.getElementById('job_description')
  })
})

window.newFormSubmitted = function(event) {
  event.preventDefault()
  const hidden = document.getElementById('job_description_hidden')
  hidden.value = editor.content.innerHTML
  form.submit()
}
